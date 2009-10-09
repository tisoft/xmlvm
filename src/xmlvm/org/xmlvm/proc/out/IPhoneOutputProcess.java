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

import org.xmlvm.Log;
import org.xmlvm.main.Arguments;
import org.xmlvm.util.JarUtil;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

public class IPhoneOutputProcess extends OutputProcess<ObjectiveCOutputProcess> {
    private static final String IPHONE_COMPAT_LIB_JAR          = "/iphone/compat-lib.jar";
    private static final String IPHONE_COMPAT_LIB_PATH         = "src/xmlvm2objc/compat-lib/objc";
    private static final String IPHONE_MAKFILE_IN_JAR_RESOURCE = "/iphone/Makefile";
    private static final String IPHONE_MAKEFILE_PATH           = "var/iphone/Makefile";

    private static final String IPHONE_SRC                     = "/src";
    private static final String IPHONE_SRC_LIB                 = IPHONE_SRC + "/lib/iphone";
    private static final String IPHONE_SRC_APP                 = IPHONE_SRC + "/app";

    private List<OutputFile>    result                         = new ArrayList<OutputFile>();

    public IPhoneOutputProcess(Arguments arguments) {
        super(arguments);
        // Only ObjectiveCOutputProcesses are supported as input.
        addSupportedInput(ObjectiveCOutputProcess.class);
    }

    @Override
    public List<OutputFile> getOutputFiles() {
        return result;
    }

    @Override
    public boolean process() {
        List<ObjectiveCOutputProcess> preprocesses = preprocess();

        Log.debug("Processing IPhoneOutputProcess");

        // Add all the files from the preprocesses to our result list.
        for (ObjectiveCOutputProcess preprocess : preprocesses) {
            for (OutputFile in : preprocess.getOutputFiles()) {
                OutputFile out = new OutputFile(in.getData());
                out.setFileName(in.getFileName());
                out.setLocation(in.getLocation() + IPHONE_SRC_APP);
                result.add(out);
            }
        }

        if (JarUtil.resourceExists(IPHONE_COMPAT_LIB_JAR)) {
            // If the jar exists, we create a new OutputFile instance that will
            // lead in the contents of this file being copied to the
            // destination.
            // This is the typical scenario for when XMLVM is called from within
            // xmlvm.jar.
            FromJarOutputFile compatLibJar = new FromJarOutputFile();
            compatLibJar.setLocation(arguments.option_out() + IPHONE_SRC_LIB);
            compatLibJar.setSourceJar(IPHONE_COMPAT_LIB_JAR);
            result.add(compatLibJar);
        } else {
            // If the jar is not present, we take the file from their actual
            // path and copy them to the destination.
            result.add(new DirectoryCopyOutput(IPHONE_COMPAT_LIB_PATH, arguments.option_out()
                    + IPHONE_SRC_LIB));
        }

        // Create MakeVars
        String makeVars = "";
        makeVars += "PRODUCT_NAME=" + arguments.option_iphone_app() + "\n\n";
        makeVars += "SOURCES=";
        for (String fileName : getMFileNames(result, arguments.option_out())) {
            makeVars += (" \\\n" + fileName);
        }
        OutputFile makeVarsFile = new OutputFile(makeVars);
        makeVarsFile.setLocation(arguments.option_out());
        makeVarsFile.setFileName("MakeVars");
        result.add(makeVarsFile);

        try {
            // Create Info.plist
            // TODO: Copy non-in-JAR file version in case we are not in JAR-file
            // mode.
            BufferedReader infoIn = JarUtil.getFile("/iphone/Info.plist");
            StringBuffer infoOut = new StringBuffer();
            String line = null;
            while ((line = infoIn.readLine()) != null) {
                line = line.replaceAll("XMLVM_APP", arguments.option_iphone_app());
                infoOut.append(line + "\n");
            }
            OutputFile infoPlistFile = new OutputFile(infoOut.toString());
            infoPlistFile.setLocation(arguments.option_out());
            infoPlistFile.setFileName("Info.plist");
            result.add(infoPlistFile);
        } catch (IOException ex) {
            ex.printStackTrace();
            return false;
        }

        try {
            // Copy Makefile
            OutputFile makeFile = null;
            String line;
            if (JarUtil.resourceExists(IPHONE_MAKFILE_IN_JAR_RESOURCE)) {
                BufferedReader makeFileIn = JarUtil.getFile(IPHONE_MAKFILE_IN_JAR_RESOURCE);
                StringBuffer makeFileOut = new StringBuffer();
                while ((line = makeFileIn.readLine()) != null) {
                    makeFileOut.append(line + "\n");
                }
                makeFile = new OutputFile(makeFileOut.toString());
            } else {
                BufferedReader reader = new BufferedReader(new FileReader(IPHONE_MAKEFILE_PATH));
                System.out.println("Reading MAKEFILE");
                StringBuffer buffer = new StringBuffer();
                while ((line = reader.readLine()) != null) {
                    buffer.append(line + '\n');
                }
                makeFile = new OutputFile(buffer.toString());
            }
            makeFile.setLocation(arguments.option_out());
            makeFile.setFileName("Makefile");
            result.add(makeFile);
        } catch (IOException ex) {
            ex.printStackTrace();
            return false;
        }
        return true;
    }

    /**
     * Goes through the OutputFile list and returns the filenames of all
     * contained m-files.
     * 
     * @param fileList
     *            A list of OutputFiles. May also contain DirectoryCopyOutputs.
     * @param inLocation
     *            Checks whethet the OutputFile's location matches
     * @return A list of m-file filenames.
     */
    private static List<String> getMFileNames(List<OutputFile> fileList, String inLocation) {
        List<String> result = new ArrayList<String>();
        for (OutputFile file : fileList) {
            if (file instanceof DirectoryCopyOutput) {
                File[] copyFiles = ((DirectoryCopyOutput) file).getAffectedSourceFiles();
                for (File copyFile : copyFiles) {
                    if (isMFile(copyFile.getName())) {
                        // TODO(shaeberling): Right now this relies on the fact
                        // that the file will be copied in the directory
                        // directly. Better: Let DirectoryCopyOutput return a
                        // list of OutputFiles, so we can check better here.
                        result.add(copyFile.getName());
                    }
                }
            } else if (file.getLocation().equals(inLocation) && isMFile(file.getFileName())) {
                result.add(file.getFileName());
            }
        }
        return result;
    }

    /**
     * Returns whether the given fileName is from an Objective-C m-file.
     */
    private static boolean isMFile(String fileName) {
        return fileName.toLowerCase().endsWith(".m");
    }
}
