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

package org.xmlvm.proc.out;

import java.io.BufferedReader;
import java.io.File;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.List;

import org.xmlvm.Log;
import org.xmlvm.main.Arguments;
import org.xmlvm.util.FileUtil;
import org.xmlvm.util.InputReaderThread;

/**
 * Takes the output of a {@link QooxdooOutputProcess} and makes sure an app
 * developed on the Android can be run on a Palm Pre.
 * <p>
 * TODO(Sascha): IN DEVELOPMENT, PARDON THE DUST :)
 */
public class Android2PalmPreOutputProcess extends OutputProcess<QooxdooOutputProcess> {

    private static final String[] GENERATE_PROJECT_OPTS = { "-p",
            "\"{title:'$PROJECT', id:org.xmlvm, version:'1.0.0'}\"", "$PROJECT" };
    private static final String[] GENERATE_SCENE_OPTS   = { "-t", "new_scene", "-p",
            "\"name:$PROJECTScene\"", "$PROJECT"       };
    private static final String   VERSION_ARG           = "--version";
    private static final String   PALM_SDK_PATH         = System.getenv("XMLVM_PALM_SDK_PATH");
    private static final String   PALM_SDK_BIN_PATH     = PALM_SDK_PATH + "/bin";
    private List<OutputFile>      outputFiles           = new ArrayList<OutputFile>();
    private String                palmGenerateCmd;

    public Android2PalmPreOutputProcess(Arguments arguments) {
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
        if (!patchSceneAssistant()) {
            return false;
        }
        Log.debug("Palm Pre processing successful.");
        return true;
    }

    /**
     * Patches the stage assistant file.
     */
    private boolean patchSceneAssistant() {
        String pathStr = arguments.option_out() + File.separatorChar + arguments.option_qx_app()
                + File.separatorChar + "app" + File.separatorChar + "assistants"
                + File.separatorChar + "stage-assistant.js";
        File stageAssistantFile = new File(pathStr);

        if (!stageAssistantFile.exists()) {
            Log.error("Could not find stage assistant file at: "
                    + stageAssistantFile.getAbsolutePath());
            return false;
        }
        return true;
    }

    /**
     * Creates a Palm Pre project.
     * 
     * @return whether the project was created successfully.
     */
    private boolean createProject() {
        // Nuke the old project dir.
        File projectDir = new File(arguments.option_out() + File.separatorChar
                + arguments.option_qx_app());
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

    private boolean palmGenerate(String[] options) {
        for (int i = 0; i < options.length; ++i) {
            options[i] = options[i].replaceAll("\\$PROJECT", arguments.option_qx_app());
        }

        Process process = getPalmBinProcess(palmGenerateCmd, options, new File(arguments
                .option_out()));
        printOutputOfProcess(process, "palm-generate");
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
     * Returns whether everything is set for successfully creating and
     * processing a Palm Pre project.
     */
    private boolean peformSanityChecks() {
        if (arguments.option_qx_app() == null || arguments.option_qx_app().isEmpty()) {
            Log.error("Please use --qx-app to specify an application name.");
            return false;
        }
        return arePalmToolsPresent();
    }

    /**
     * Returns whether the Python runtime is all set.
     */
    private boolean arePalmToolsPresent() {
        final String PALM_GENERATE_BAT = "palm-generate.bat";
        final String PALM_GENERATE_SH = "palm-generate.sh";

        Log.debug("Checking for Palm SDK Tools ...");
        if (PALM_SDK_PATH.isEmpty()) {
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

        // Try to execute the palm-generate command and figure out if we are on
        // Windows, OSX or Linux, so we can use the correct version later on.
        Process process = getPalmBinProcess(PALM_GENERATE_BAT, new String[] { VERSION_ARG }, null);
        if (process == null) {
            process = getPalmBinProcess(PALM_GENERATE_SH, new String[] { VERSION_ARG }, null);
            if (process == null) {
                Log.error("Could not execute palm-generate properly.");
                return false;
            } else {
                palmGenerateCmd = PALM_GENERATE_SH;
            }
        } else {
            palmGenerateCmd = PALM_GENERATE_BAT;
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
     * Creates a Palm Pre SDK command process.
     * 
     * @param command
     *            the command to execute (from within the palm-sdk-bin
     *            directory)
     * @param arguments
     *            the arguments to give to the process
     * @param workingDirectory
     *            the working directory for this process.
     * @return the created process or null, if something went wrong.
     */
    private static Process getPalmBinProcess(String command, String[] arguments,
            File workingDirectory) {
        String[] cmdArray = new String[arguments.length + 1];
        cmdArray[0] = (new File(PALM_SDK_BIN_PATH)).getAbsolutePath() + File.separator + command;
        System.arraycopy(arguments, 0, cmdArray, 1, arguments.length);

        try {
            return Runtime.getRuntime().exec(cmdArray, null, workingDirectory);
        } catch (IOException e) {
            Log.error(e.getMessage());
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
