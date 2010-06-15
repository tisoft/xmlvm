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
import org.xmlvm.proc.XmlvmResource;
import org.xmlvm.proc.XmlvmResourceProvider;

/**
 * Processes XMLVM documents and adds vtable information that is required by
 * some output processes, like the C backend.
 */
public class XmlvmJavaRuntimeAnnotationProcess extends XmlvmProcessImpl<XmlvmResourceProvider> implements
        XmlvmResourceProvider {
    
    List<XmlvmResource> result = new ArrayList<XmlvmResource>();

    public XmlvmJavaRuntimeAnnotationProcess(Arguments arguments) {
        super(arguments);
        addAllXmlvmEmittingProcessesAsInput();
    }

    @Override
    public boolean process() {
        List<XmlvmResourceProvider> preprocesses = preprocess();
        for (XmlvmResourceProvider process : preprocesses) {
            List<XmlvmResource> xmlvmResources = process.getXmlvmResources();
            for (XmlvmResource xmlvm : xmlvmResources) {

                // *************************************************************
                // * TODO(Arno): Do whatever you need with the XMLVM resources *
                // * to add the vtable information.                            *
                // *************************************************************

                result.add(xmlvm);
            }
        }
        return true;
    }

    @Override
    public List<XmlvmResource> getXmlvmResources() {
        return result;
    }

    @Override
    public List<OutputFile> getOutputFiles() {
        return null;
    }

}
