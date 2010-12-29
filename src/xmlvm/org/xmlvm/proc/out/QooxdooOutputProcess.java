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

package org.xmlvm.proc.out;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.List;

import org.xmlvm.Log;
import org.xmlvm.main.Arguments;
import org.xmlvm.proc.XmlvmProcessImpl;
import org.xmlvm.util.FileUtil;
import org.xmlvm.util.InputReaderThread;
import org.xmlvm.util.universalfile.UniversalFile;
import org.xmlvm.util.universalfile.UniversalFileCreator;
import org.xmlvm.util.universalfile.UniversalFileFilter;

/**
 * This process takes JavaScript outputs and creates a Qooxdoo project from
 * them.
 */
public class QooxdooOutputProcess extends XmlvmProcessImpl<JavaScriptOutputProcess> {

    private static final String TAG                      = "QooxdooOutputProcess";

    /** The path to the qooxdoo distribution. */
    private static final String QX_PATH                  = System.getenv("XMLVM_QOOXDOO_PATH");

    /**
     * Temporary subdirectory in output directory which is used to assemble the
     * final output using qooxdoo.
     */
    private static final String TEMP_CACHE_SUBDIR        = "temp_cache";

    /** The name of the script that is used to build the application. */
    private static final String QX_GENERATOR_SCRIPT_NAME = "generate.py";

    /**
     * The absolute path to the script that is used to create the qooxdoo
     * application skeleton.
     */
    private static final String QX_CREATOR_SCRIPT        = QX_PATH
                                                                 + "/tool/bin/create-application.py";

    /** The name of the temporary qooxdoo app that is used during the process. */
    private static final String QX_TEMP_APP_NAME         = "temp_qx_app";

    /** The path to the XMLVM emulation library. */
    private UniversalFile       applicationJsTemplate    = UniversalFileCreator
                                                                 .createFile(
                                                                         "/xmlvm2js/Application.js.template",
                                                                         "./src/xmlvm2js/Application.js.template");
    private UniversalFile       jsEmulationLibrary       = UniversalFileCreator.createDirectory(
                                                                 "/xmlvm2js/xmlvm2js.jar",
                                                                 "./src/xmlvm2js");

    /**
     * This is where the temporary computation output is put. The directory will
     * be deleted after the process is done.
     */
    private String              tempDestination;

    /**
     * The directory in which the source JS file for the Qooxdoo application go.
     */
    private String              tempQxSourcePath;

    /** The name of the final Qooxdoo application. */
    private String              applicationName;

    /** The main method of the application. */
    protected String            mainMethod;

    /** The files to be returned by this process */
    private List<OutputFile>    outputFiles              = new ArrayList<OutputFile>();


    public QooxdooOutputProcess(Arguments arguments) {
        super(arguments);
        // We only support JavaScript inputs.
        addSupportedInput(JavaScriptOutputProcess.class);
    }

    @Override
    public List<OutputFile> getOutputFiles() {
        return outputFiles;
    }

    @Override
    public boolean process() {
        tempDestination = makeAbsoluteCanonicalPath(arguments.option_out()) + File.separator
                + TEMP_CACHE_SUBDIR;
        mainMethod = arguments.option_qx_main();
        applicationName = arguments.option_app_name();

        // This is the path, where the source for the temporary qooxdoo project
        // will be allocated.
        tempQxSourcePath = tempDestination + "/" + QX_TEMP_APP_NAME + "/source/class";

        // Sanity checks the environment.
        if (!peformSanityChecks()) {
            return false;
        }

        // Make sure the output directory is all set.
        if (!isDestinationNotEmpty()) {
            if (!prepareDestinationDirectory()) {
                return false;
            }
        } else {
            Log.debug(TAG, "A valid Qooxdoo destination directory seems to exist.");
        }

        // Change the path of the JavaScript files so they are copied into the
        // Qooxdoo project.
        List<JavaScriptOutputProcess> preprocesses = preprocess();
        for (JavaScriptOutputProcess process : preprocesses) {
            for (OutputFile outputFile : process.getOutputFiles()) {
                outputFile.setLocation(tempQxSourcePath);
                outputFiles.add(outputFile);
            }
        }
        return true;
    }

