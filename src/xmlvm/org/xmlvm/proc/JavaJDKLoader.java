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
import org.xmlvm.util.universalfile.UniversalFileCreator;

/**
 * This class is able to load classes from the Java JDK and runs them through
 * the XMLVM processing pipeline.
 */
public class JavaJDKLoader {

    private class LoaderThread extends Thread {
        private final String[]           classesToLoad;
        private final int                start;
        private final int                end;
        final Map<String, XmlvmResource> loadedResources;


        public LoaderThread(String[] classesToLoad, int start, int end) {
            this.classesToLoad = classesToLoad;
            this.start = start;
            this.end = end;
            loadedResources = new HashMap<String, XmlvmResource>((end - start) + 1);
        }

        @Override
        public void run() {
            for (int i = start; i <= end; ++i) {
                loadedResources.put(classesToLoad[i], load(classesToLoad[i]));
            }
        }
    }


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
            UniversalFile subDir;
            synchronized (JDK) {
                subDir = directory.getEntry(packageName);
            }
            if (subDir != null && subDir.isDirectory()) {
                return load(typeName.substring(typeName.indexOf(".") + 1), subDir);
            } else {
                Log.error(TAG, "Unable to find sub-directory in jar: " + packageName
                        + "  (in directory: " + directory.getAbsolutePath() + ").");
                return null;
            }
        } else {
            UniversalFile classFile;
            synchronized (JDK) {
                classFile = directory.getEntry(typeName + ".class");
            }
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
        // int threadCount = Runtime.getRuntime().availableProcessors();
        int threadCount = 1;  // TODO(Sascha): Make UniveralFile API thread-safe.
        int itemsPerThread = (int) Math.ceil(classesToLoad.length / (float) threadCount);
        LoaderThread[] threads = new LoaderThread[threadCount];

        // Divide work and start the threads.
        for (int i = 0; i < threadCount; ++i) {
            int start = i * itemsPerThread;
            int end = Math.min(start + itemsPerThread - 1, classesToLoad.length - 1);
            if (end >= start) {
                threads[i] = new LoaderThread(classesToLoad, start, end);
                threads[i].start();
            }
        }

        // Wait for threads to finish and add their results;
        for (int i = 0; i < threadCount; ++i) {
            try {
                if (threads[i] != null) {
                    threads[i].join();
                    resources.putAll(threads[i].loadedResources);
                }
            } catch (InterruptedException e) {
                e.printStackTrace();
                return false;
            }
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
