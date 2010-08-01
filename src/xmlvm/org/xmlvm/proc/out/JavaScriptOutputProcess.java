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
import java.util.List;
import java.util.Map;

import org.xmlvm.Log;
import org.xmlvm.main.Arguments;
import org.xmlvm.proc.JavaJDKLoader;
import org.xmlvm.proc.XmlvmProcessImpl;
import org.xmlvm.proc.XmlvmResource;
import org.xmlvm.proc.XmlvmResourceProvider;
import org.xmlvm.proc.XsltRunner;

/**
 * This process takes XMLVM and turns it into JavaScript.
 */
public class JavaScriptOutputProcess extends XmlvmProcessImpl<XmlvmResourceProvider> {
    private static final String JS_EXTENSION = ".js";
    private List<OutputFile>    result       = new ArrayList<OutputFile>();


    public JavaScriptOutputProcess(Arguments arguments) {
        super(arguments);
        addAllXmlvmEmittingProcessesAsInput();
    }

    @Override
    public List<OutputFile> getOutputFiles() {
        return result;
    }

    public boolean process() {
        Map<String, XmlvmResource> mappedResources = new HashMap<String, XmlvmResource>();
        List<XmlvmResourceProvider> preprocesses = preprocess();
        for (XmlvmResourceProvider process : preprocesses) {
            List<XmlvmResource> xmlvmResources = process.getXmlvmResources();
            for (XmlvmResource resource : xmlvmResources) {
                mappedResources.put(resource.getFullName(), resource);
            }
        }

        if (arguments.option_exp_load_deps()) {
            // Make sure we have all types that are referenced loaded.
            (new JavaJDKLoader(arguments)).loadAllReferencedTypes(mappedResources);
        }

        // TODO(Sascha): Parallelize.
        for (XmlvmResource resource : mappedResources.values()) {
            if (resource == null) {
                continue;
            }
            Log.debug("JavaScriptOutputProcess: Processing " + resource.getName());
            OutputFile file = generateJavaScript(resource);
            file.setLocation(arguments.option_out());
            String packageName = resource.getPackageName().replace('.', '_');
            String resourceName = resource.getName();
            Log.debug("RESOURCE NAME: " + resourceName);

            String fileName = resourceName + JS_EXTENSION;
            if (!packageName.isEmpty()) {
                fileName = packageName + '_' + fileName;
            }
            file.setFileName(fileName);
            result.add(file);
        }
        return true;
    }

    protected OutputFile generateJavaScript(XmlvmResource xmlvm) {
        return XsltRunner.runXSLT("xmlvm2js.xsl", xmlvm.getXmlvmDocument());
    }
}
