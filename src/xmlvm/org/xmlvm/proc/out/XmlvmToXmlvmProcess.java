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

import java.io.FileInputStream;
import java.util.ArrayList;
import java.util.List;

import org.jdom.Document;
import org.jdom.input.SAXBuilder;
import org.xmlvm.main.Arguments;
import org.xmlvm.proc.XmlvmProcessImpl;
import org.xmlvm.proc.XmlvmResource;
import org.xmlvm.proc.XmlvmResourceProvider;
import org.xmlvm.proc.in.InputProcess;
import org.xmlvm.proc.in.InputProcess.XmlvmInputProcess;

/**
 * This {@link InputProcess} can read .xmlvm files as input.
 * 
 * TODO(Sascha): This produces {@link XmlvmResource}s with wrong name, type and
 * super type name.
 */
public class XmlvmToXmlvmProcess extends XmlvmProcessImpl<XmlvmInputProcess> implements
        XmlvmResourceProvider {

    private List<XmlvmResource> xmlvmResources = new ArrayList<XmlvmResource>();


    public XmlvmToXmlvmProcess(Arguments arguments) {
        super(arguments);
        addSupportedInput(XmlvmInputProcess.class);
    }

    @Override
    public boolean process() {
        List<XmlvmInputProcess> preProcesses = preprocess();

        for (XmlvmInputProcess preProcess : preProcesses) {
            Document doc = null;
            SAXBuilder builder = new SAXBuilder();
            FileInputStream in;
            try {
                in = new FileInputStream(preProcess.getInputFile().getPath());

                doc = builder.build(in);
            } catch (Exception e) {
                e.printStackTrace();
            }

            XmlvmResource resource = new XmlvmResource("someName", null,
                    org.xmlvm.proc.XmlvmResource.Type.DEX, doc, null);
            xmlvmResources.add(resource);
        }

        return true;
    }

    @Override
    public List<XmlvmResource> getXmlvmResources() {
        return xmlvmResources;
    }

    @Override
    public List<OutputFile> getOutputFiles() {
        // TODO Auto-generated method stub
        return null;
    }

}
