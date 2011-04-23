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
import java.io.IOException;
import java.io.StringReader;

import org.xmlvm.Log;
import org.xmlvm.main.Arguments;
import org.xmlvm.proc.BundlePhase1;
import org.xmlvm.proc.BundlePhase2;
import org.xmlvm.proc.XmlvmProcessImpl;
import org.xmlvm.proc.out.build.MakeFile;
import org.xmlvm.proc.out.build.ResourceManager;
import org.xmlvm.proc.out.build.XCodeFile;
import org.xmlvm.util.universalfile.UniversalFile;
import org.xmlvm.util.universalfile.UniversalFileCreator;

public class IPhoneOutputProcess extends XmlvmProcessImpl {

    private static final String        PLATFORM             = "iphone";
    private static final UniversalFile IPHONE_COMPAT_LIB    = UniversalFileCreator
                                                                    .createDirectory(
                                                                            "/iphone/compat-lib.jar",
                                                                            "src/xmlvm2objc/compat-lib/objc");
    public static final String         IPHONE_SRC           = "/build/xcode/src";
    public static final String         IPHONE_SRC_LIB       = IPHONE_SRC + "/lib/iphone";
    public static final String         IPHONE_SRC_APP       = IPHONE_SRC + "/app";
    public static final String         IPHONE_RESOURCES_SYS = "/build/xcode/sys";


    public IPhoneOutputProcess(Arguments arguments) {
        super(arguments);
        // Only ObjectiveCOutputProcesses are supported as input.
        addSupportedInput(ObjectiveCOutputProcess.class);
    }

    @Override
    public boolean processPhase1(BundlePhase1 bundle) {
        return true;
    }

    @Override
    public boolean processPhase2(BundlePhase2 bundle) {
        Log.debug("Processing IPhoneOutputProcess");

        for (OutputFile in : bundle.getOutputFiles()) {
            OutputFile out = new OutputFile(in.getData());
            out.setFileName(in.getFileName());
            out.setLocation(in.getLocation() + IPHONE_SRC_APP);
            bundle.removeOutputFile(in);
            bundle.addOutputFile(out);
        }
        OutputFile iPhoneCompatLib = new OutputFile(IPHONE_COMPAT_LIB);
        iPhoneCompatLib.setLocation(arguments.option_out() + IPHONE_SRC_LIB);
        bundle.addOutputFile(iPhoneCompatLib);

        try {
            // Create Info.plist
            UniversalFile infoInFile = UniversalFileCreator.createFile("/iphone/Info.plist",
                    "var/iphone/Info.plist");
            BufferedReader infoIn = new BufferedReader(new StringReader(
                    infoInFile.getFileAsString()));
            StringBuilder infoOut = new StringBuilder();
            String line = null;
            String customfonts = arguments.option_customfonts();
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
                line = line.replaceAll("PROPERTY_FONTS", customfonts);
                line = line.replaceAll("XMLVM_APP", arguments.option_app_name());
                infoOut.append(line).append("\n");
            }
            OutputFile infoPlistFile = new OutputFile(infoOut.toString());
            infoPlistFile.setLocation(arguments.option_out() + IPHONE_RESOURCES_SYS);
            infoPlistFile.setFileName(arguments.option_app_name() + "-Info.plist");
            bundle.addOutputFile(infoPlistFile);
        } catch (IOException ex) {
            ex.printStackTrace();
            return false;
        }

        /* Add extra source files, as resource files, if found */
        bundle.addOutputFiles(ResourceManager.getSourceResources(arguments));

        /* Create various buildfiles */
        MakeFile makefile = new MakeFile(PLATFORM);
        bundle.addOutputFile(makefile.composeBuildFiles(arguments));
        XCodeFile xcode = new XCodeFile(bundle.getOutputFiles());
        bundle.addOutputFile(xcode.composeBuildFiles(arguments));

        return true;
    }
}
