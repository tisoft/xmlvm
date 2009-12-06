/*
 * Copyright (c) 2004-2009 XMLVM --- An XML-based Programming Language
 * 
 * This program is free software; you can redistribute it and/or modify it under
 * the terms of the GNU General Public License as published by the Free Software
 * Foundation; either version 2 of the License, or (at your option) any later
 * version.
 * 
 * This program is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
 * FOR A PARTICULAR PURPOSE. See the GNU General Public License for more
 * details.
 * 
 * You should have received a copy of the GNU General Public License along with
 * this program; if not, write to the Free Software Foundation, Inc., 675 Mass
 * Ave, Cambridge, MA 02139, USA.
 * 
 * For more information, visit the XMLVM Home Page at http://www.xmlvm.org
 */

package org.xmlvm.proc;

import java.util.ArrayList;
import java.util.List;
import java.util.Vector;

import org.xmlvm.Log;
import org.xmlvm.main.Arguments;
import org.xmlvm.proc.in.InputProcess;
import org.xmlvm.proc.in.InputProcessFactory;
import org.xmlvm.proc.out.OutputFileWriter;
import org.xmlvm.proc.out.OutputProcess;
import org.xmlvm.proc.out.OutputProcessFactory;

public class XmlvmProcessor {
    /**
     * The processes that are being or will be processed.
     */
    private Vector<XmlvmProcess>                  pool                   = new Vector<XmlvmProcess>();
    /**
     * The process that will handle the final processing step to produce the
     * desired output.
     */
    private OutputProcess<? extends XmlvmProcess> targetProcess;

    private List<Class<? extends XmlvmProcess>>   processTypesInPipeline = new ArrayList<Class<? extends XmlvmProcess>>();

    public XmlvmProcessor(Arguments arguments) {
        InputProcessFactory inputProcessFactory = new InputProcessFactory(arguments);
        OutputProcessFactory outputProcessFactory = new OutputProcessFactory(arguments);

        // For every given input we instantiate a new InputProcess.
        List<InputProcess<?>> inputProcesses = inputProcessFactory.createInputProcesses(arguments
                .option_in());

        // Add input processes to the pipeline.
        addProcesses(inputProcesses);

        // Set the target process.
        setTargetProcess(outputProcessFactory.createOutputProcess(arguments.option_target(),
                arguments.option_out()));
    }

    /**
     * Run a bunch of processes.
     */
    public void addProcesses(Iterable<? extends XmlvmProcess> iterator) {
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
    public void setTargetProcess(OutputProcess<? extends XmlvmProcess> process) {
        targetProcess = process;
    }

    /**
     * Returns the target process.
     */
    public OutputProcess<? extends XmlvmProcess> getTargetProcess() {
        return targetProcess;
    }

    /**
     * Starts the processing.
     * 
     * @return Whether the processing was successful.
     */
    public boolean process() {
        if (!buildProcessingPipeline()) {
            Log.error("There are still " + pool.size() + " processes left.");
            return false;
        }
        if (!targetProcess.process()) {
            Log.error("Processing not successful. See error messages above for details.");
            return false;
        }
        return true;
    }

    /**
     * Starts the post-processing.
     * 
     * @return Whether the post-processing was successful.
     */
    public boolean postProcess() {
        return targetProcess.postProcessPreProcesses();
    }

    /**
     * Writes the resulting files of the target process to the file system.
     * 
     * @return Whether the write process was successful.
     */
    public boolean writeOutputFiles() {
        OutputFileWriter writer = new OutputFileWriter(targetProcess.getOutputFiles());
        return writer.writeFiles();
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
        List<OutputProcess<XmlvmProcess<?>>> initialTargetProcess = new ArrayList<OutputProcess<XmlvmProcess<?>>>();
        initialTargetProcess.add((OutputProcess<XmlvmProcess<?>>) targetProcess);
        return buildProcessingPipeline0(initialTargetProcess);
    }

    protected boolean buildProcessingPipeline0(List<OutputProcess<XmlvmProcess<?>>> targetProcesses) {
        // Make sure we don't add processes that are already in the pipeline.
        targetProcesses = filterNotYetProcessedProcessed(targetProcesses);

        // Make a copy so we can modify the vector while iterating.
        final XmlvmProcess<?>[] processes = pool.toArray(new XmlvmProcess<?>[0]);

        for (OutputProcess<XmlvmProcess<?>> target : targetProcesses) {
            for (XmlvmProcess<?> process : processes) {
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
            for (OutputProcess<XmlvmProcess<?>> target : targetProcesses) {
                buildProcessingPipeline0(filterOutputProcesses(target.createInputInstances()));
            }
            return pool.isEmpty();
        } else {
            return true;
        }
    }

    /**
     * This will filter out all non-output processes.
     */
    @SuppressWarnings("unchecked")
    private List<OutputProcess<XmlvmProcess<?>>> filterOutputProcesses(List<XmlvmProcess<?>> list) {
        List<OutputProcess<XmlvmProcess<?>>> result = new ArrayList<OutputProcess<XmlvmProcess<?>>>();
        for (XmlvmProcess<?> process : list) {
            if (process.isOfSuperType(OutputProcess.class)) {
                result.add((OutputProcess<XmlvmProcess<?>>) process);
            }
        }
        return result;
    }

    /**
     * This method will return a list where the processes that have already been
     * processed are filtered out.
     */
    private List<OutputProcess<XmlvmProcess<?>>> filterNotYetProcessedProcessed(
            List<OutputProcess<XmlvmProcess<?>>> list) {
        List<OutputProcess<XmlvmProcess<?>>> result = new ArrayList<OutputProcess<XmlvmProcess<?>>>();

        // Go through all the processes in the list ...
        for (OutputProcess<XmlvmProcess<?>> process : list) {
            // ... and get their types.
            Class<? extends OutputProcess> processType = process.getClass();
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
