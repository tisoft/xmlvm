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

/**
 * A process that takes C files and creates a compilable POSIX project that
 * includes all required resources.
 */
public class PosixOutputProcess extends XmlvmProcessImpl<AugmentedCOutputProcess> {
    private List<OutputFile> outputFiles = new ArrayList<OutputFile>();


    /**
     * Initializes the {@link PosixOutputProcess}.
     */
    public PosixOutputProcess(Arguments arguments) {
        super(arguments);
        addSupportedInput(AugmentedCOutputProcess.class);
    }

    @Override
    public List<OutputFile> getOutputFiles() {
        return outputFiles;
    }

    @Override
    public boolean process() {
        for (AugmentedCOutputProcess preProcess : preprocess()) {
            outputFiles.addAll(preProcess.getOutputFiles());
        }

        // TODO(Arno): Add Makefiles etc.
        return true;
    }
}
