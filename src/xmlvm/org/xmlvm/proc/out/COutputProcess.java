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
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

import org.jdom.Attribute;
import org.jdom.Document;
import org.jdom.Element;
import org.xmlvm.main.Arguments;
import org.xmlvm.proc.XmlvmProcessImpl;
import org.xmlvm.proc.XmlvmResource;
import org.xmlvm.proc.XmlvmResource.XmlvmMethod;
import org.xmlvm.proc.XmlvmResourceProvider;
import org.xmlvm.proc.XsltRunner;

public class COutputProcess extends XmlvmProcessImpl<XmlvmResourceProvider> {
    private final static String        TAG          = COutputProcess.class.getSimpleName();

    private static final String        C_EXTENSION  = ".c";
    private static final String        H_EXTENSION  = ".h";
    private List<OutputFile>           result       = new ArrayList<OutputFile>();

    private Map<String, XmlvmResource> resourcePool = new HashMap<String, XmlvmResource>();

    public COutputProcess(Arguments arguments) {
        super(arguments);
        // addAllXmlvmEmittingProcessesAsInput();
        // We need the special Vtable information in order to be able to produce
        // C code.
        addSupportedInput(XmlvmJavaRuntimeAnnotationProcess.class);
    }

    @Override
    public List<OutputFile> getOutputFiles() {
        return result;
    }

    @Override
    public boolean process() {
        List<XmlvmResourceProvider> preprocesses = preprocess();

        // Collect all XmlvmResource instances.
        for (XmlvmResourceProvider process : preprocesses) {
            List<XmlvmResource> xmlvmResources = process.getXmlvmResources();
            for (XmlvmResource xmlvm : xmlvmResources) {
                if (xmlvm != null) {
                    resourcePool.put(xmlvm.getFullName(), xmlvm);
                }
            }
        }

        // fixInterfaces();

        // Process all collected resources.
        for (XmlvmResource xmlvm : resourcePool.values()) {
            OutputFile[] files = genC(xmlvm);
            for (OutputFile file : files) {
                file.setLocation(arguments.option_out());
                result.add(file);
            }
        }
        return true;
    }

    /**
     * Removes methods from interfaces, if a super-interface already implements
     * it.
     */
    private void fixInterfacesX() {
        for (XmlvmResource resource : resourcePool.values()) {
            if (resource.isInterface()) {
                fixInterface(resource);
            }
        }
    }

    private void fixInterface(XmlvmResource resource) {
        System.out.println("Fixing interface: " + resource.getFullName());
        Set<XmlvmMethod> superMethods = new HashSet<XmlvmMethod>();
        getMethodsFromSuperInterfaces(resource, superMethods);
        System.out.println("Methods from super interfaces: " + superMethods.size());
        Set<XmlvmMethod> methods = resource.getMethods();

        for (XmlvmMethod method : methods) {
            if (superMethods.contains(method)) {
                System.out.println("Found a method I need to remove: " + method);
                resource.removeMethod(method);
            }
        }
    }

    private void getMethodsFromSuperInterfaces(XmlvmResource resource, Set<XmlvmMethod> methods) {
        if (resource.getInterfaces() != null && !resource.getInterfaces().isEmpty()) {
            String[] superInterfaces = resource.getInterfaces().split(",");
            for (String superInterface : superInterfaces) {
                XmlvmResource superResource = resourcePool.get(superInterface);
                methods.addAll(superResource.getMethods());
                getMethodsFromSuperInterfaces(superResource, methods);
            }
        }
    }

    /**
     * From the given XmlvmResource creates a header as well as C-file.
     */
    public OutputFile[] genC(XmlvmResource xmlvm) {
        Document doc = xmlvm.getXmlvmDocument();
        // The filename will be the name of the first class
        String namespaceName = xmlvm.getPackageName();
        String inheritsFrom = xmlvm.getSuperTypeName().replace('.', '_').replace('$', '_');
        String className = xmlvm.getName().replace('$', '_');
        String fileNameStem = (namespaceName + "." + className).replace('.', '_');
        String headerFileName = fileNameStem + H_EXTENSION;
        String mFileName = fileNameStem + C_EXTENSION;

        String headerProlog = "#ifndef __" + fileNameStem.toUpperCase() + "__\n";
        headerProlog += "#define __" + fileNameStem.toUpperCase() + "__\n\n";
        
        String headerEpilog = "\n#endif\n";
        
        StringBuffer headerBuffer = new StringBuffer();
        headerBuffer.append("#include \"xmlvm.h\"\n");
        for (String i : getTypesForHeader(doc)) {
            if (i.equals(inheritsFrom)) {
                headerBuffer.append("#include \"" + i + ".h\"\n");
            }
        }
        String interfaces = xmlvm.getInterfaces();
        if (interfaces != null) {
            for (String i : interfaces.split(",")) {
                headerBuffer.append("#include \"" + i.replace('.', '_').replace('$', '_')
                        + ".h\"\n");
            }
        }
        headerBuffer.append("\n// For circular include:\n");
        for (String i : getTypesForHeader(doc)) {
            headerBuffer.append("// class " + i + ";\n");
        }
        OutputFile headerFile = XsltRunner.runXSLT("xmlvm2c.xsl", doc, new String[][] {
                { "pass", "emitHeader" }, { "header", headerFileName } });
        headerFile.setData(headerProlog + headerBuffer.toString() + headerFile.getData() + headerEpilog);
        headerFile.setFileName(headerFileName);

        StringBuffer mBuffer = new StringBuffer();
        for (String i : getTypesForHeader(doc)) {
            String toIgnore = (namespaceName + "_" + className).replace('.', '_');
            if (!i.equals(inheritsFrom) && !i.equals(toIgnore)) {
                mBuffer.append("#include \"" + i + ".h\"\n");
            }
        }

        OutputFile mFile = XsltRunner.runXSLT("xmlvm2c.xsl", doc, new String[][] {
                { "pass", "emitImplementation" }, { "header", headerFileName } });
        mFile.setData(mBuffer.toString() + mFile.getData());
        mFile.setFileName(mFileName);

        return new OutputFile[] { headerFile, mFile };
    }

    private List<String> getTypesForHeader(Document doc) {
        HashSet<String> seen = new HashSet<String>();
        @SuppressWarnings("unchecked")
        Iterator<Object> i = doc.getDescendants();
        while (i.hasNext()) {
            Object cur = i.next();
            if (cur instanceof Element) {
                Attribute a = ((Element) cur).getAttribute("type");
                if (a != null) {
                    seen.add(a.getValue());
                }
                a = ((Element) cur).getAttribute("extends");
                if (a != null && !a.getValue().equals("")) {
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
                a = ((Element) cur).getAttribute("kind");
                if (a != null && a.getValue().equals("type")) {
                    a = ((Element) cur).getAttribute("value");
                    if (a != null) {
                        seen.add(a.getValue());
                    }
                }
            } else {
                System.out.println(cur);
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
