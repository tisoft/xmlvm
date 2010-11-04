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

import java.util.ArrayList;
import java.util.List;

import org.xmlvm.Log;
import org.xmlvm.util.universalfile.UniversalFile;
import org.xmlvm.util.universalfile.UniversalFileCreator;

/**
 * This class contains all the libraries from which classes can be loaded during
 * processing. This classes also ensures that the given library archives are up
 * to date.
 */
public class Libraries {
    private static final String  TAG        = Libraries.class.getSimpleName();
    private static final String  CACHE_PATH = ".cache/";

    private static UniversalFile jdk;
    private static UniversalFile cocoaJava;

    private List<UniversalFile>  libraries  = new ArrayList<UniversalFile>();


    public Libraries() {
        maybeInitialize();

        // Add all libraries. First entry has highest priority.
        libraries.add(jdk);
        libraries.add(cocoaJava);
    }

    private void maybeInitialize() {
        if (jdk == null) {
            jdk = UniversalFileCreator.createDirectory("/lib/openjdk6-build.jar",
                    "lib/openjdk6-build.jar");
        }
        if (cocoaJava == null) {
            cocoaJava = UniversalFileCreator.createDirectory("/lib/cocoa-java.jar", prepareTempJar(
                    "bin/org/xmlvm/iphone", "org/xmlvm/iphone/"));
        }
    }

    public List<UniversalFile> getLibraries() {
        return libraries;
    }

    /**
     * In order to easily load libraries that are already compiled, we put them
     * in a JAR file. This method makes sure that the files in the given path
     * are in the given destination JAR file.
     * <p>
     * TODO: The JAR file Should be stored alongside with timestamp information
     * so that the JAR file will be re-created, if one of the source files
     * changes. Right now it is re-created every time.
     * 
     * @param path
     *            the directory that contains the resources to be archived
     * @param pathPrefix
     *            the path inside the archive, where the files are put into
     * @return The path to the JAR file or null, if and error occurred or the
     *         path was not found.
     */
    private String prepareTempJar(String path, String pathPrefix) {
        String tempFileName = createTempFileName(path);
        Log.debug(TAG, "Preparing temp JAR for '" + path + "' at '" + tempFileName + "'.");

        UniversalFile source = UniversalFileCreator.createDirectory(null, path);
        if (source == null || !source.exists()) {
            Log.debug(TAG, "Couldn't find library path: " + path);
            return null;
        }
        source.archiveTo(tempFileName, pathPrefix);
        return tempFileName;
    }

    private static String createTempFileName(String path) {
        return CACHE_PATH + path.replace("/", "_").replace("\\", "_") + ".jar";
    }
}
