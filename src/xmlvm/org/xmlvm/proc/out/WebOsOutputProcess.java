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
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.List;

import org.xmlvm.Log;
import org.xmlvm.main.Arguments;
import org.xmlvm.proc.XmlvmProcessImpl;
import org.xmlvm.util.FileUtil;
import org.xmlvm.util.InputReaderThread;
import org.xmlvm.util.universalfile.UniversalFileCreator;

/**
 * Takes the output of a {@link QooxdooOutputProcess} and packages the Qooxdoo
 * app into a Palm Pre application.
 */
public class WebOsOutputProcess extends XmlvmProcessImpl<QooxdooOutputProcess> {

    private static final String   TAG                      = "WebOsOutputProcess";

    private static final String[] GENERATE_PROJECT_OPTS    = { "-p",
            "\"{title:'$PROJECT', id:org.xmlvm.$PROJECT, version:'1.0.0'}\"", "$PROJECT" };
    private static final String[] GENERATE_SCENE_OPTS      = { "-t", "new_scene", "-p",
            "\"{name:$SCENE}\"", "$PROJECT"               };
    private static final String   STAGE_ASSISTANT_TEMPLATE = "/pre/stage-assistant.js";
    private static final String   INDEX_HTML_TEMPLATE      = "/pre/index.html";
    private static final String   VERSION_ARG              = "--version";
    private static final String   PALM_SDK_PATH            = System.getenv("XMLVM_PALM_SDK_PATH");
    private static final String   PALM_SDK_BIN_PATH        = PALM_SDK_PATH + "/bin";
    private static final String   PALM_GENERATE_CMD        = "palm-generate";
    private static final String   PALM_PACKAGE_CMD         = "palm-package";
    private List<OutputFile>      outputFiles              = new ArrayList<OutputFile>();
    private String                appName                  = "";
    private String                sceneName                = "";
    private String                compiledQxBuildPath      = "";


    public WebOsOutputProcess(Arguments arguments) {
        super(arguments);
        // We only support QooxdooOutputProcesses as input.
        addSupportedInput(QooxdooOutputProcess.class);
    }

    @Override
    public List<OutputFile> getOutputFiles() {
        return outputFiles;
    }

    @Override
    public boolean process() {
        appName = arguments.option_app_name();
        sceneName = appName + "Scene";
        compiledQxBuildPath = arguments.option_out() + File.separatorChar + "temp_cache"
                + File.separatorChar + "temp_qx_app";
        if (!peformSanityChecks()) {
            return false;
        }
        // Just copy over the files from the Qooxdoo Process. The actual work
        // will be done in the post-processing part.
        List<QooxdooOutputProcess> preprocesses = preprocess();
        for (QooxdooOutputProcess process : preprocesses) {
            outputFiles.addAll(process.getOutputFiles());
        }
        return true;
    }

    @Override
    public boolean postProcess() {
        if (!createProject() || !createScene()) {
            return false;
        }
        if (!patchStageAssistant() || !patchSceneAssistant()) {
            return false;
        }
        if (!copyCompiledJsFiles()) {
            return false;
        }
        if (!patchIndexHtml()) {
            return false;
        }
        if (!copyResources()) {
            return false;
        }
        if (!palmPackage()) {
            return false;
        }
        return true;
    }

    /**
     * Returns whether everything is set for successfully creating and
     * processing a Palm Pre project.
     */
    private boolean peformSanityChecks() {
        if (arguments.option_qx_debug()) {
            Log.error("You cannot use --qx-debug when creating Palm Pre projects.");
            return false;
        }
        if (appName == null || appName.isEmpty()) {
            Log.error("Please use --qx-app to specify an application name.");
            return false;
        }
        return arePalmToolsPresent();
    }

    /**
     * Creates a Palm Pre project.
     * 
     * @return whether the project was created successfully.
     */
    private boolean createProject() {
        // Nuke the old project dir.
        File projectDir = new File(arguments.option_out() + File.separatorChar + appName);
        if (projectDir.exists() && projectDir.isDirectory()) {
            Log.debug("Deleting old Palm Pre project directory: " + projectDir.getAbsolutePath());
            FileUtil.deleteDirectory(projectDir);
        }

        // Create new blank project.
        if (!palmGenerate(GENERATE_PROJECT_OPTS)) {
            Log.error("Could not create Palm Pre project.");
        }
        return true;
    }

    private boolean createScene() {
        if (!palmGenerate(GENERATE_SCENE_OPTS)) {
            Log.error("Could not create scene.");
        }
        return true;
    }

