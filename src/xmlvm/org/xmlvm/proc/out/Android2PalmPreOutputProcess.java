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

/**
 * Takes the output of a {@link QooxdooOutputProcess} and makes sure an app
 * developed on the Android can be run on a Palm Pre.
 * <p>
 * TODO(Sascha): IN DEVELOPMENT, PARDON THE DUST :)
 */
public class Android2PalmPreOutputProcess extends OutputProcess<QooxdooOutputProcess> {

    // TODO(Sascha): Make this platform-independant.
    private static final String PALM_GENERATE_CMD = "palm-generate.bat";
    private static final String VERSION_ARG       = "--version";
    private static final String PALM_SDK_PATH     = System.getenv("XMLVM_PALM_SDK_PATH");
    private List<OutputFile>    outputFiles       = new ArrayList<OutputFile>();

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
        // Just copy over the files from the Qooxdoo Process.
        List<QooxdooOutputProcess> preprocesses = preprocess();
        for (QooxdooOutputProcess process : preprocesses) {
            outputFiles.addAll(process.getOutputFiles());
        }
        return true;
    }

    @Override
    public boolean postProcess() {
        return true;
    }

    private boolean peformSanityChecks() {
        return arePalmToolsPresent();
    }

    /**
     * Returns whether the Python runtime is all set.
     */
    private static boolean arePalmToolsPresent() {
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

        File palmSdkBinDir = new File(PALM_SDK_PATH + "/bin");
        if (!palmSdkBinDir.exists() || !palmSdkBinDir.isDirectory()) {
            Log.error("The Palm SDK PATH '" + PALM_SDK_PATH
                    + "' does not contain a 'bin' directory.");
            return false;
        }

        String line = "";
        try {
            Process process;
            process = Runtime.getRuntime().exec(
                    new String[] {
                            palmSdkBinDir.getAbsolutePath() + File.separator + PALM_GENERATE_CMD,
                            VERSION_ARG });
            BufferedReader input = new BufferedReader(new InputStreamReader(process
                    .getInputStream()));
            line = input.readLine();
            process.destroy();
        } catch (IOException e) {
            e.printStackTrace();
            return false;
        }
        if (line != null && line.startsWith("Version")) {
            return true;
        } else {
            return false;
        }
    }
}
