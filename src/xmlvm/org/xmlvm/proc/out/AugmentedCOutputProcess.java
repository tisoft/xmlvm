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

import java.util.ArrayList;
import java.util.List;

import org.xmlvm.main.Arguments;
import org.xmlvm.proc.XmlvmProcessImpl;
import org.xmlvm.util.universalfile.UniversalFile;
import org.xmlvm.util.universalfile.UniversalFileCreator;

/**
 * This process takes output from the {@link COutputProcess} and adds additional
 * libraries to the output, such as basic compatibility libraries.
 */
public class AugmentedCOutputProcess extends XmlvmProcessImpl<COutputProcess> {
    private static final UniversalFile C_JAVA_COMPAT_LIB = UniversalFileCreator.createDirectory(
                                                                 "/xmlvm2c/java-compat-lib.jar",
                                                                 "src/xmlvm2c/compat-lib/java");
    private final List<OutputFile>     outputFiles       = new ArrayList<OutputFile>();


    /**
     * Initialized the process with the given arguments.
     */
    public AugmentedCOutputProcess(Arguments arguments) {
        super(arguments);
        addSupportedInput(COutputProcess.class);
    }

    @Override
    public List<OutputFile> getOutputFiles() {
        return outputFiles;
    }

    @Override
    public boolean process() {
        for (COutputProcess preProcess : preprocess()) {
            for (OutputFile outputFile : preProcess.getOutputFiles()) {
                outputFiles.add(outputFile);
            }
        }

        // This is mainly xmlvm.m. and xmlvm.h
        OutputFile iPhoneJavaCompatLib = new OutputFile(C_JAVA_COMPAT_LIB);
        iPhoneJavaCompatLib.setLocation(arguments.option_out());
        outputFiles.add(iPhoneJavaCompatLib);

        return true;
    }
}
