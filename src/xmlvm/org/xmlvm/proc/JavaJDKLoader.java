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

import java.util.List;

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

    /**
     * Loads the type with the given name from the JDK class library.
     * 
     * @param typeName
     *            can be e.g. "java.lang.Object"
     */
    public static XmlvmResource load(String typeName) {
        return load(typeName, JDK);
    }

    private static XmlvmResource load(String typeName, UniversalFile directory) {
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

    private static XmlvmResource process(UniversalFile file) {
        ClassFile classFile = new ClassFile(file);

        Arguments arguments = new Arguments(new String[] { "--in=foo" });
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
}
