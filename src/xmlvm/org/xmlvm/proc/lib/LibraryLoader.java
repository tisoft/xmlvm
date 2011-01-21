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

package org.xmlvm.proc.lib;

import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

import org.xmlvm.Log;
import org.xmlvm.main.Arguments;
import org.xmlvm.proc.XmlvmResource;
import org.xmlvm.proc.in.InputProcess.ClassInputProcess;
import org.xmlvm.proc.in.file.ClassFile;
import org.xmlvm.proc.out.DEXmlvmOutputProcess;
import org.xmlvm.util.universalfile.FileSuffixFilter;
import org.xmlvm.util.universalfile.UniversalFile;
import org.xmlvm.util.universalfile.UniversalFileCreator;
import org.xmlvm.util.universalfile.UniversalFileFilter;

/**
 * The LibraryLoader is responsible for loading classes from a set of given
 * libraries, that are not a part of the application to be translated. Such
 * classes include the JavaJDK or the AndroidSDK.
 */
public class LibraryLoader {
    private static final String                     TAG                     = LibraryLoader.class
                                                                                    .getSimpleName();
    private static final String                     BIN_PROXIES_PATH        = "bin-proxies";
    private static final String                     BIN_PROXIES_ONEJAR_PATH = "/lib/proxies-java.jar";

    private static final Map<String, UniversalFile> proxies                 = initializeProxies();
    private static final long                       proxiesLastModified     = getLastModifiedProxy();

    private final Libraries                         libs;
    private final Arguments                         arguments;
    private final static Map<String, XmlvmResource> cache                   = new HashMap<String, XmlvmResource>();
    private List<UniversalFile>                     libraries               = null;


    /**
     * Initializes the LibraryLoader with the given arguments.
     */
    public LibraryLoader(Arguments arguments) {
        this.arguments = arguments;
        libs = new Libraries(arguments);
    }

    /**
     * Gets the last modified date of all libraries combined.
     */
    public long getLastModified() {
        long lastModified = libs.getLastModified();

        for (UniversalFile proxyFile : proxies.values()) {
            lastModified = Math.max(lastModified, proxyFile.getLastModified());
        }

        return lastModified;
    }

    /**
     * Loads the type with the given name from the JDK class library.
     * 
     * @param typeName
     *            can be e.g. "java.lang.Object"
     */
    public XmlvmResource load(String typeName) {
        // First check, whether there is a proxy type with this name.
        if (proxies.containsKey(typeName)) {
            return processClassFile(proxies.get(typeName), false);
        }

        if (libraries == null) {
            libraries = libs.getLibraryFiles();
        }

        for (UniversalFile library : libraries) {
            XmlvmResource resource = load(typeName, library);
            if (resource != null) {
                return resource;
            }
        }
        Log.debug(TAG, "Could not find resource: " + typeName);
        return null;
    }

    private XmlvmResource load(String typeName, UniversalFile directory) {
        if (typeName.contains(".")) {
            String packageName = typeName.substring(0, typeName.indexOf("."));
            UniversalFile subDir;
            subDir = directory.getEntry(packageName);
            if (subDir != null && subDir.isDirectory()) {
                return load(typeName.substring(typeName.indexOf(".") + 1), subDir);
            } else {
                return null;
            }
        } else {
            UniversalFile classFile;
            classFile = directory.getEntry(typeName + ".class");
            if (classFile != null && classFile.isFile()) {

                // Success, we found the class file we were looking for. Let's
                // process it.
                return processClassFile(classFile, true);
            } else {
                return null;
            }
        }
    }

    private XmlvmResource processClassFile(UniversalFile file, boolean enableRedList) {
        if (cache.containsKey(file.getAbsolutePath())) {
            return cache.get(file.getAbsolutePath());
        }

        ClassFile classFile = new ClassFile(file);

        ClassInputProcess inputProcess = new ClassInputProcess(arguments, classFile);
        DEXmlvmOutputProcess outputProcess = new DEXmlvmOutputProcess(arguments, enableRedList);
        outputProcess.addPreprocess(inputProcess);

        outputProcess.process();
        List<XmlvmResource> resources = outputProcess.getXmlvmResources();

        if (resources.size() != 1) {
            return null;
        }
        cache.put(file.getAbsolutePath(), resources.get(0));
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

    /**
     * This loads a list of libraries that will be required, but wouldn't be
     * picked up by reference loading.
     */
    public List<XmlvmResource> loadRequiredLibraries() {
        List<XmlvmResource> result = new ArrayList<XmlvmResource>();
        for (UniversalFile library : libs.getMonolithicLibraryFiles()) {
            for (UniversalFile file : library.listFilesRecursively(new FileSuffixFilter(".class"))) {
                XmlvmResource resource = processClassFile(file, false);
                if (resource != null) {
                    result.add(resource);
                }
            }
        }
        return result;
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

    private static Map<String, UniversalFile> initializeProxies() {
        Map<String, UniversalFile> result = new HashMap<String, UniversalFile>();
        UniversalFile basePath = UniversalFileCreator.createDirectory(BIN_PROXIES_ONEJAR_PATH,
                BIN_PROXIES_PATH);

        final String classEnding = ".class";
        UniversalFileFilter classFilter = new FileSuffixFilter(classEnding);
        for (UniversalFile proxyFile : basePath.listFilesRecursively(classFilter)) {
            String proxyFileName = proxyFile.getRelativePath(basePath.getAbsolutePath());
            String proxyTypeName = proxyFileName.substring(0,
                    proxyFileName.length() - (classEnding.length())).replace(File.separatorChar,
                    '.');
            result.put(proxyTypeName, proxyFile);
        }
        return result;
    }

    private static long getLastModifiedProxy() {
        long result = 0;
        for (UniversalFile proxyFile : proxies.values()) {
            long lastModified = proxyFile.getLastModified();
            if (lastModified > result) {
                result = lastModified;
            }
        }
        return result;
    }
}
