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

import org.xmlvm.Log;
import org.xmlvm.main.Arguments;
import org.xmlvm.proc.BundlePhase1;
import org.xmlvm.proc.BundlePhase2;
import org.xmlvm.proc.XmlvmProcessImpl;
import org.xmlvm.proc.out.build.InfoPlist;
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
    @SuppressWarnings("CallToThreadDumpStack")
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

        // Create Info.plist
        InfoPlist infoplist = new InfoPlist(UniversalFileCreator.createFile("/iphone/Info.plist",
                "var/iphone/Info.plist").getFileAsString());
        infoplist.setIdentifier(arguments.option_property("bundleidentifier"));
        infoplist.setVersion(arguments.option_property("bundleversion"));
        infoplist.setDisplayName(arguments.option_property("bundledisplayname"));
        infoplist.setStatusBarHidden(arguments.option_property("statusbarhidden"));
        infoplist.setPrerenderIcon(arguments.option_property("prerenderedicon"));
        infoplist.setFileSharingEnabled(arguments.option_property("filesharingenabled"));
        infoplist.setApplicationExits(arguments.option_property("applicationexits"));
        infoplist.setDefaultOrientation(arguments.option_property("interfaceorientation"));
        infoplist.setSupportedOrientations(arguments.option_property("supportedinterfaceorientations"));
        infoplist.setFonts(arguments.option_property("appfonts"));
        infoplist.setInjectedInfoPlist(arguments.option_property("injectedinfoplist"));
        infoplist.setApplication(arguments.option_app_name());
        OutputFile infoPlistFile = new OutputFile(infoplist.toString());
        infoPlistFile.setLocation(arguments.option_out() + IPHONE_RESOURCES_SYS);
        infoPlistFile.setFileName(arguments.option_app_name() + "-Info.plist");
        bundle.addOutputFile(infoPlistFile);

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
