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

package org.xmlvm.util.universalfile;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.jar.JarInputStream;

import org.xmlvm.Log;

/**
 * When XMLVM is packaged, everything lives in a single jar, the One-JAR
 * <p>
 * For details, see {@link "http://one-jar.sourceforge.net"}
 * <p>
 * As XMLVM can also be used in a non-packaged mode, files and directories need
 * to be accessed in very different ways. The Universal File is a transparent
 * API on top of this.
 */
public class UniversalFileCreator {

    private static final String TAG = "UniversalFileCreator";


    private UniversalFileCreator() {
        // Do not allow instantiation.
    }

    /**
     * Creates a {@link UniversalFile} from a file system resource.
     * 
     * @param location
     *            the file system resource around which the
     *            {@link UniversalFile} should be wrapped
     * @return The {@link UniversalFile} instance for the given location.
     */
    public static UniversalFile createFile(File location) {
        if (location.isDirectory()) {
            return new UniversalFileFromFileSystemDirectory(location);
        } else if (location.isFile()) {
            return new UniversalFileFromFileSystemFile(location);
        } else {
            Log.error(TAG,
                    "Location is neither a File nor a directory: " + location.getAbsolutePath());
            return null;
        }
    }

    /**
     * Creates a {@link UniversalFile} from an {@link InputStream} resource.
     * 
     * @param name
     *            the absolute name of the resource
     * @param stream
     *            the stream containing the data of the resource
     * @param lastModified
     *            when this file was modified the last time
     * @return The {@link UniversalFile} instance.
     */
    public static UniversalFile createFile(String absoluteName, InputStream stream,
            long lastModified) {
        return new UniversalFileFromStreamResource(absoluteName, stream, lastModified);
    }

    /**
     * Creates a {@link UniversalFile} from memory.
     * 
     * @param absoluteName
     *            the absolute name of the resource
     * @param data
     *            the contents of the file
     * @param lastModified
     *            when this file was modified the last time
     * @return The {@link UniversalFile} instance.
     */
    public static UniversalFile createFile(String absoluteName, byte[] data, long lastModified) {
        return new UniversalFileFromMemory(absoluteName, data, lastModified);
    }

    /**
     * Creates a {@link UniversalFile} from memory.
     * 
     * @param absoluteName
     *            the absolute name of the resource
     * @param data
     *            the contents of the file
     * @return The {@link UniversalFile} instance.
     */
    public static UniversalFile createFile(String absoluteName, byte[] data) {
        return createFile(absoluteName, data, System.currentTimeMillis());
    }

    /**
     * Creates a {@link UniversalFile} instance for a single file.
     * 
     * @param oneJarResource
     *            the name of the resource of this file within the One-JAR
     * @param fileSystemLocation
     *            the name of this file on the file system
     * @return An instance representing this file.
     */
    public static UniversalFile createFile(String oneJarResource, String fileSystemLocation) {
        return create(oneJarResource, fileSystemLocation, false);
    }

    /**
     * Create a {@link UniversalFile} instance for a directory.
     * 
     * @param oneJarResourceJar
     *            this needs to be a jar resource within the One-JAR that holds
     *            the contents of the directory
     * @param fileSystemLocation
     *            the location of that directory on the file system. Can be a
     *            directory or a JAR file itself.
     * @return An instance representing this directory.
     */
    public static UniversalFile createDirectory(String oneJarResourceJar, String fileSystemLocation) {
        return create(oneJarResourceJar, fileSystemLocation, true);
    }

    /**
     * Create a {@link UniversalFile} instance and perform sanity checks.
     * 
     * @param oneJarResource
     *            the name of the resource of the file or directory inside the
     *            One-JAR
     * @param fileSystemLocation
     *            the name of the location on the file system.
     * @param isDirectory
     *            whether this is a directory. If false, this instance is a file
     * 
     * @return A valid instance or {@code null} if resource could not be found
     *         or sanity checks failed.
     */
    private static UniversalFile create(String oneJarResource, String fileSystemLocation,
            boolean isDirectory) {

        // Whether this resource is accessed from within the One-JAR.
        boolean isOneJarMode = false;

        boolean resourceFound = false;

        InputStream stream = null;
        if (oneJarResource != null) {
            stream = UniversalFileCreator.class.getResourceAsStream(oneJarResource);
        }
        File file = null;
        boolean fileSystemIsJar = false;
        if (fileSystemLocation != null) {
            file = new File(fileSystemLocation);
            fileSystemIsJar = file.isFile() && file.getName().toLowerCase().endsWith(".jar");
        }

        // Check whether the One-JAR resource exists.
        if (stream != null) {
            isOneJarMode = true;
            resourceFound = true;
        }

        // Make sure the file system resource exists.
        if (file != null && file.exists()) {
            isOneJarMode = false;
            resourceFound = true;
        }

        if (!resourceFound) {
            Log.debug(TAG, "Could not find either resource: " + "(One-JAR resource: "
                    + oneJarResource + " / file system resource: " + fileSystemLocation + ")");
            return null;
        }

        if (isOneJarMode && isDirectory) {
            // If this resource is taken from the One-JAR and represents a
            // directory, the resource must be a JAR archive.
            if (!oneJarResource.toLowerCase().endsWith(".jar")) {
                Log.error(TAG,
                        "For a directory, the One-JAR resource must be a jar archive, but is: "
                                + oneJarResource);
                // TODO(sascha): Validate JAR archive.
                return null;
            }
        }

        if (!isOneJarMode) {
            if (file.isDirectory() != isDirectory && fileSystemIsJar != isDirectory) {
                if (isDirectory && !fileSystemIsJar) {
                    Log.error(TAG, "Attempt to create directory, but file system resource is not"
                            + " a directory or JAR file: " + fileSystemLocation);
                } else {
                    Log.error(TAG, "Attempt to create file, but file system resource is not"
                            + " a file: " + fileSystemLocation);
                }
                return null;
            }
        }

        // Return the appropriate instance.
        if (isOneJarMode) {
            if (isDirectory) {
                try {
                    return new UniversalFileFromJarFile(oneJarResource, new JarInputStream(stream));
                } catch (IOException e) {
                    Log.error(TAG, "Could not create JarInputStream for One-JAR resource: "
                            + oneJarResource);
                    return null;
                }
            } else {
                // TODO(Sascha): This will effectively disable caching of such
                // resources. Find out how to find the true last-mofidied time
                // stamp of the resource.
                return new UniversalFileFromStreamResource(oneJarResource, stream,
                        System.currentTimeMillis());
            }
        } else {
            if (isDirectory) {
                if (fileSystemIsJar) {
                    try {
                        return new UniversalFileFromJarFile(fileSystemLocation, new JarInputStream(
                                new FileInputStream(fileSystemLocation)));
                    } catch (IOException e) {
                        Log.error(TAG, "Could not read: " + fileSystemLocation);
                    }
                    return null;
                } else {
                    return new UniversalFileFromFileSystemDirectory(file);
                }
            } else {
                return new UniversalFileFromFileSystemFile(file);
            }
        }
    }
}