    @Override
    public boolean postProcess() {
        // TODO(Sascha): Is there a way to do this at processing, rather than
        // post-processing time?
        Log.debug(TAG, "Copying compatibility library ...");
        if (!prepareJsEmulationLibrary(jsEmulationLibrary, new File(tempQxSourcePath))) {
            return false;
        }
        // TODO(Sascha): Is there a way to do this at processing, rather than
        // post-processing time?
        Log.debug(TAG, "Injecting custom Application.js ...");
        if (!injectCustomApplicationJs(tempQxSourcePath)) {
            return false;
        }
        return executeGenerator();
    }

    /**
     * Makes sure the given path is absolute and canonical. If the path is
     * already absolute and canonical, it is returned unchanged.
     */
    private String makeAbsoluteCanonicalPath(String destinationParam) {
        String result = destinationParam;
        if (result.startsWith(File.separator)) {
            // If the path is relative, we make it absolute by putting the
            // current path in front.
            String currentPath = (new File("")).getAbsolutePath();
            result = currentPath + File.separator + destinationParam;
        }

        // Using getCanonicalPath resolves symlinks as well, which is done by
        // the qooxdoo generate.py patcher as well.
        try {
            result = (new File(result)).getCanonicalPath();
        } catch (IOException e) {
            e.printStackTrace();
            return destinationParam;
        }
        return result;
    }

    /**
     * Executed Qooxdoo's generator to build the application.
     * 
     * @throws XmlvmBuilderException
     */
    private boolean executeGenerator() {
        String buildType = arguments.option_qx_debug() ? " source" : " build";
        Log.debug(TAG, "Qooxdoo build type: '" + buildType + " '");
        try {
            System.out.println("Current Path: " + (new File("")).getAbsolutePath());
            String tempProjectDir = tempDestination + File.separatorChar + QX_TEMP_APP_NAME;
            Process process = createPythonProcess(tempProjectDir + File.separatorChar
                    + QX_GENERATOR_SCRIPT_NAME + buildType, new File(tempProjectDir));
            printOutputOfProcess(process, "Qooxdoo Generator");
            int exitCode = process.waitFor();
            if (exitCode != 0) {
                Log.error(TAG, "Error while executing python. Exit Code: " + exitCode);
                return false;
            }
        } catch (IOException e) {
            Log.error(TAG, "Error while executing python: " + e.getMessage());
            return false;
        } catch (InterruptedException e) {
            Log.error(TAG, "Error while executing python: " + e.getMessage());
            return false;
        }
        return true;
    }

    /**
     * Prepares the output directory.
     * 
     * @return whether the process was successful
     */
    private boolean prepareDestinationDirectory() {
        Log.debug(TAG, "Preparation of destination directory:  " + arguments.option_out() + " ...");
        // Create destination and temporary destination directories, if they do
        // not already exist. If they do exist, remove their contents.
        for (String directory : new String[] { arguments.option_out(), tempDestination }) {
            File dir = new File(directory);
            if (dir.exists()) {
                if (!FileUtil.deleteDirectory(dir)) {
                    Log.error(TAG, "Couldn't clear destination directory");
                }
            }
            dir.mkdirs();
        }
        Log.debug(TAG, "Executing qooxdoo application creator ...");
        return initQxSkeleton();
    }

    /**
     * Uses the qooxdoo application creator to create a temporary project that
     * is used during the building process.
     * 
     */
    private boolean initQxSkeleton() {
        try {
            Process process = createPythonProcess(QX_CREATOR_SCRIPT + " --name " + QX_TEMP_APP_NAME
                    + " --out " + tempDestination, null);
            printOutputOfProcess(process, "CREATOR");
            int exitCode = process.waitFor();
            if (exitCode != 0) {
                Log.error(TAG, "Error while executing python. Exit Code: " + exitCode);
                return false;
            }
        } catch (IOException e) {
            Log.error(TAG, "Error while executing python: " + e.getMessage());
            return false;
        } catch (InterruptedException e) {
            Log.error(TAG, "Error while executing python: " + e.getMessage());
            return false;
        }
        return true;
    }

