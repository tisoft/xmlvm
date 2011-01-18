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

package org.xmlvm.proc;

import java.io.File;
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
    private static final String TAG               = Libraries.class.getSimpleName();
    private static final String CACHE_PATH        = ".cache/";

    private UniversalFile       jdk;
    private UniversalFile       cocoaJava;
    private UniversalFile       xmlvmJavaUtils;

    /**
     * The libraries will be loaded on an as-needed basis.
     */
    private List<UniversalFile> libraries         = new ArrayList<UniversalFile>();

    /**
     * These are all the libraries that need to be loaded completely all the
     * time, because they might not be referenced directly by other Java
     * resources.
     */
    private List<UniversalFile> requiredLibraries = new ArrayList<UniversalFile>();


    public Libraries() {
        maybeInitialize();

        // Add all libraries. First entry has highest priority.
        libraries.add(jdk);
        libraries.add(cocoaJava);

        requiredLibraries.add(xmlvmJavaUtils);
    }

    /**
     * Returns the most recent lastModified date of all the libraries.
     */
    public long getLastModified() {
        long mostRecentLastModified = 0;

        for (UniversalFile library : libraries) {
            if (library.getLastModified() > mostRecentLastModified) {
                mostRecentLastModified = library.getLastModified();
            }
        }
        return mostRecentLastModified;
    }

    private synchronized void maybeInitialize() {
        if (jdk == null) {
            jdk = UniversalFileCreator.createDirectory("/lib/harmony6-build.jar",
                    "lib/harmony6-build.jar");
        }
        if (cocoaJava == null) {
            cocoaJava = UniversalFileCreator.createDirectory("/lib/cocoa-java.jar",
                    prepareTempJar("bin/org/xmlvm/iphone", "org/xmlvm/iphone/"));
        }
        if (xmlvmJavaUtils == null) {
            // TODO(Sascha): We might want to compile bin-util ourselves at some
            // point, as we are getting into some classpath issues in Eclipse
            // with this approach.
            xmlvmJavaUtils = UniversalFileCreator.createDirectory("/lib/xmlvm-util-java.jar",
                    "bin-util");
        }
    }

    /**
     * Returns the libraries that can be loaded as they are needed.
     */
    public List<UniversalFile> getLibraries() {
        return libraries;
    }

    /**
     * Required libraries that should be completely added to the input resources
     * set.
     */
    public List<UniversalFile> getRequredLibraries() {
        return requiredLibraries;
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

        UniversalFile source = UniversalFileCreator.createDirectory(null, path);
        if (source == null || !source.exists()) {
            Log.debug(TAG, "Couldn't find library path: " + path);
            return null;
        }
        long lastModified = lastModifiedRecursive(source);
        String tempFileName = createTempFileName(path, lastModified);

        // Check whether the temp jar already exists with the given time stamp.
        if (exists(tempFileName)) {
            return tempFileName;
        }

        Log.debug(TAG, "Preparing temp JAR for '" + path + "' at '" + tempFileName + "'.");
        source.archiveTo(tempFileName, pathPrefix);
        return tempFileName;
    }

    private long lastModifiedRecursive(UniversalFile directory) {
        long lastModified = 0;
        for (UniversalFile file : directory.listFilesRecursively()) {
            if (file.getLastModified() > lastModified) {
                lastModified = file.getLastModified();
            }
        }
        return lastModified;
    }

    private static String createTempFileName(String path, long lastModified) {
        return CACHE_PATH + path.replace("/", "_").replace("\\", "_") + "." + lastModified + ".jar";
    }

    private static boolean exists(String fileName) {
        return (new File(fileName)).exists();
    }
}
