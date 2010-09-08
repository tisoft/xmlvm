/*
 * Copyright (c) 2004-2010 XMLVM --- An XML-based Programming Language
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

import java.util.ArrayList;
import java.util.List;

import org.xmlvm.main.Arguments;
import org.xmlvm.proc.XmlvmProcessImpl;

/**
 * This process takes {@link COutputProcess}es which contain newly generated
 * wrappers (-gen_wrappers must be enabled for the {@link COutputProcess} to do
 * so). If the destination is empty, the wrappers will simply be written there,
 * and no further processing occurs. However, if files already exist, they will
 * not be overridden, but instead merged.
 * <p>
 * Merging happens based on some special "begin" and "end" markers, which
 * contain manually written code in between them. This code is extracted and put
 * into the newly generated wrappers - at the correct position.
 */
public class GenCWrappersOutputProcess extends XmlvmProcessImpl<COutputProcess> {
    private List<OutputFile> result = new ArrayList<OutputFile>();


    public GenCWrappersOutputProcess(Arguments arguments) {
        super(arguments);
        addSupportedInput(COutputProcess.class);
    }

    @Override
    public List<OutputFile> getOutputFiles() {
        return result;
    }

    @Override
    public boolean process() {
        List<OutputFile> outputFiles = new ArrayList<OutputFile>();
        List<COutputProcess> preprocesses = preprocess();

        for (COutputProcess process : preprocesses) {
            outputFiles.addAll(process.getOutputFiles());
        }

        // TODO: Just for testing ...
        result.addAll(outputFiles);
        return true;
    }
}
