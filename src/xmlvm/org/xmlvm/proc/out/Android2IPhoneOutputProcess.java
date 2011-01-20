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

import java.io.File;
import java.util.ArrayList;
import java.util.List;

import org.xmlvm.Log;
import org.xmlvm.main.Arguments;
import org.xmlvm.proc.XmlvmProcessImpl;
import org.xmlvm.proc.XmlvmProcessor;
import org.xmlvm.proc.out.build.MakeFile;
import org.xmlvm.proc.out.build.XCodeFile;
import org.xmlvm.util.FileUtil;
import org.xmlvm.util.JarUtil;
import org.xmlvm.util.universalfile.UniversalFile;
import org.xmlvm.util.universalfile.UniversalFileCreator;

/**
 * Takes an {@link IPhoneOutputProcess} as the input and augments it with
 * compatibility classes necessary if the original application was written for
 * the Android API.
 */
public class Android2IPhoneOutputProcess extends XmlvmProcessImpl<IPhoneOutputProcess> {
    private static final String PLATFORM                      = "iphone";
    public static final String  ANDROID_SRC_LIB               = IPhoneOutputProcess.IPHONE_SRC
                                                                      + "/lib/android";

    private static final String ANDROID_IPHONE_COMPAT_LIB_JAR = "/iphone/android-compat-lib.jar";
    private List<OutputFile>    result                        = new ArrayList<OutputFile>();


    public Android2IPhoneOutputProcess(Arguments arguments) {
        super(arguments);
        // Only IPhoneOutputProcesses are supported as inputs.
        addSupportedInput(IPhoneOutputProcess.class);
    }

    @Override
    public List<OutputFile> getOutputFiles() {
        return result;
    }

    @Override
    public boolean process() {
        Log.debug("Processing Android2IPhoneOutputProcess");
        List<IPhoneOutputProcess> preprocesses = preprocess();
        for (IPhoneOutputProcess preprocess : preprocesses) {
            for (OutputFile in : preprocess.getOutputFiles()) {
                if (!(in.getFileName().equals("Makefile") || in.getFileName().equals(
                        "project.pbxproj")))
                    result.add(in);
            }
        }

        if (JarUtil.resourceExists(ANDROID_IPHONE_COMPAT_LIB_JAR)) {
            // If the jar exists, we create a new OutputFile instance that will
            // lead in the contents of this file being copied to the
            // destination.
            // This is the typical scenario for when XMLVM is called from within
            // xmlvm.jar.
            UniversalFile compatLibJar = UniversalFileCreator.createDirectory(
                    ANDROID_IPHONE_COMPAT_LIB_JAR, null);
            OutputFile compatLib = new OutputFile(compatLibJar);
            compatLib.setLocation(arguments.option_out() + ANDROID_SRC_LIB);
            result.add(compatLib);
        } else {
            // If the jar is not present (typical non-xmlvm.jar scenario) then
            // we need to cross-compile the android compatibility library first,
            // and then add the generated files to the result.

            // The arguments that are used to create a new XmlvmProcess which
            // will process the compatibility library.
            Arguments args = new Arguments(new String[] {
                    "--in=" + (new File("bin-android2iphone")).getAbsolutePath(),
                    "--out=" + arguments.option_out() + ANDROID_SRC_LIB, "--target=objc" });
            XmlvmProcessor subProcessor = new XmlvmProcessor(args);
            if (subProcessor.process()) {
                result.addAll(subProcessor.getTargetProcess().getOutputFiles());
            } else {
                Log.error("Sub-Process for processing android iphone compat lib has failed.");
                return false;
            }
        }

        // Create various buildfiles
        MakeFile makefile = new MakeFile(PLATFORM);
        Log.error(makefile.composeBuildFiles(result, arguments));
        XCodeFile xcode = new XCodeFile();
        Log.error(xcode.composeBuildFiles(result, arguments));

        return true;
    }

}
