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

import java.io.BufferedInputStream;
import java.io.BufferedReader;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.UnsupportedEncodingException;
import java.io.Writer;

import org.xmlvm.Log;
import org.xmlvm.util.universalfile.UniversalFile;

/**
 * Various utilities around handling files.
 */
public class FileUtil {
    private static final String TAG = "FileUtil";

    /**
     * Returns whether the file or directory with the given name exists.
     * <p>
     * This implementation of fileExists searches inside the OneJar as well as
     * on the file system and operates therefore transparent.
     * 
     * @param name
     *            The name of the file or directory to check
     * @return Whether the file or directory exists.
     */
    public static boolean fileExists(String name) {
        return (FileUtil.class.getResourceAsStream(name) != null || (new File(name)).exists());
    }

    /**
     * Copies the contents of a directory. This operation is not recursive.
     * 
     * @param source
     *            The source directory.
     * @param destination
     *            The destination directory.
     * 
     * @return Whether the operation was successful.
     */
    public static boolean copyDirectory(String source, String destination) {
        File sourceFile = new File(source);
        File destinationFile = new File(destination);

        if (!destinationFile.exists()) {
            if (!destinationFile.mkdirs()) {
                Log.error("copyDirectory failed: Could to make directory: " + destination);
                return false;
            }
        }
        return copyFiles(sourceFile.listFiles(), destination);
    }

    /**
     * Copies the given source directory to the given destination.
     * 
     * @param source
     *            the source directory to copy from
     * @param destination
     *            where to copy the files to
     * @param recursive
     *            whether the files should be copied recursively
     * @return Whether the operation was successful.
     */
    public static boolean copyDirectory(UniversalFile source, String destination, boolean recursive) {
        if (!source.isDirectory()) {
            Log.error(TAG, "CopyDirectory: Source is not a directory: " + source);
            return false;
        }

        if (destination.endsWith(File.separator)) {
            destination = destination.substring(0, destination.length() - 1);
        }

        for (UniversalFile file : source.listFiles()) {
            if (file.isDirectory() && recursive) {
                String subPath = destination
                        + file.getAbsolutePath().substring(source.getAbsolutePath().length());
                copyDirectory(file, subPath, recursive);
            } else if (file.isFile()) {
                file.saveFileAs(destination + File.separator + file.getName());
            }
        }
        return true;
    }

    /**
     * Copies the files to the given destination directory.
     * 
     * @param files
     *            The files to be copied.
     * @param destination
     *            The destination path to where the files should be copied to.
     * @return Whether the operation was successful.
     */
    public static boolean copyFiles(File[] files, String destination) {
        File destinationFile = new File(destination);

        if (!destinationFile.exists()) {
            if (!destinationFile.mkdirs()) {
                Log.error("copyDirectory failed: Could to make directory: " + destination);
                return false;
            }
        }

        // Copy the files, ignore directories.
        for (File file : files) {
            if (!file.isDirectory()) {
                if (!copyFile(file, new File(destinationFile, file.getName()))) {
                    Log.error("Could not copy file: " + file.getAbsolutePath() + " to "
                            + destinationFile.getAbsolutePath());
                } else {
                    Log.debug("Copy file " + file.getAbsolutePath() + " to "
                            + destinationFile.getAbsolutePath());
                }
            }
        }
        return true;
    }

    /**
     * Copies a single file from source to destination.
     * 
     * @param source
     *            The source file to be copied.
     * @param destination
     *            The destination of the copied file.
     * @return Whether the operation was successful.
     */
    public static boolean copyFile(File source, File destination) {
        try {
            if (source.equals(destination)) {
                Log.debug("Ignoring copying of file " + source.getPath()
                        + ": destination is same as source.");
                return true;
            }
            Log.debug("Copying " + source.getPath() + " to " + destination.getPath());
            return copyStreams(new FileInputStream(source), new FileOutputStream(destination));
        } catch (FileNotFoundException ex) {
        }
        return false;
    }

    /**
     * The actual procedure of copying Streams (like binary files)
     * 
     * @param in
     *            The stream to read data from
     * @param out
     *            The stream to write data to
     * @return true, if everything is ok
     */
    public static boolean copyStreams(InputStream in, OutputStream out) {
        if (in == null || out == null)
            return false;
        try {
            byte[] buf = new byte[4096];
            int len;
            while ((len = in.read(buf)) > 0)
                out.write(buf, 0, len);
            in.close();
            out.close();
            return true;
        } catch (IOException e) {
            try {
                in.close();
            } catch (IOException ex1) {
            }
            try {
                out.close();
            } catch (IOException ex1) {
            }
            e.printStackTrace();
        }
        return false;
    }

    /**
     * The actual procedure of copying writers (like text files)
     * 
     * @param in
     *            The stream to read data from
     * @param out
     *            The stream to write data to
     * @return true, if everything is ok
     */
    public static boolean copyReaders(BufferedReader in, Writer out) {
        if (in == null || out == null)
            return false;
        try {
            String line;
            while ((line = in.readLine()) != null)
                out.append(line).append('\n');
            in.close();
            out.close();
            return true;
        } catch (IOException e) {
            try {
                in.close();
            } catch (IOException ex1) {
            }
            try {
                out.close();
            } catch (IOException ex1) {
            }
            e.printStackTrace();
        }
        return false;
    }

