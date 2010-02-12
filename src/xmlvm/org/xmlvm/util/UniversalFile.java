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

package org.xmlvm.util;

import org.xmlvm.Log;

import java.io.BufferedInputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.jar.JarInputStream;

/**
 * When XMLVM is packaged, everything lives in a single jar, the One-JAR
 * <p>
 * For details, see {@link http://one-jar.sourceforge.net}
 * <p>
 * As XMLVM can also be used in a non-packaged mode, files and directories need
 * to be accessed in very different ways. The Universal File is a transparent
 * API on top of this.
 */
public class UniversalFile {

    private static final String TAG          = "UniversalFile";

    /** The name of the resource of the file or directory inside the One-JAR. */
    private String              oneJarResource;

    /** The name of the location on the file system. */
    private String              fileSystemLocation;

    /** Whether this is a directory. If false, this instance is a file. */
    private boolean             isDirectory  = false;

    /** Whether this resource is accessed from within the One-JAR. */
    private boolean             isOneJarMode = false;

    /** Is not-null, if this instance represents a file system resource. */
    private File                fileSystemResource;

    /** Is not-null, if this instance represents a One-JAR resource. */
    private BufferedInputStream jarResourceStream;

    /** Is not-null, if this instance represents a directory One-JAR resource. */
    private JarInputStream      jarInputStream;


    private UniversalFile() {
        // Do not allow instantiation.
    }

    /**
     * Creates a {@link UniversalFile} instance for a single file.
     * 
     * @param oneJarResource
     *            the name of the resource of this file within the One-JAR
     * @param fileSystemLocation
     *            the name of this file on the filesystem
     * @return An instance representing this file.
     */
    public static UniversalFile createFile(String oneJarResource, String fileSystemLocation) {
        return create(oneJarResource, fileSystemLocation, true);
    }

    /**
     * Create a {@link UniversalFile} instance for a directory.
     * 
     * @param oneJarResourceJar
     *            this needs to be a jar resource within the One-JAR that holds
     *            the contents of the directory
     * @param fileSystemLocation
     *            the location of that directory on the filesystem
     * @return An instance representing this directory.
     */
    public static UniversalFile createDirectory(String oneJarResourceJar, String fileSystemLocation) {
        return create(oneJarResourceJar, fileSystemLocation, true);
    }

    /**
     * Create a {@link UniversalFile} instance and perform sanity checks.
     * 
     * @return A valid instance or {@code null} if sanity checks failed.
     */
    private static UniversalFile create(String oneJarResource, String fileSystemLocation,
            boolean isDirectory) {
        UniversalFile result = new UniversalFile();
        result.oneJarResource = oneJarResource;
        result.fileSystemLocation = fileSystemLocation;
        result.isDirectory = false;
        if (!result.loadAndPerformSanityChecks()) {
            Log.error(TAG, "Could not create Universal file. See errors above.");
            return null;
        }
        return result;
    }

    /**
     * Copies this universal file to the given file system path.
     * 
     * @param path
     *            the destination to where this file is copied to
     * @return Whether the operation was successful.
     */
    public boolean copyTo(String path) {
        return true;
    }

    /**
     * Returns whether this instance represents a directory. If {@code false},
     * it represents a file.
     */
    public boolean isDirectory() {
        return isDirectory;
    }

    /**
     * Loads the given resource and performs sanity checks.
     * 
     * @return Returns whether this file is sane. This means, that the resources
     *         given exist and make sense.
     */
    private boolean loadAndPerformSanityChecks() {
        boolean resourceFound = false;

        InputStream stream = UniversalFile.class.getResourceAsStream(oneJarResource);
        File file = new File(fileSystemLocation);

        // Check whether the One-JAR resource exists.
        if (stream != null) {
            jarResourceStream = new BufferedInputStream(stream);
            isOneJarMode = true;
            resourceFound = true;
        }

        // Make sure the file system resource exists.
        if (file.exists()) {
            isOneJarMode = false;
            resourceFound = true;
        }

        if (!resourceFound) {
            Log.error(TAG, "Could not find either resource: " + "(One-JAR resource: "
                    + oneJarResource + " / file system resource: " + fileSystemLocation + ")");
            return false;
        }

        if (isOneJarMode && isDirectory()) {
            // If this resource is taken from the One-JAR and represents a
            // directory, the resource must be a JAR archive.
            if (!oneJarResource.toLowerCase().endsWith(".jar")) {
                Log.error(TAG,
                        "For a directory, the One-JAR resource must be a jar archive, but is: "
                                + oneJarResource);
                // TODO(sascha): Validate JAR archive.
                return false;
            }
        }

        if (!isOneJarMode) {
            if (file.isDirectory() != isDirectory()) {
                if (isDirectory()) {
                    Log.error(TAG, "Attempt to create directory, but file system resource is not"
                            + " a directory: " + fileSystemLocation);
                } else {
                    Log.error(TAG, "Attempt to create file, but file system resource is not"
                            + " a file: " + fileSystemLocation);
                }
                return false;
            }
        }

        // Set the appropriate members.
        if (isOneJarMode) {
            if (isDirectory()) {
                try {
                    jarInputStream = new JarInputStream(stream);
                } catch (IOException e) {
                    Log.error(TAG, "Could not create JarInputStream for One-JAR resource: "
                            + oneJarResource);
                    return false;
                }
            } else {
                jarResourceStream = new BufferedInputStream(stream);
            }
        } else {
            fileSystemResource = file;
        }

        return true;
    }

}
