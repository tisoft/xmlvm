/* Copyright (c) 2002-2011 by XMLVM.org
 *
 * Project Info:  http://www.xmlvm.org
 *
 * This program is free software; you can redistribute it and/or modify it
 * under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 *
 * This library is distributed in the hope that it will be useful, but
 * WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY
 * or FITNESS FOR A PARTICULAR PURPOSE. See the GNU Lesser General Public
 * License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public
 * License along with this library; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301,
 * USA.
 */

package org.xmlvm.proc;

import java.util.ArrayList;
import java.util.List;
import java.util.Vector;

import org.xmlvm.Log;
import org.xmlvm.main.Arguments;
import org.xmlvm.main.Targets;
import org.xmlvm.proc.in.InputProcess;
import org.xmlvm.proc.in.InputProcessFactory;
import org.xmlvm.proc.out.OutputFileWriter;
import org.xmlvm.proc.out.OutputProcessFactory;
import org.xmlvm.util.universalfile.UniversalFile;

public class XmlvmProcessor {
    private static final String                 TAG                    = XmlvmProcessor.class
                                                                               .getSimpleName();

    /**
     * The processes that are being or will be processed.
     */
    private Vector<XmlvmProcess>                pool                   = new Vector<XmlvmProcess>();
    /**
     * The process that will handle the final processing step to produce the
     * desired output.
     */
    private XmlvmProcess                        targetProcess;

    private List<Class<? extends XmlvmProcess>> processTypesInPipeline = new ArrayList<Class<? extends XmlvmProcess>>();

    /**
     * The compilation bundle that is passed through the processes, who add
     * there data to it.
     */
    private CompilationBundle                   compilationResources   = new CompilationBundle();


    public XmlvmProcessor(Arguments arguments) {
        InputProcessFactory inputProcessFactory = new InputProcessFactory(arguments);
        OutputProcessFactory outputProcessFactory = new OutputProcessFactory(arguments);

        // For every given input we instantiate a new input process.
        Iterable<InputProcess<?>> inputProcesses = inputProcessFactory
                .createInputProcesses(arguments.option_in());

        // Add input processes to the pipeline.
        addProcesses(inputProcesses);

        // Set the target process.
        setTargetProcess(outputProcessFactory.createTargetProcess(arguments.option_target()));
    }

    public XmlvmProcessor(List<UniversalFile> inputFiles, Targets target,
            String[] additionalArguments) {
        if (additionalArguments == null) {
            additionalArguments = new String[0];
        }

        String[] argv = new String[additionalArguments.length + 1];
        argv[0] = Arguments.ARG_TARGET + target.toString();
        for (int i = 1; i < (additionalArguments.length - 1); ++i) {
            argv[i] = additionalArguments[i - 1];
        }
        Arguments arguments = new Arguments(argv, false);
        InputProcessFactory inputProcessFactory = new InputProcessFactory(arguments);
        OutputProcessFactory outputProcessFactory = new OutputProcessFactory(arguments);

        // For every given input we instantiate a new input process.
        Iterable<InputProcess<?>> inputProcesses = inputProcessFactory
                .createInputProcessesFromFiles(inputFiles);

        // Add input processes to the pipeline.
        addProcesses(inputProcesses);

        // Set the target process.
        setTargetProcess(outputProcessFactory.createTargetProcess(arguments.option_target()));
    }

    /**
     * Run a bunch of processes.
     */
    public void addProcesses(Iterable<InputProcess<?>> iterator) {
        for (XmlvmProcess process : iterator) {
            addProcess(process);
        }
    }

    public void addProcess(XmlvmProcess process) {
        if (process == null) {
            return;
        }
        pool.add(process);
    }

    /**
     * Set the target process that will handle the final processing step.
     */
    public void setTargetProcess(XmlvmProcess process) {
        targetProcess = process;
        targetProcess.setIsTargetProcess(true);
    }

    /**
     * Returns the target process.
     */
    public XmlvmProcess getTargetProcess() {
        return targetProcess;
    }

    /**
     * Starts the processing.
     * 
     * @return Whether the processing was successful.
     */
    public boolean process() {
        return process(true);
    }

