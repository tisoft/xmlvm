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

import static org.xmlvm.proc.out.IPhoneOutputProcess.IPHONE_SRC;
import static org.xmlvm.proc.out.IPhoneOutputProcess.IPHONE_SRC_APP;
import static org.xmlvm.proc.out.IPhoneOutputProcess.IPHONE_SRC_LIB;
import static org.xmlvm.proc.out.IPhoneOutputProcess.IPHONE_RESOURCES_SYS;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.StringReader;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import org.xmlvm.Log;
import org.xmlvm.main.Arguments;
import org.xmlvm.proc.XmlvmProcessImpl;
import org.xmlvm.proc.out.build.MakeFile;
import org.xmlvm.proc.out.build.ResourceManager;
import org.xmlvm.proc.out.build.XCodeFile;
import org.xmlvm.util.universalfile.UniversalFile;
import org.xmlvm.util.universalfile.UniversalFileCreator;

public class IPhoneCOutputProcess extends XmlvmProcessImpl<AugmentedCOutputProcess> {
    private static final String        TAG                     = IPhoneCOutputProcess.class
                                                                       .getSimpleName();

    private static final UniversalFile IPHONE_COCOA_COMPAT_LIB = UniversalFileCreator
                                                                       .createDirectory(
                                                                               "/iphone/cocoa-compat-lib.jar",
                                                                               "src/xmlvm2c/compat-lib/iphone");
    private static final UniversalFile BOEHM_GC_LIB            = UniversalFileCreator
                                                                       .createDirectory(
                                                                               "/lib/boehmgc.jar",
                                                                               "lib/boehmgc.jar");

    public static final String         IPHONE_BOEHMGC_LIB      = IPHONE_SRC + "/lib/boehmgc";

    private List<OutputFile>           outputFiles             = new ArrayList<OutputFile>();


    public IPhoneCOutputProcess(Arguments arguments) {
        super(arguments);
        // Only COutputProcesses are supported as input.
        addSupportedInput(AugmentedCOutputProcess.class);
    }

    @Override
    public List<OutputFile> getOutputFiles() {
        return outputFiles;
    }

    @Override
    public boolean process() {
        List<AugmentedCOutputProcess> preprocesses = preprocess();

        Log.debug("Processing IPhoneCOutputProcess");

        // Add all the files from the preprocesses to our result list.
        for (AugmentedCOutputProcess preprocess : preprocesses) {
            for (OutputFile in : preprocess.getOutputFiles()) {
                OutputFile out = new OutputFile(in.getData());
                out.setFileName(in.getFileName());
                out.setLocation(in.getLocation() + IPHONE_SRC_APP);
                outputFiles.add(out);
            }
        }

        OutputFile iPhoneCocoaCompatLib = new OutputFile(IPHONE_COCOA_COMPAT_LIB);
        iPhoneCocoaCompatLib.setLocation(arguments.option_out() + IPHONE_SRC_LIB);
        outputFiles.add(iPhoneCocoaCompatLib);

        OutputFile bohemGc = new OutputFile(BOEHM_GC_LIB);
        bohemGc.setLocation(arguments.option_out() + IPHONE_BOEHMGC_LIB);
        outputFiles.add(bohemGc);

        try {
            // Create Info.plist
            UniversalFile infoInFile = UniversalFileCreator.createFile("/iphone/Info.plist",
                    "var/iphone/Info.plist");
            BufferedReader infoIn = new BufferedReader(new StringReader(
                    infoInFile.getFileAsString()));
            StringBuilder infoOut = new StringBuilder();
            String line = null;
            while ((line = infoIn.readLine()) != null) {
                line = line.replaceAll("PROPERTY_BUNDLEIDENTIFIER",
                        arguments.option_property("bundleidentifier"));
                line = line.replaceAll("PROPERTY_BUNDLEVERSION",
                        arguments.option_property("bundleversion"));
                line = line.replaceAll("PROPERTY_BUNDLEDISPLAYNAME",
                        arguments.option_property("bundledisplayname"));
                line = line
                        .replaceAll(
                                "PROPERTY_STATUSBARHIDDEN",
                                arguments.option_property("statusbarhidden").toLowerCase()
                                        .equals("true") ? "true" : "false");
                line = line
                        .replaceAll(
                                "PROPERTY_PRERENDEREDICON",
                                arguments.option_property("prerenderedicon").toLowerCase()
                                        .equals("true") ? "true" : "false");
                line = line
                        .replaceAll(
                                "PROPERTY_APPLICATIONEXITS",
                                arguments.option_property("applicationexits").toLowerCase()
                                        .equals("true") ? "true" : "false");
                line = line.replaceAll("XMLVM_APP", arguments.option_app_name());
                infoOut.append(line).append("\n");
            }
            OutputFile infoPlistFile = new OutputFile(infoOut.toString());
            infoPlistFile.setLocation(arguments.option_out() + IPHONE_RESOURCES_SYS);
            infoPlistFile.setFileName(arguments.option_app_name() + "-Info.plist");
            outputFiles.add(infoPlistFile);
        } catch (IOException ex) {
            Log.error(TAG, ex.getMessage());
            return false;
        }

        // Add extra source files, as resource files, if found
        outputFiles.addAll(ResourceManager.getSourceResources(arguments));

        // Remove files that have manual overrides from the list of output
        // files.
        eliminateOverridenResources(new UniversalFile[] { IPHONE_COCOA_COMPAT_LIB });

        // Create various buildfiles
        MakeFile makefile = new MakeFile();
        Log.error(makefile.composeBuildFiles(outputFiles, arguments));
        XCodeFile xcode = new XCodeFile();
        Log.error(xcode.composeBuildFiles(outputFiles, arguments));
        return true;
    }

    /**
     * They way things are right now, we do cross-compile all the simulator
     * classes. However, we don't use them, but instead use the manually
     * implemented files. This methods makes sure that those cross-compiled
     * resources are removed.
     * 
     * @param manualOverrides
     *            Contains files that are provided manually.
     */
    private void eliminateOverridenResources(UniversalFile[] manualOverrides) {
        Log.debug(TAG, "Eliminating for manual overrides.");
        Set<String> fileNamesToRemove = new HashSet<String>();
        for (UniversalFile directory : manualOverrides) {
            for (UniversalFile manualOverride : directory.listFiles()) {
                fileNamesToRemove.add(manualOverride.getName());
            }
        }

        Set<OutputFile> filesToRemove = new HashSet<OutputFile>();
        for (OutputFile outputFile : outputFiles) {
            if (fileNamesToRemove.contains(outputFile.getFileName())) {
                filesToRemove.add(outputFile);
            }
        }

        for (OutputFile fileToRemove : filesToRemove) {
            outputFiles.remove(fileToRemove);
        }
    }
}