    /**
     * Performs sanity checks that have to be passed in order for the builder to
     * run successfully. This way the application is able to fail early.
     * 
     * @return whether everything is set for the process
     */
    private boolean peformSanityChecks() {
        // Check whether qooxdoo-path exists.
        if (QX_PATH == null) {
            Log
                    .error(TAG,
                            "QX directory is not defined. Please define it using XMLVM_QOOXDOO_PATH");
            return false;
        }
        if (!(new File(QX_PATH)).isDirectory()) {
            Log.error(TAG, "QX directory cannot be found: " + QX_PATH);
            return false;
        }
        // Check whether creator script is present.
        if (!(new File(QX_CREATOR_SCRIPT)).isFile()) {
            Log.error(TAG, "QX creator cannot be found: " + QX_CREATOR_SCRIPT);
            return false;
        }
        // Check whether Python is present
        if (!isPythonPresent()) {
            Log.error(TAG,
                    "Python executable cannot be found. Make sure python.exe is on your PATH.");
            return false;
        }
        // Check whether JS emulation library is present.
        if (jsEmulationLibrary == null) {
            Log.error(TAG, "Emulation library cannot be found.");
            return false;

        }
        // Check whether the custom Application.js template is present
        if (applicationJsTemplate == null) {
            Log.error(TAG, "Custom Application.js file not found.");
            return false;
        }
        // Check whether mainMethod is defined and has the required format
        if (mainMethod == null || mainMethod.indexOf('.') == -1) {
            Log.error(TAG, Arguments.ARG_QX_MAIN + " must be of format: <ClassName>.(main|Main)");
            return false;
        }
        // If the destination directory exists and has content, we check whether
        // there is already a valid QX project. If not, something is wrong.
        if (isDestinationNotEmpty()) {
            String generateScript = tempDestination + "/" + QX_TEMP_APP_NAME + "/"
                    + QX_GENERATOR_SCRIPT_NAME;
            File generateScriptFile = new File(generateScript);
            if (!generateScriptFile.isFile()) {
                Log.error(TAG,
                        "Output directory exists, but doesn't seem to be a valid QX project as "
                                + "the following file could not be found: "
                                + generateScriptFile.getAbsolutePath());
                return false;
            }
        }
        return true;
    }

    /**
     * Returns whether the Python runtime is all set.
     */
    private static boolean isPythonPresent() {
        String line = "";
        try {
            Process process;
            process = Runtime.getRuntime().exec("python --version");
            BufferedReader input = new BufferedReader(new InputStreamReader(process
                    .getErrorStream()));
            line = input.readLine();
            process.destroy();
        } catch (IOException e) {
            return false;
        }
        if (line != null && line.startsWith("Python")) {
            return true;
        } else {
            return false;
        }
    }

    /**
     * Creates a Python process.
     * 
     * @param arguments
     *            Arguments to the python process.
     * @return A process object to monitor.
     * @throws IOException
     */
    private static Process createPythonProcess(String arguments, File workingDir)
            throws IOException {
        return Runtime.getRuntime().exec("python " + arguments, null, workingDir);
    }

    /**
     * Takes a process and reads it output till the end. The output is prefixed
     * with the given line prefix.
     * 
     * @param process
     *            The process to take the output from.
     * @param linePrefix
     *            The line prefix to mark the output.
     */
    private static void printOutputOfProcess(final Process process, final String linePrefix) {
        InputReaderThread inputThread = new InputReaderThread(process.getInputStream(), System.out,
                linePrefix);
        InputReaderThread errorThread = new InputReaderThread(process.getErrorStream(), System.err,
                "(ERROR) " + linePrefix);
        inputThread.start();
        errorThread.start();
    }

    /**
     * Returns whether the destination directory is not empty.
     */
    private boolean isDestinationNotEmpty() {
        File outputDir = new File(arguments.option_out());
        return outputDir.isDirectory() && (outputDir.list().length != 0);
    }

    /**
     * Takes the emulation library and puts it into the destination so it is
     * ready to be used by qooxdoo's build system.
     * 
     * @return whether the operation was successful.
     */
    private boolean prepareJsEmulationLibrary(UniversalFile basePath, File destination) {
        // Check, whether the destination directory actually exists.
        if (!destination.isDirectory()) {
            Log
                    .error(TAG, "Destination directory does not exist: "
                            + destination.getAbsolutePath());
            return false;
        }
        // Recursively rename and copy all JS files.
        return renameAndCopyJsFiles(basePath, basePath, destination);
    }

