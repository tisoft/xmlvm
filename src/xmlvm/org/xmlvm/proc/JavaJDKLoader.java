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
import org.xmlvm.util.universalfile.UniversalFileCreator;

/**
 * This class is able to load classes from the Java JDK and runs them through
 * the XMLVM processing pipeline.
 */
public class JavaJDKLoader {
    private static final String        TAG                = JavaJDKLoader.class.getSimpleName();

    private static final String        ONEJAR_JDK_JAR     = "lib/openjdk6-build.jar";
    private static final String        FILESYSTEM_JDK_JAR = "lib/openjdk6-build.jar";

    private static final UniversalFile JDK                = UniversalFileCreator.createDirectory(
                                                                  ONEJAR_JDK_JAR,
                                                                  FILESYSTEM_JDK_JAR);

    private final Arguments            arguments;


    public JavaJDKLoader(Arguments arguments) {
        this.arguments = arguments;
    }

    /**
     * Loads the type with the given name from the JDK class library.
     * 
     * @param typeName
     *            can be e.g. "java.lang.Object"
     */
    public XmlvmResource load(String typeName) {
        return load(typeName, JDK);
    }

    private XmlvmResource load(String typeName, UniversalFile directory) {
        if (typeName.contains(".")) {
            String packageName = typeName.substring(0, typeName.indexOf("."));
            UniversalFile subDir = directory.getEntry(packageName);
            if (subDir != null && subDir.isDirectory()) {
                return load(typeName.substring(typeName.indexOf(".") + 1), subDir);
            } else {
                Log.error(TAG, "Unable to find sub-directory in jar: " + packageName
                        + "  (in directory: " + directory.getAbsolutePath() + ").");
                return null;
            }
        } else {
            UniversalFile classFile = directory.getEntry(typeName + ".class");
            if (classFile != null && classFile.isFile()) {

                // Success, we found the class file we were looking for. Let's
                // process it.
                return process(classFile);
            } else {
                Log.error(TAG, "Unable to find file in jar: " + typeName + "  (in directory: "
                        + directory.getAbsolutePath() + ").");
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
        while (!loadReferencedTypes(resources)) {
        }
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
        // TODO(Sascha): Parallelize.
        for (String load : toLoad) {
            Log.debug(TAG, "Loading " + load);
            resources.put(load, load(load));
        }
        return false;
    }

    private static boolean isBasicType(String typeName) {
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

    private static void eliminateArrayTypes(Set<String> types) {
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
}
