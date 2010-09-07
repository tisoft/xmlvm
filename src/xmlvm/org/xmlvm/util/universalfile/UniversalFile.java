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

package org.xmlvm.util.universalfile;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import org.xmlvm.Log;

/**
 * The abstract universal file class. This class may represent an actual file
 * system file or directory or a file or JAR archive within a JAR resource.
 */
public abstract class UniversalFile {
    private static final String TAG = "UniversalFile";


    /**
     * Returns the name of this file. The returned value is analog to
     * {@link File#getName()}.
     */
    public String getName() {
        String path = getAbsolutePath();

        if (path.isEmpty()) {
            return "";
        }

        // Check for both Unix- and Window-style separators.
        int startAt = Math.max(path.lastIndexOf('/'), path.lastIndexOf('\\')) + 1;
        if (startAt <= 0) {
            return "";
        }
        return path.substring(startAt);
    }

    /**
     * Returns the absolute path of this {@link UniversalFile}
     */
    public abstract String getAbsolutePath();

    /**
     * Returns whether this file is a directory.
     */
    public abstract boolean isDirectory();

    /**
     * Returns whether this file is a file.
     */
    public abstract boolean isFile();

    /**
     * Returns whether this file exists.
     */
    public abstract boolean exists();

    /**
     * If this universal file is a directory, this returns the files contained
     * in it. This only lists file on one level, and can thus return files and
     * sub-directories.
     */
    public abstract UniversalFile[] listFiles();

    /**
     * If this file entry is a directory, this returns the files contained in
     * it, if they match the given filter.
     * 
     * @param filter
     *            a filter for selecting a particular set of files from the list
     */
    public UniversalFile[] listFiles(UniversalFileFilter filter) {
        UniversalFile[] allFiles = listFiles();
        List<UniversalFile> result = new ArrayList<UniversalFile>();

        for (UniversalFile file : allFiles) {
            if (filter.accept(file)) {
                result.add(file);
            }
        }

        return result.toArray(new UniversalFile[0]);
    }

    /**
     * If this universal file is is a directory, it returns a list of all files
     * contained in it and within all sub-directories. This method will not
     * return any directories.
     * 
     * @param filter
     *            a filter for selecting a particular set of files from the list
     */
    public UniversalFile[] listFilesRecursively(UniversalFileFilter filter) {
        if (!isDirectory()) {
            return new UniversalFile[0];
        }

        List<UniversalFile> result = new ArrayList<UniversalFile>();
        for (UniversalFile file : listFiles(filter)) {
            if (file.isFile()) {
                result.add(file);
            } else if (file.isDirectory()) {
                result.addAll(Arrays.asList(file.listFilesRecursively()));
            }
        }
        return result.toArray(new UniversalFile[0]);
    }

    /**
     * If this universal file is is a directory, it returns a list of all files
     * contained in it and within all sub-directories. This method will not
     * return any directories.
     */
    public UniversalFile[] listFilesRecursively() {
        if (!isDirectory()) {
            return new UniversalFile[0];
        }

        List<UniversalFile> result = new ArrayList<UniversalFile>();
        for (UniversalFile file : listFiles()) {
            if (file.isFile()) {
                result.add(file);
            } else if (file.isDirectory()) {
                result.addAll(Arrays.asList(file.listFilesRecursively()));
            }
        }
        return result.toArray(new UniversalFile[0]);
    }

    /**
     * If this universal file is a directory, this method returns a file or
     * directory contained in it that matches the given name. Else, returns
     * null.
     * 
     * @param name
     *            the name of the file or directory.
     * @return the matched universal file or <code>null</code>.
     */
    public UniversalFile getEntry(String name) {
        if (!isDirectory()) {
            return null;
        }
        UniversalFile[] allFiles = listFiles();

        for (UniversalFile file : allFiles) {
            if (file.getName().equals(name)) {
                return file;
            }
        }
        return null;
    }

    /**
     * Reads the file represented by this source and returns it as bytes.
     * <p>
     * This should only be called if {@link #isDirectory()} is {@code false}.
     * 
     * @return The contents of the file as bytes.
     */
    public abstract byte[] getFileAsBytes();

    /**
     * Reads the file represented by this resource and returns it as a String.
     * <p>
     * This should only be called if {@link #isDirectory()} is {@code false}.
     * 
     * @return The contents of the file as String.
     */
    public abstract String getFileAsString();

    /**
     * Saves this universal file to the given file system path (in this case the
     * path should contains the file name itself, too). If it represents a file,
     * it stores the file, if it is a directory, it stores multiple files
     * recursively, preserving the original file hierarchy.
     * 
     * @param path
     *            the destination to where this resource is copied to
     * @return Whether the operation was successful.
     */
    public boolean saveAs(String path) {
        if (isFile()) {
            return saveFileAs(path);
        } else if (isDirectory()) {
            return saveDirectoryAs(path);
        }
        return false;
    }
    
    /**
     * Stores this universal file to the given file system path (which includes
     * the file name itself).
     * 
     * @param path
     *            the destination to where this resource is copied to
     * @return Whether the operation was successful.
     */
    private boolean saveFileAs(String path) {
        try {
            // Make sure the destination directory exists.
            File parent = (new File(path)).getParentFile();
            if (!parent.exists() && !parent.mkdirs()) {
                return false;
            }
            FileOutputStream outputStream = new FileOutputStream(path);
            outputStream.write(getFileAsBytes());
            outputStream.close();
            return true;
        } catch (FileNotFoundException e) {
            Log.error(TAG, "Could not save file at: " + path + "(" + e.getMessage() + ")");
        } catch (IOException e) {
            Log.error(TAG, "Could not save file at: " + path + "(" + e.getMessage() + ")");
        }
        return false;
    }

    /**
     * If this universal file is a directory, this stores all the files
     * recursively in the given destination directory, preserving the directory
     * structure.
     * 
     * @param destination
     *            the directory where the files should be stored
     * @return Whether the operation was successful.
     */
    private boolean saveDirectoryAs(String destination) {
        File destinationFile = new File(destination);

        if (destinationFile.exists() && destinationFile.isFile()) {
            Log.error(TAG, "Could not copy files to " + destination + ". Destination is a file.");
            return false;
        }

        // Lets make sure we have a properly formatted path to work with.
        String destinationStr = destinationFile.getAbsolutePath();

        for (UniversalFile file : listFiles()) {
            if (file.isFile()) {
                file.saveAs(destinationStr + File.separatorChar + file.getName());
            } else if (file.isDirectory()) {
                String absolutePath = file.getAbsolutePath();
                String directoryName = absolutePath.substring(absolutePath
                        .lastIndexOf(File.separatorChar) + 1);
                file.saveAs(destinationStr + File.separatorChar + directoryName);
            }
        }
        return true;
    }

    /**
     * Returns the absolute path of this file.
     */
    @Override
    public String toString() {
        return getAbsolutePath();
    }
}