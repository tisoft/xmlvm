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

import java.io.IOException;
import java.io.StringWriter;
import java.util.ArrayList;
import java.util.List;

import org.jdom.Document;
import org.jdom.output.Format;
import org.jdom.output.XMLOutputter;
import org.xmlvm.main.Arguments;
import org.xmlvm.proc.XmlvmProcessImpl;
import org.xmlvm.proc.XmlvmResource;
import org.xmlvm.proc.XmlvmResourceProvider;
import org.xmlvm.proc.in.file.XmlvmFile;

/**
 * This process takes XMLVM and writes it out as pure XML.
 */
public class XmlvmOutputProcess extends XmlvmProcessImpl<XmlvmResourceProvider> {
    private List<OutputFile> outputFiles = new ArrayList<OutputFile>();

    public XmlvmOutputProcess(Arguments arguments) {
        super(arguments);
        if (arguments.option_use_dex()) {
            addSupportedInput(DEXmlvmOutputProcess.class);
        } else {
            addSupportedInput(ClassToXmlvmProcess.class);
        }
        addSupportedInput(ExeToXmlvmProcess.class);
    }

    @Override
    public List<OutputFile> getOutputFiles() {
        return outputFiles;
    }

    @Override
    public boolean process() {
        List<XmlvmResourceProvider> preprocesses = preprocess();
        for (XmlvmResourceProvider process : preprocesses) {
            List<XmlvmResource> xmlvmResources = process.getXmlvmResources();
            for (XmlvmResource xmlvm : xmlvmResources) {
                outputFiles.add(createOutputFromDocument(xmlvm));
            }
        }
        return true;
    }

    /**
     * Creates an {@link OutputFile} from the given {@link XmlvmResource}.
     */
    private OutputFile createOutputFromDocument(XmlvmResource resource) {
        Document document = resource.getXmlvmDocument();
        XMLOutputter outputter = new XMLOutputter(Format.getPrettyFormat());
        StringWriter writer = new StringWriter();
        try {
            outputter.output(document, writer);
        } catch (IOException e) {
            e.printStackTrace();
            return new OutputFile("");
        }
        OutputFile result = new OutputFile(writer.toString());
        result.setFileName(resource.getName() + XmlvmFile.XMLVM_ENDING);
        result.setLocation(arguments.option_out());
        return result;
    }
}