    /**
     * Search for a resource (namely a file) either inside a JAR file or in a
     * local file. First try to find the requested filename inside the JAR. If
     * it is not found, then it tries to locate this resource on the file. In
     * any case it returns a BufferedReader of this resource.
     * 
     * This method is useful to read text-line resources either from a JAR file
     * or a local file.
     * 
     * @param jarResource
     *            The name of the resource inside the JAR file.
     * @param fileResource
     *            The filename of the resource as a local file.
     * @return the BufferedReader of this resource, or null if resource was not
     *         found in either places.
     */
    public static BufferedReader findReaderResource(String jarResource, String fileResource) {
        BufferedReader in = null;
        try {
            if (JarUtil.resourceExists(jarResource))
                in = JarUtil.getFile(jarResource);
            else
                in = new BufferedReader(new InputStreamReader(new FileInputStream(fileResource), "UTF-8"));
        } catch (FileNotFoundException ex) {
        } catch (UnsupportedEncodingException ex) {
        }
        return in;
    }

    /**
     * Search for a resource (namely a file) either inside a JAR file or in a
     * local file. First try to find the requested filename inside the JAR. If
     * it is not found, then it tries to locate this resource on the file. In
     * any case it returns a BufferedInputStream of this resource.
     * 
     * This method is useful to read binary resources (e.g. images) either from
     * a JAR file or a local file.
     * 
     * 
     * @param jarResource
     *            The name of the resource inside the JAR file.
     * @param fileResource
     *            The filename of the resource as a local file.
     * @return the BufferedInputStream of this resource, or null if resource was
     *         not found in either places.
     */
    public static BufferedInputStream findStreamResource(String jarResource, String fileResource) {
        BufferedInputStream in = null;
        try {
            if (JarUtil.resourceExists(jarResource))
                in = JarUtil.getStream(jarResource);
            else
                in = new BufferedInputStream(new FileInputStream(fileResource));
        } catch (FileNotFoundException ex) {
        }
        return in;
    }

    /**
     * Returns the path to the bin directory, where Eclipse typically stores
     * compiled class files.
     */
    public static String getBinDirectory() {
        return (new File("bin")).getAbsolutePath();
    }

    /**
     * Read the content of a file as bytes.
     * 
     * @param file
     *            the file to read
     * @return The content of the file.
     */
    public static byte[] readFileAsBytes(File file) {
        try {
            return readBytesFromStream(new FileInputStream(file));
        } catch (FileNotFoundException e) {
            Log.error("Could not read file: " + file.getAbsolutePath());
            return new byte[0];
        }
    }

    /**
     * Read the content of a file as String.
     * 
     * @param file
     *            the file to read.
     */
    public static String readFileAsString(File file) {
        try {
            return readStringFromStream(new FileInputStream(file));
        } catch (FileNotFoundException e) {
            Log.error("Could not read file: " + file.getAbsolutePath());
            return "";
        }
    }

    /**
     * Reads a file and returns it contents as a byte array.
     * 
     * @param file
     *            The file to read.
     */
    public static byte[] readBytesFromStream(InputStream stream) {
        if (stream == null) {
            return new byte[0];
        }

        ByteArrayOutputStream byteArrayStream = new ByteArrayOutputStream();

        final int READ_BUFFER = 4096;
        byte b[] = new byte[READ_BUFFER];
        int l = 0;
        try {
            while ((l = stream.read(b)) > 0) {
                byteArrayStream.write(b, 0, l);
            }
        } catch (IOException ex) {
            ex.printStackTrace();
            return new byte[0];
        }

        return byteArrayStream.toByteArray();
    }

    /**
     * Read the content of an {@link InputStream} as String.
     * 
     * @param stream
     *            The stream to read from.
     * @return The content of the stream or an empty string, if an error occurs.
     */
    public static String readStringFromStream(InputStream stream) {
        final int READ_BUFFER = 4096;
        StringBuilder buffer = new StringBuilder();
        byte b[] = new byte[READ_BUFFER];
        int l = 0;
        try {
            if (stream == null) {
                return "";
            } else {
                while ((l = stream.read(b)) > 0) {
                    buffer.append(new String(b, 0, l));
                }
            }
        } catch (IOException ex) {
            ex.printStackTrace();
            return "";
        }
        return buffer.toString();
    }

    /**
     * Writes a string to a file.
     * 
     * @param file
     *            The file to write to.
     * @param content
     *            The content to write to the file.
     * @return Whether the writing was successful.
     */
    public static boolean writeStringToFile(File file, String content) {
        try {
            OutputStreamWriter stageAssistantWriter = new OutputStreamWriter(new FileOutputStream(file), "UTF-8");
            stageAssistantWriter.write(content);
            stageAssistantWriter.close();
        } catch (IOException e) {
            Log.error("Could not write to " + file.getAbsolutePath());
            return false;
        }
        return true;
    }

    /**
     * Recursively deletes the given directory.
     * 
     * @param path
     *            The directory to delete.
     * @return Whether the process was successful.
     */
    public static boolean deleteDirectory(File path) {
        if (path.exists()) {
            File[] files = path.listFiles();
            for (int i = 0; i < files.length; i++) {
                if (files[i].isDirectory()) {
                    deleteDirectory(files[i]);
                } else {
                    files[i].delete();
                }
            }
        }
        return (path.delete());
    }
}
