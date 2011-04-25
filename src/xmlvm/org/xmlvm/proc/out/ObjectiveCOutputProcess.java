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
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;

import org.jdom.Attribute;
import org.jdom.Document;
import org.jdom.Element;
import org.xmlvm.main.Arguments;
import org.xmlvm.proc.BundlePhase1;
import org.xmlvm.proc.BundlePhase2;
import org.xmlvm.proc.XmlvmProcessImpl;
import org.xmlvm.proc.XmlvmResource;
import org.xmlvm.proc.XsltRunner;
import org.xmlvm.proc.XmlvmResource.Type;

public class ObjectiveCOutputProcess extends XmlvmProcessImpl {
    private static final String M_EXTENSION = ".m";
    private static final String H_EXTENSION = ".h";


    public ObjectiveCOutputProcess(Arguments arguments) {
        super(arguments);
        addAllXmlvmEmittingProcessesAsInput();
    }

    @Override
    public boolean processPhase1(BundlePhase1 bundle) {
        return true;
    }

    @Override
    public boolean processPhase2(BundlePhase2 bundle) {
        for (XmlvmResource xmlvm : bundle.getResources()) {
            if (xmlvm.getType() == Type.CONST_POOL) {
                continue;
            }
            OutputFile[] files = genObjC(xmlvm);
            for (OutputFile file : files) {
                file.setLocation(arguments.option_out());
                bundle.addOutputFile(file);
            }
        }
        return true;
    }

    /**
     * From the given XmlvmResource creates a header as well as m-file.
     */
    public OutputFile[] genObjC(XmlvmResource xmlvm) {
        Document doc = xmlvm.getXmlvmDocument();
        // The filename will be the name of the first class
        String namespaceName = xmlvm.getPackageName();
        String inheritsFrom = xmlvm.getSuperTypeName().replace('.', '_').replace('$', '_');
        String className = xmlvm.getName().replace('$', '_');
        String fileNameStem = (namespaceName + "." + className).replace('.', '_');
        String headerFileName = fileNameStem + H_EXTENSION;
        String mFileName = fileNameStem + M_EXTENSION;

        StringBuilder headerBuffer = new StringBuilder();
        headerBuffer.append("#import \"xmlvm.h\"\n");
        for (String i : getTypesForHeader(doc)) {
            if (i.equals(inheritsFrom)) {
                headerBuffer.append("#import \"" + i + ".h\"\n");
            }
        }
        String interfaces = xmlvm.getInterfaces();
        if (interfaces != null) {
            for (String i : interfaces.split(",")) {
                headerBuffer
                        .append("#import \"" + i.replace('.', '_').replace('$', '_') + ".h\"\n");
            }
        }
        headerBuffer.append("\n// For circular include:\n");
        for (String i : getTypesForHeader(doc)) {
            headerBuffer.append("@class " + i + ";\n");
        }
        OutputFile headerFile = XsltRunner.runXSLT("xmlvm2objc.xsl", doc, new String[][] {
                { "pass", "emitHeader" }, { "header", headerFileName } });
        headerFile.setData(headerBuffer.toString() + headerFile.getDataAsString());
        headerFile.setFileName(headerFileName);

        StringBuilder mBuffer = new StringBuilder();
        for (String i : getTypesForHeader(doc)) {
            String toIgnore = (namespaceName + "_" + className).replace('.', '_');
            if (!i.equals(inheritsFrom) && !i.equals(toIgnore)) {
                mBuffer.append("#import \"" + i + ".h\"\n");
            }
        }

        OutputFile mFile = XsltRunner.runXSLT("xmlvm2objc.xsl", doc, new String[][] {
                { "pass", "emitImplementation" }, { "header", headerFileName } });
        mFile.setData(mBuffer.toString() + mFile.getDataAsString());
        mFile.setFileName(mFileName);

        return new OutputFile[] { headerFile, mFile };
    }

    private List<String> getTypesForHeader(Document doc) {
        HashSet<String> seen = new HashSet<String>();
        Iterator<?> i = doc.getDescendants();
        while (i.hasNext()) {
            Object cur = i.next();
            if (cur instanceof Element) {
                Attribute a = ((Element) cur).getAttribute("type");
                if (a != null) {
                    seen.add(a.getValue());
                }
                a = ((Element) cur).getAttribute("extends");
                if (a != null) {
                    seen.add(a.getValue());
                }
                a = ((Element) cur).getAttribute("interfaces");
                if (a != null) {
                    for (String iface : a.getValue().split(",")) {
                        seen.add(iface);
                    }
                }
                a = ((Element) cur).getAttribute("class-type");
                if (a != null) {
                    seen.add(a.getValue());
                }
                if (((Element) cur).getName().equals("const-class")) {
                    a = ((Element) cur).getAttribute("value");
                    if (a != null) {
                        seen.add(a.getValue());
                    }
                }
            }
        }
        HashSet<String> bad = new HashSet<String>();
        for (String t : new String[] { "char", "float", "double", "int", "void", "boolean",
                "short", "byte", "float", "long" }) {
            bad.add(t);
        }
        List<String> toRet = new ArrayList<String>();
        for (String t : seen) {
            if (!bad.contains(t) && t.indexOf("[]") == -1) {
                toRet.add(t.replace('.', '_').replace('$', '_'));
            }
        }
        return toRet;
    }
}