    /**
     * Starts the processing, but stops after the two phases are processed, if
     * writeFiles is set to false.
     * 
     * @return Whether the processing was successful.
     */
    public boolean process(boolean writeFiles) {
        if (pool.isEmpty()) {
            Log.error(TAG, "No inputs to process.");
            return false;
        }

        if (!buildProcessingPipeline()) {
            Log.error("There are still " + pool.size() + " processes left.");
            return false;
        }

        if (!targetProcess.forwardOrProcessPhase1(compilationResources)) {
            Log.error("Processing Phase 1 not successful. See error messages above for details.");
            return false;
        }

        if (!targetProcess.forwardOrProcessPhase2(compilationResources)) {
            Log.error("Processing Phase 2 not successful. See error messages above for details.");
            return false;
        }

        if (writeFiles) {
            if (!writeOutputFiles()) {
                Log.error("Writing output files was not successful. See error messages above for details.");
                return false;
            }

            if (!targetProcess.postProcessPreProcesses()) {
                Log.error("Post-Processing not successful. See error messages above for details.");
                return false;
            }
        }
        return true;
    }

    /**
     * Writes the resulting files of the target process to the file system.
     * 
     * @return Whether the write process was successful.
     */
    private boolean writeOutputFiles() {
        OutputFileWriter writer = new OutputFileWriter(compilationResources.getOutputFiles());
        return writer.writeFiles();
    }

    /**
     * Returns the compilation resources of that processor. If
     * {@link #process()} has been finished successfully, then these resources
     * contain all artifacts produced during the compilation process.
     */
    public CompilationBundle getCompilationResources() {
        return compilationResources;
    }

    /**
     * Build the processing pipeline.
     * 
     * <p>
     * The target process' supported input processes are checked. If the input
     * processes can be handled directly, they are set as pre-processes and
     * processing begins. If not all processes can be matched, the supported
     * input processes of the target process are instantiated and the process is
     * repeated with them. This process continues until all processes have been
     * matched as pre-processes or the end of the dependency graph is reached,
     * in which case the process will fail.
     * 
     * @return Whether all processes could be included into the pipeline.
     */
    protected boolean buildProcessingPipeline() {
        List<XmlvmProcess> initialTargetProcess = new ArrayList<XmlvmProcess>();
        initialTargetProcess.add((XmlvmProcess) targetProcess);
        return buildProcessingPipeline0(initialTargetProcess);
    }

    protected boolean buildProcessingPipeline0(List<XmlvmProcess> targetProcesses) {
        // Make sure we don't add processes that are already in the pipeline.
        targetProcesses = filterNotYetProcessedProcesses(targetProcesses);

        // Make a copy so we can modify the vector while iterating.
        final XmlvmProcess[] processes = pool.toArray(new XmlvmProcess[0]);

        for (XmlvmProcess target : targetProcesses) {
            for (XmlvmProcess process : processes) {
                if (target.supportsAsInput(process)) {
                    pool.remove(process);
                    target.addPreprocess(process);
                }
            }
        }

        // If the pool of processes is not yet empty, we have to walk up the
        // supported-processes-graph to see if there is another connection that
        // will eventually include these processes.
        if (!pool.isEmpty()) {
            for (XmlvmProcess target : targetProcesses) {
                buildProcessingPipeline0(target.createInputInstances());
            }
            return pool.isEmpty();
        } else {
            return true;
        }
    }

    /**
     * This method will return a list where the processes that have already been
     * processed are filtered out.
     */
    private List<XmlvmProcess> filterNotYetProcessedProcesses(List<XmlvmProcess> list) {
        List<XmlvmProcess> result = new ArrayList<XmlvmProcess>();

        // Go through all the processes in the list ...
        for (XmlvmProcess process : list) {
            // ... and get their types.
            Class<? extends XmlvmProcess> processType = process.getClass();
            // Only if we don't already have a process with this type in the
            // pipeline, we add it to the result. We also add it to the
            // processTypesInPipeline list so in the future we don't add more of
            // these processes.
            if (!processTypesInPipeline.contains(processType)) {
                result.add(process);
                processTypesInPipeline.add(processType);
            }
        }
        return result;
    }
}
