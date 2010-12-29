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

            XmlvmResource resource = new XmlvmResource(org.xmlvm.proc.XmlvmResource.Type.DEX, doc);
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