    /**
     * Patches the stage-assistant file.
     */
    private boolean patchStageAssistant() {

        String pathStr = arguments.option_out() + File.separatorChar + appName + File.separatorChar
                + "app" + File.separatorChar + "assistants" + File.separatorChar
                + "stage-assistant.js";
        File stageAssistantFile = new File(pathStr);

        // Check whether the scene assistant file exists. It should, as we
        // created a palm pre project.
        if (!stageAssistantFile.exists()) {
            Log.error("Could not find stage assistant file at: "
                    + stageAssistantFile.getAbsolutePath());
            return false;
        }

        // Read template we use to create a custom stage assistant file.
        InputStream stageAssistantTemplate = WebOsOutputProcess.class
                .getResourceAsStream(STAGE_ASSISTANT_TEMPLATE);
        if (stageAssistantTemplate == null) {
            Log.error("Stage assistant template file could not be read.");
            return false;
        }
        String stageAssistantContent = FileUtil.readStringFromStream(stageAssistantTemplate);

        if (stageAssistantContent.isEmpty()) {
            Log.error("Could not read contents of stage assistant file.");
            return false;
        }

        // Set scene name in the stage assistant file.
        stageAssistantContent = stageAssistantContent.replace("$SCENE", sceneName);
        return FileUtil.writeStringToFile(stageAssistantFile, stageAssistantContent);
    }

    /**
     * Patches the scene assistant file.
     */
    private boolean patchSceneAssistant() {
        final String setupMethodDeclarationPattern = "setup = function() {";
        String pathStr = arguments.option_out() + File.separatorChar + appName + File.separatorChar
                + "app" + File.separatorChar + "assistants" + File.separatorChar + sceneName
                + "-assistant.js";

        File sceneAssistantFile = new File(pathStr);
        if (!sceneAssistantFile.exists()) {
            Log.error("Scene assistant file does not exist: "
                    + sceneAssistantFile.getAbsolutePath());
            return false;
        }

        String sceneAssistantFileContent = UniversalFileCreator.createFile(sceneAssistantFile)
                .getFileAsString();
        String[] parts = sceneAssistantFileContent.split("\\Q" + setupMethodDeclarationPattern
                + "\\E");

        // The pattern should appear exactly once inside the scene assistant
        // file.
        if (parts.length != 2) {
            Log.error("Could not find setup method declaration in scene assistant file.");
            return false;
        }
        sceneAssistantFileContent = parts[0]
                + setupMethodDeclarationPattern
                + "\n  org_xmlvm_demo_afireworks_AndroidFireworks.launchActivity(theStageAssistant, this);"
                + parts[1];

        return FileUtil.writeStringToFile(sceneAssistantFile, sceneAssistantFileContent);
    }

    /**
     * Copies the compiled JS files into the Palm Pre project.
     */
    private boolean copyCompiledJsFiles() {
        Log.debug(TAG, "Copying compiled JS files into project.");
        String appDir = arguments.option_out() + File.separatorChar + appName;
        String buildDir = compiledQxBuildPath + File.separatorChar + "build";

        if (!FileUtil.copyDirectory(UniversalFileCreator.createFile(new File(buildDir)), appDir,
                true)) {
            Log.error(TAG, "Could not copy compiled JS files from: " + buildDir + " to " + appDir);
            return false;
        }
        return true;
    }

    /**
     * Patches the application's index.html file so it loads all the necessary
     * code.
     */
    private boolean patchIndexHtml() {
        String pathStr = arguments.option_out() + File.separatorChar + appName + File.separatorChar
                + "index.html";
        File indexHtmlFile = new File(pathStr);

        if (!indexHtmlFile.exists()) {
            Log.error("Index file doesn't exist: " + indexHtmlFile.getAbsolutePath());
            return false;
        }

        // Read template we use to create a custom stage assistant file.
        InputStream indexHtmlTemplate = WebOsOutputProcess.class
                .getResourceAsStream(INDEX_HTML_TEMPLATE);

        if (indexHtmlTemplate == null) {
            Log.error("Could not read index.html template for Palm Pre project.");
            return false;
        }

        String indexHtmlContent = FileUtil.readStringFromStream(indexHtmlTemplate);
        if (indexHtmlContent.isEmpty()) {
            Log.error("Could not read contents of index.html template file for Palm Pre project.");
            return false;
        }
        indexHtmlContent = indexHtmlContent.replace("$PROJECT", appName);

        FileUtil.writeStringToFile(indexHtmlFile, indexHtmlContent);
        return true;
    }

    /**
     * Copies the given resources into the project.
     */
    private boolean copyResources() {
        Log.debug(TAG, "Copying resources...");
        String destination = arguments.option_out() + File.separatorChar + appName
                + File.separatorChar;

        for (String resource : arguments.option_resource()) {
            File resourceFile = new File(resource);
            if (!resourceFile.exists()) {
                Log.warn(TAG, "Resource doesn't exist: " + resourceFile.getAbsolutePath());
                continue;
            }
            if (resourceFile.isFile()) {
                if (!FileUtil
                        .copyFile(resourceFile, new File(destination + resourceFile.getName()))) {
                    Log.warn(TAG, "Could not copy file: " + resourceFile.getAbsolutePath());
                    continue;
                }
            } else if (resourceFile.isDirectory()) {
                if (!FileUtil.copyDirectory(UniversalFileCreator.createFile(resourceFile),
                        destination, true)) {
                    Log.warn(TAG, "Could not copy directory: " + resourceFile.getAbsolutePath());
                    continue;
                }
            }
        }
        return true;
    }

