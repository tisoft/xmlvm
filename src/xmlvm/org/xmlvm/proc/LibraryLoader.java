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

package org.xmlvm.proc;

import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

import org.xmlvm.Log;
import org.xmlvm.main.Arguments;
import org.xmlvm.proc.in.InputProcess.ClassInputProcess;
import org.xmlvm.proc.in.file.ClassFile;
import org.xmlvm.proc.out.DEXmlvmOutputProcess;
import org.xmlvm.util.universalfile.UniversalFile;

/**
 * The LibraryLoader is responsible for loading classes from a set of given
 * libraries, that are not a part of the application to be translated. Such
 * classes include the JavaJDK or the AndroidSDK.
 */
public class LibraryLoader {
    private static final String       TAG  = LibraryLoader.class.getSimpleName();
    private static final Libraries    LIBS = new Libraries();

    private final Arguments           arguments;
    private final List<UniversalFile> libraries;
    private final static Map<String, XmlvmResource> cache = new HashMap<String, XmlvmResource>();


    public LibraryLoader(Arguments arguments) {
        this.arguments = arguments;
        this.libraries = LIBS.getLibraries();
    }

    /**
     * Loads the type with the given name from the JDK class library.
     * 
     * @param typeName
     *            can be e.g. "java.lang.Object"
     */
    public XmlvmResource load(String typeName) {
        if (cache.containsKey(typeName)) {
            return cache.get(typeName);
        }
        
        for (UniversalFile library : libraries) {
            XmlvmResource resource = load(typeName, library);
            if (resource != null) {
                cache.put(typeName, resource);
                return resource;
            }
        }
        Log.warn(TAG, "Could not find resource: " + typeName);
        return null;
    }

    private XmlvmResource load(String typeName, UniversalFile directory) {
        if (typeName.contains(".")) {
            String packageName = typeName.substring(0, typeName.indexOf("."));
            UniversalFile subDir;
            synchronized (this) {
                subDir = directory.getEntry(packageName);
            }
            if (subDir != null && subDir.isDirectory()) {
                return load(typeName.substring(typeName.indexOf(".") + 1), subDir);
            } else {
                return null;
            }
        } else {
            UniversalFile classFile;
            synchronized (this) {
                classFile = directory.getEntry(typeName + ".class");
            }
            if (classFile != null && classFile.isFile()) {

                // Success, we found the class file we were looking for. Let's
                // process it.
                return process(classFile);
            } else {
                return null;
            }
        }
    }

    private XmlvmResource process(UniversalFile file) {
        ClassFile classFile = new ClassFile(file);

        ClassInputProcess inputProcess = new ClassInputProcess(arguments, classFile);
        DEXmlvmOutputProcess outputProcess = new DEXmlvmOutputProcess(arguments);
        outputProcess.addPreprocess(inputProcess);

        outputProcess.process();
        List<XmlvmResource> resources = outputProcess.getXmlvmResources();

        if (resources.size() != 1) {
            Log.error(TAG, "Did not get exactly one resource: " + resources.size());
            return null;
        }
        return resources.get(0);
    }

    /**
     * This method looks at the resources and their referenced types. It causes
     * the missing types to be loaded from the JDK. This is done recursively
     * until all types have been loaded.
     * <p>
     * The loaded types will be added to the given resource map.
     * 
     * @param resources
     *            the resources from which on referenced types are looked up.
     *            Loaded references are also added here.
     * 
     * @return whether all references are loaded and no further loading is
     *         necessary.
     */
    public void loadAllReferencedTypes(Map<String, XmlvmResource> resources) {
        long startTime = System.currentTimeMillis();
        while (!loadReferencedTypes(resources)) {
        }
        long endTime = System.currentTimeMillis();
        Log.debug(TAG, "Processing took: " + (endTime - startTime) + " ms.");
    }

    private boolean loadReferencedTypes(Map<String, XmlvmResource> resources) {
        Set<String> toLoad = new HashSet<String>();

        for (String typeName : resources.keySet()) {
            XmlvmResource resource = resources.get(typeName);
            if (resource == null) {
                continue;
            }
            Log.debug("***********************************");
            Log.debug("XMLVM Resource: " + resource.getFullName());
            Log.debug("Super-type    : " + resource.getSuperTypeName());
            Log.debug("Referenced types:");

            Set<String> referencedTypes = resource.getReferencedTypes();
            eliminateArrayTypes(referencedTypes);

            for (String referencedType : referencedTypes) {
                if (!isBasicType(referencedType)) {
                    if (resources.keySet().contains(referencedType)) {
                        Log.debug(" OK   -> " + referencedType);
                    } else {
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
        String[] classesToLoad = toLoad.toArray(new String[0]);
        for (String classToLoad : classesToLoad) {
            resources.put(classToLoad, load(classToLoad));
        }
        return classesToLoad.length == 0;
    }

    private static boolean isBasicType(String typeName) {
        final Set<String> basicTypes = new HashSet<String>();
        basicTypes.add("");
        basicTypes.add("byte");
        basicTypes.add("char");
        basicTypes.add("short");
        basicTypes.add("int");
        basicTypes.add("float");
        basicTypes.add("long");
        basicTypes.add("double");
        basicTypes.add("boolean");
        basicTypes.add("void");
        basicTypes.add("null");
        return basicTypes.contains(typeName);
    }

    private static void eliminateArrayTypes(Set<String> types) {
        Set<String> add = new HashSet<String>();
        Set<String> remove = new HashSet<String>();

        for (String typeName : types) {
            if (typeName.endsWith("[]")) {
                remove.add(typeName);
                int p = typeName.indexOf('[');
                add.add(typeName.substring(0, p));
            }
        }
        for (String typeName : remove) {
            types.remove(typeName);
        }
        for (String typeName : add) {
            types.add(typeName);
        }
    }
}
