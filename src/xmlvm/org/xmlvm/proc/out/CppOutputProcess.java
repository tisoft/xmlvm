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

import java.util.ArrayList;
import java.util.List;

import org.xmlvm.Log;
import org.xmlvm.main.Arguments;
import org.xmlvm.proc.XmlvmProcessImpl;
import org.xmlvm.proc.XmlvmResource;
import org.xmlvm.proc.XmlvmResourceProvider;
import org.xmlvm.proc.XsltRunner;

public class CppOutputProcess extends XmlvmProcessImpl<XmlvmResourceProvider> {
    private static final String CPP_EXTENSION = ".cpp";
    private List<OutputFile>    result        = new ArrayList<OutputFile>();

    public CppOutputProcess(Arguments arguments) {
        super(arguments);
        // We support any InputProcess as a valid input for JavaScript
        // generation.
        addSupportedInput(ClassToXmlvmProcess.class);
        addSupportedInput(ExeToXmlvmProcess.class);
    }

    @Override
    public List<OutputFile> getOutputFiles() {
        return result;
    }

    @Override
    public boolean process() {
        List<XmlvmResourceProvider> preprocesses = preprocess();
        for (XmlvmResourceProvider process : preprocesses) {
            List<XmlvmResource> xmlvmResources = process.getXmlvmResources();
            for (XmlvmResource xmlvm : xmlvmResources) {
                Log.debug("CppOutputProcess: Processing " + xmlvm.getName());
                OutputFile file = generatePython(xmlvm);
                file.setLocation(arguments.option_out());
                file.setFileName(xmlvm.getName() + CPP_EXTENSION);
                result.add(file);
            }
        }
        return true;
    }

    protected OutputFile generatePython(XmlvmResource xmlvm) {
        return XsltRunner.runXSLT("xmlvm2cpp.xsl", xmlvm.getXmlvmDocument());
    }
}