    /**
     * Uses palm-package to create an installable installation package.
     */
    private boolean palmPackage() {
        Log.debug("Packaging PALM Pre application... ");
        Process process = getPalmBinProcess(PALM_PACKAGE_CMD, new String[] { appName }, new File(
                arguments.option_out()));
        printOutputOfProcess(process, PALM_PACKAGE_CMD);
        try {
            if (process.waitFor() != 0) {
                return false;
            }
        } catch (InterruptedException e) {
            return false;
        }
        return true;
    }

    /**
     * Calls palm-generate with the given options. In the options, $PROJECT and
     * $SCENE can be used as placeholders and will be replaced correctly.
     * 
     * @param options
     *            the options for the palm-generate process
     * @return whether the execution was successful
     */
    private boolean palmGenerate(String[] options) {
        for (int i = 0; i < options.length; ++i) {
            options[i] = options[i].replaceAll("\\$PROJECT", appName);
            options[i] = options[i].replaceAll("\\$SCENE", sceneName);
        }

        Process process = getPalmBinProcess(PALM_GENERATE_CMD, options,
                new File(arguments.option_out()));
        printOutputOfProcess(process, PALM_GENERATE_CMD);
        try {
            if (process.waitFor() != 0) {
                return false;
            }
        } catch (InterruptedException e) {
            return false;
        }
        return true;
    }

    /**
     * Returns whether the Python runtime is all set.
     */
    private boolean arePalmToolsPresent() {
        Log.debug("Checking for Palm SDK Tools ...");
        if (PALM_SDK_PATH == null || PALM_SDK_PATH.isEmpty()) {
            Log.error("You have to set the Path to your Palm 'SDK' directory using the "
                    + "environment variable XMLVM_PALM_SDK_PATH.");
            return false;
        }

        File palmSdkDir = new File(PALM_SDK_PATH);
        if (!palmSdkDir.exists() || !palmSdkDir.isDirectory()) {
            Log.error("The Palm SDK PATH '" + PALM_SDK_PATH
                    + "' does not exist or is not a directory.");
            return false;
        }

        File palmSdkBinDir = new File(PALM_SDK_BIN_PATH);
        if (!palmSdkBinDir.exists() || !palmSdkBinDir.isDirectory()) {
            Log.error("The Palm SDK PATH '" + PALM_SDK_PATH
                    + "' does not contain a 'bin' directory.");
            return false;
        }

        Process process = getPalmBinProcess(PALM_GENERATE_CMD, new String[] { VERSION_ARG }, null);
        if (process == null) {
            Log.error("Could not execute palm-generate properly.");
            return false;
        }

        BufferedReader input = new BufferedReader(new InputStreamReader(process.getInputStream()));
        String line;
        try {
            line = input.readLine();
        } catch (IOException e) {
            e.printStackTrace();
            return false;
        }
        process.destroy();
        if (line != null && line.startsWith("Version")) {
            return true;
        } else {
            return false;
        }
    }

    /**
     * Creates a Palm Pre SDK command process. The given name should not contain
     * any file extension. This method will search for the correct one for the
     * current system.
     * 
     * @param name
     *            the name of the command, such as "palm-generate".
     * @param arguments
     *            the arguments for the process.
     * @param workingDirectory
     *            the working directory for this process.
     * @return the process or null, if it could not be instantiated.
     */
    private static Process getPalmBinProcess(String name, String[] arguments, File workingDirectory) {
        final String[] extensions = { "", ".bat", ".sh" };
        // Try to execute the palm-generate command and figure out if we are on
        // Windows, OSX or Linux, so we can use the correct version later on.

        for (String extension : extensions) {
            String command = name + extension;
            Process process = getPalmBinProcess0(command, arguments, workingDirectory);
            if (process != null) {
                return process;
            }
        }
        Log.error("Could not execute palm-generate properly.");
        return null;
    }

    /**
     * Creates a Palm Pre SDK command process with the exact command. Please use
     * {@link #getPalmBinProcess(String, String[], File)}.
     * 
     * @param command
     *            the command to execute (from within the palm-sdk-bin
     *            directory).
     * @param arguments
     *            the arguments for this process.
     * @param workingDirectory
     *            the working directory for this process.
     * @return the created process or null, if something went wrong.
     */
    private static Process getPalmBinProcess0(String command, String[] arguments,
            File workingDirectory) {
        String[] cmdArray = new String[arguments.length + 1];
        cmdArray[0] = (new File(PALM_SDK_BIN_PATH)).getAbsolutePath() + File.separator + command;
        System.arraycopy(arguments, 0, cmdArray, 1, arguments.length);

        try {
            return Runtime.getRuntime().exec(cmdArray, null, workingDirectory);
        } catch (IOException e) {
            // Don't log errors as getPalmBinProcess is using this method to
            // figure out what binary exists and which doesn't. So it's fine if
            // a binary cannot be found.
        }
        return null;
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
}
