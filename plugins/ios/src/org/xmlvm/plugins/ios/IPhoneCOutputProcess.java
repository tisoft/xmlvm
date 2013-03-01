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

package org.xmlvm.plugins.ios;

import static org.xmlvm.plugins.iphone.IPhoneOutputProcess.IPHONE_RESOURCES_SYS;
import static org.xmlvm.plugins.iphone.IPhoneOutputProcess.IPHONE_SRC;
import static org.xmlvm.plugins.iphone.IPhoneOutputProcess.IPHONE_SRC_APP;
import static org.xmlvm.plugins.iphone.IPhoneOutputProcess.IPHONE_SRC_LIB;

import java.util.Arrays;

import org.xmlvm.Log;
import org.xmlvm.main.Arguments;
import org.xmlvm.plugins.c.AugmentedCOutputProcess;
import org.xmlvm.proc.BundlePhase1;
import org.xmlvm.proc.BundlePhase2;
import org.xmlvm.proc.XmlvmProcessImpl;
import org.xmlvm.proc.out.OutputFile;
import org.xmlvm.proc.out.build.InfoPlist;
import org.xmlvm.proc.out.build.MakeFile;
import org.xmlvm.proc.out.build.ResourceManager;
import org.xmlvm.proc.out.build.XCodeFile;
import org.xmlvm.util.FileMerger;
import org.xmlvm.util.universalfile.UniversalFile;
import org.xmlvm.util.universalfile.UniversalFileCreator;

public class IPhoneCOutputProcess extends XmlvmProcessImpl {
    private static final String        TAG                     = IPhoneCOutputProcess.class
                                                                       .getSimpleName();

    private static final String        PLATFORM                = "iphone";
    private static final UniversalFile IOS_LIB                 = UniversalFileCreator
                                                                       .createDirectory(
                                                                               "/xmlvm2c/java-ios-lib.jar",
                                                                               "src/xmlvm2c/lib/ios/c");
    private static final UniversalFile IPHONE_COCOA_COMPAT_LIB = UniversalFileCreator
                                                                       .createDirectory(
                                                                               "/iphone/cocoa-compat-lib.jar",
                                                                               "src/xmlvm2c/compat-lib/iphone");
    private static final UniversalFile IOS_COMPAT_LIB          = UniversalFileCreator
                                                                       .createDirectory(
                                                                               "/ios/wrapper-lib.jar",
                                                                               "src/xmlvm2c/lib/wrapper");

    private static final UniversalFile BOEHM_GC_LIB            = UniversalFileCreator
                                                                       .createDirectory(
                                                                               "/lib/boehmgc.jar",
                                                                               "lib/boehmgc.jar");
    private static final String        BOEHM_LIB_NAME          = "boehmgc";

    public static final String         IPHONE_BOEHMGC_LIB      = IPHONE_SRC + "/lib/"
                                                                       + BOEHM_LIB_NAME;


    public IPhoneCOutputProcess(Arguments arguments) {
        super(arguments);
        addSupportedInput(AugmentedCOutputProcess.class);
    }

    @Override
    public boolean processPhase1(BundlePhase1 bundle) {
        return true;
    }

    @Override
    public boolean processPhase2(BundlePhase2 bundle) {
        Log.debug("Processing IPhoneCOutputProcess");
        OutputFile boehmGc = new OutputFile(BOEHM_GC_LIB);
        boehmGc.setLocation(arguments.option_out());
        boehmGc.setTag(OutputFile.TAG_LIB_NAME, BOEHM_LIB_NAME);
        bundle.addOutputFile(boehmGc);

        OutputFile iosLib = new OutputFile(IOS_LIB);
        iosLib.setLocation(arguments.option_out());
        iosLib.setTag(OutputFile.TAG_LIB_NAME, "");
        bundle.addOutputFile(iosLib);

        for (OutputFile in : bundle.getOutputFiles()) {
            OutputFile out = new OutputFile(in.getData());
            out.setFileName(in.getFileName());
            if (in.hasTag(OutputFile.TAG_LIB_NAME)) {
                if (!in.getTag(OutputFile.TAG_LIB_NAME).isEmpty()) {
                    out.setLocation(arguments.option_out() + IPHONE_SRC + "/lib/"
                            + in.getTag(OutputFile.TAG_LIB_NAME));
                } else {
                    out.setLocation(arguments.option_out() + IPHONE_SRC_LIB);
                }
            } else {
                out.setLocation(in.getLocation() + IPHONE_SRC_APP);
            }
            bundle.removeOutputFile(in);
            bundle.addOutputFile(out);
        }

        // Replace the contents of the cross-compiled cocoa lib files witht he
        // hand-written implementations.
        replaceCocoaCompatLib(bundle);

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
        infoplist.setSupportedOrientations(arguments
                .option_property("supportedinterfaceorientations"));
        infoplist.setFonts(arguments.option_property("appfonts"));
        infoplist.setInjectedInfoPlist(arguments.option_property("injectedinfoplist"));
        infoplist.setApplication(arguments.option_app_name());

        String mainNib = arguments.option_property("mainnib");
        if (mainNib != null && mainNib.length() > 0) {
            mainNib = "<key>NSMainNibFile</key>\n<string>" + mainNib + "</string>";
        }
        infoplist.setMainNib(mainNib);

        infoplist.setMainStoryboard(arguments.option_property("mainstoryboard"));

        OutputFile infoPlistFile = new OutputFile(infoplist.toString());
        infoPlistFile.setLocation(arguments.option_out() + IPHONE_RESOURCES_SYS);
        infoPlistFile.setFileName(arguments.option_app_name() + "-Info.plist");
        bundle.addOutputFile(infoPlistFile);

        // Add extra source files, as resource files, if found
        bundle.addOutputFiles(ResourceManager.getSourceResources(arguments));

        // Create various buildfiles
        MakeFile makefile = new MakeFile(PLATFORM);

        bundle.addOutputFile(makefile.composeBuildFiles(arguments));
        XCodeFile xcode = new XCodeFile(bundle.getOutputFiles());
        bundle.addOutputFile(xcode.composeBuildFiles(arguments));
        return true;
    }

    /**
     * Right now all the Java-based Cocoa API classes are going through the
     * whole pipeline. This is necessary as they are used for dependency and
     * other analysis. However, their implementation is only good for the
     * Java-based simulator, but not for an actual Cocoa application. Therefore
     * we replace those resources here with manually implemented cocoa versions.
     */
    private void replaceCocoaCompatLib(BundlePhase2 resources) {
        // Merge the old iOS API
        UniversalFile[] cocoaFiles = IPHONE_COCOA_COMPAT_LIB.listFiles();
        FileMerger merger = new FileMerger(resources.getOutputFiles(), Arrays.asList(cocoaFiles));
        merger.process();
        // Merge the new iOS API
        UniversalFile[] iosFiles = IOS_COMPAT_LIB.listFiles();
        merger = new FileMerger(resources.getOutputFiles(), Arrays.asList(iosFiles));
        merger.process();
    }
}