    /**
     * Recursively go through all sub-directories and look for JS files. When
     * found, rename file to match to internal class-name (required by qooxdoo),
     * and copy files into destination directory.
     * 
     * @param absoluteBasePath
     *            The root of the emulation library.
     * @param basePath
     *            The path where to search for JS files.
     * @param destination
     *            The path where the renamed JS files should be copied to.
     * 
     * @return whether the operation was successful.
     */
    private boolean renameAndCopyJsFiles(UniversalFile absoluteBasePath, UniversalFile basePath,
            File destination) {
        // Accepts files
        UniversalFileFilter jsFileFilter = new UniversalFileFilter() {
            public boolean accept(UniversalFile pathname) {
                return !pathname.isDirectory()
                        && pathname.getAbsolutePath().toLowerCase().endsWith(".js");
            }
        };
        // Accepts directories
        UniversalFileFilter directoryFilter = new UniversalFileFilter() {
            public boolean accept(UniversalFile pathname) {
                return pathname.isDirectory();
            }
        };
        // Go through all files in this directory ...
        for (UniversalFile entry : basePath.listFiles(jsFileFilter)) {
            if (!renameAndCopyJsFile(absoluteBasePath, entry, destination)) {
                return false;
            }
        }
        // ... then recursively go through sub-directories.
        for (UniversalFile entry : basePath.listFiles(directoryFilter)) {
            if (!renameAndCopyJsFiles(absoluteBasePath, entry, destination)) {
                return false;
            }
        }
        return true;
    }

    /**
     * Renames and copies a single JS file. The renaming will integrate the
     * pathname from a given root path, so the file name matches the class name
     * within the file.
     * 
     * @return Whether the operation was successful.
     */
    private boolean renameAndCopyJsFile(UniversalFile absoluteBasePath, UniversalFile jsFile,
            File destination) {
        // +1 to remove trailing slash.
        String cutPath = jsFile.getAbsolutePath().substring(
                absoluteBasePath.getAbsolutePath().length() + 1);
        String outputFileName = cutPath.replace(File.separatorChar, '_');
        try {
            String destinationPath = destination.getAbsolutePath() + File.separator
                    + outputFileName;
            if (!jsFile.saveAs(destinationPath)) {
                Log.error(TAG, "Could not save file to: " + destinationPath);
                return false;
            }
        } catch (Exception e) {
            Log.error(TAG, "Error while copying file: " + e.getMessage());
            return false;
        }
        return true;
    }

    /**
     * Generates and writes out the Application.js file that is uses by Qooxdoo
     * as the entry point.
     * 
     * @param jsClassPath
     *            the path in which the application JS files are located.
     * @return whether the operation was successful.
     */
    private boolean injectCustomApplicationJs(String jsClassPath) {
        String applicationJs = applicationJsTemplate.getFileAsString();

        // We replace the variables in the template with the requires values.
        applicationJs = applicationJs.replace("{{XMLVM_TEMP_PROJECT_NAME}}", QX_TEMP_APP_NAME);
        applicationJs = applicationJs.replace("{{XMLVM_MAIN_METHOD_CALL}}", generateMainCall());
        String filename = jsClassPath + "/" + QX_TEMP_APP_NAME + "/Application.js";
        try {
            FileWriter writer = new FileWriter(filename);
            writer.write(applicationJs);
            writer.close();
        } catch (IOException e) {
            Log.error(TAG, "Couldn't not write: " + filename);
            return false;
        }
        return true;
    }

    /**
     * Based on the {@link Arguments#option_qx_main()} argument, the actual main
     * call is generated.
     */
    private String generateMainCall() {
        String mainClass = mainMethod.substring(0, mainMethod.lastIndexOf('.'));
        mainClass = mainClass.replace('.', '_');
        if (mainMethod.endsWith("Main")) {
            // If the format is <ClassName>.Main we expect this to be a C# main
            // method call.
            return mainClass + ".$Main();";
        } else {
            return mainClass + ".$main___java_lang_String_ARRAYTYPE(undefined);";
        }
    }
}
