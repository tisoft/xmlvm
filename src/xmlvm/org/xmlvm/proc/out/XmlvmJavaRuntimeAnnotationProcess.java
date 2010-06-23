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

import java.io.BufferedWriter;
import java.io.FileWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

import org.xmlvm.Log;
import org.xmlvm.main.Arguments;
import org.xmlvm.proc.JavaJDKLoader;
import org.xmlvm.proc.XmlvmProcessImpl;
import org.xmlvm.proc.XmlvmResource;
import org.xmlvm.proc.XmlvmResourceProvider;

/**
 * Processes XMLVM documents and adds vtable information that is required by
 * some output processes, like the C backend.
 */
public class XmlvmJavaRuntimeAnnotationProcess extends XmlvmProcessImpl<XmlvmResourceProvider>
        implements XmlvmResourceProvider {
    private final static String TAG             = XmlvmJavaRuntimeAnnotationProcess.class
                                                        .getSimpleName();

    List<XmlvmResource>         result          = new ArrayList<XmlvmResource>();
    Map<String, String>         wasLoadedBy     = new HashMap<String, String>();
    BufferedWriter              statsWriter;
    private boolean             writeDepsToHtml = false;

    public XmlvmJavaRuntimeAnnotationProcess(Arguments arguments) {
        super(arguments);
        addAllXmlvmEmittingProcessesAsInput();
    }

    @Override
    public boolean process() {
        if (writeDepsToHtml) {
            try {
                statsWriter = new BufferedWriter(new FileWriter("stats.html"));
            } catch (IOException e) {
                e.printStackTrace();
                return false;
            }
        }

        List<XmlvmResourceProvider> preprocesses = preprocess();

        // We create a map that maps type name to the resource.
        Map<String, XmlvmResource> xmlvmResources = new HashMap<String, XmlvmResource>();
        for (XmlvmResourceProvider process : preprocesses) {
            List<XmlvmResource> resources = process.getXmlvmResources();
            for (XmlvmResource resource : resources) {
                xmlvmResources.put(resource.getName(), resource);
            }
        }

        if (!arguments.option_exp_no_deps()) {
            // Make sure we have all types that are referenced loaded.
            while (!loadReferencedTypes(xmlvmResources)) {
            }
        }

        Map<String, String> dependencies = new HashMap<String, String>();
        // Build a dependency graph.
        for (XmlvmResource resource : xmlvmResources.values()) {
            if (resource != null) {
                dependencies.put(resource.getName(), getDependencyList(resource.getName()));
            }
        }

        if (writeDepsToHtml) {
            for (String type : dependencies.keySet()) {
                try {
                    statsWriter.write("<br/><br/>Dependencies of: <b>" + type + "</b><br/>");
                    statsWriter.write(dependencies.get(type));
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
            try {
                statsWriter.close();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }

        result.addAll(xmlvmResources.values());

        // *************************************************************
        // * TODO(Arno): Do whatever you need with the XMLVM resources *
        // * to add the vtable information. *
        // *************************************************************

        return true;
    }

    private String getDependencyList(String type) {
        String dependency = wasLoadedBy.get(type);
        if (dependency == null) {
            return "";
        }
        return dependency + " <- " + getDependencyList(dependency);
    }

    @Override
    public List<XmlvmResource> getXmlvmResources() {
        return result;
    }

    @Override
    public List<OutputFile> getOutputFiles() {
        return null;
    }

    private boolean isBasicType(String typeName) {
        final Set<String> basicTypes = new HashSet<String>();
        basicTypes.add("");
        basicTypes.add("byte");
        basicTypes.add("char");
        basicTypes.add("int");
        basicTypes.add("float");
        basicTypes.add("long");
        basicTypes.add("double");
        basicTypes.add("boolean");
        basicTypes.add("void");
        basicTypes.add("null");
        return basicTypes.contains(typeName);
    }

    private void eliminateArrayTypes(Set<String> types) {
        Set<String> add = new HashSet<String>();
        Set<String> remove = new HashSet<String>();

        for (String typeName : types) {
            if (typeName.endsWith("[]")) {
                remove.add(typeName);
                add.add(typeName.substring(0, typeName.length() - 2));
            }
        }
        for (String typeName : remove) {
            types.remove(typeName);
        }
        for (String typeName : add) {
            types.add(typeName);
        }
    }

    /**
     * This method looks at the resources and their referenced types. It causes
     * the missing types to be loaded again looks at all referenced types. This
     * is done recursively until all types have been loaded.
     * 
     * @return whether all references are loaded and no further loading is
     *         necessary.
     */
    private boolean loadReferencedTypes(Map<String, XmlvmResource> resources) {
        Set<String> toLoad = new HashSet<String>();

        for (String typeName : resources.keySet()) {
            XmlvmResource resource = resources.get(typeName);
            if (resource == null) {
                continue;
            }
            Log.debug("***********************************");
            Log.debug("XMLVM Resource: " + resource.getName());
            Log.debug("Super-type    : " + resource.getSuperTypeName());
            Log.debug("Referenced types:");

            Set<String> referencedTypes = resource.getReferencedTypes();
            eliminateArrayTypes(referencedTypes);

            for (String referencedType : referencedTypes) {
                if (!isBasicType(referencedType)) {
                    if (resources.keySet().contains(referencedType)) {
                        Log.debug(" OK   -> " + referencedType);
                    } else {
                        wasLoadedBy.put(referencedType, resource.getName());
                        toLoad.add(referencedType);
                        Log.debug(" LOAD -> " + referencedType);
                    }
                }
            }
        }

        if (toLoad.isEmpty()) {
            return true;
        }

        // Load missing dependencies.
        for (String load : toLoad) {
            Log.debug(TAG, "Loading " + load);
            resources.put(load, JavaJDKLoader.load(load));
        }
        return false;
    }
}
