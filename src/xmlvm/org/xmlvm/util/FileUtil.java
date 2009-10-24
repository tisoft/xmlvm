package org.xmlvm.util;

import org.xmlvm.Log;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

/**
 * Various utilities around handling files.
 */
public class FileUtil {
    public static void main(String[] args) {
        System.out.println("Bin-Dir: " + getBinDirectory());
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
            InputStream in = new FileInputStream(source);
            OutputStream out = new FileOutputStream(destination);

            // Buffer for copying.
            byte[] buf = new byte[4096];
            int len;

            // Copy the bytes.
            while ((len = in.read(buf)) > 0) {
                out.write(buf, 0, len);
            }

            // Close the files.
            in.close();
            out.close();
        } catch (FileNotFoundException e) {
            e.printStackTrace();
            return false;
        } catch (IOException e) {
            e.printStackTrace();
            return false;
        }
        return true;
    }

    /**
     * Returns the path to the bin directory, where Eclipse typically stores
     * compiled class files.
     */
    public static String getBinDirectory() {
        return (new File("bin")).getAbsolutePath();
    }

    /**
     * Read the content of a file as String.
     * 
     * @param file
     *            the file to read.
     */
    public static String readFileAsString(File file) {
        try {
            FileInputStream is;
            return readStringFromStream(new FileInputStream(file));
        } catch (FileNotFoundException e) {
            Log.error("Could not read file: " + file.getAbsolutePath());
            return "";
        }
    }

    /**
     * Read the content of an {@link InputStream} as String.
     * 
     * @param stream
     *            the stream to read from
     * @return the content of the stream or an empty string, if an error occurs.
     */
    public static String readStringFromStream(InputStream stream) {
        final int READ_BUFFER = 4096;
        StringBuffer buffer = new StringBuffer();
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
     *            the file to write to
     * @param content
     *            the content to write to the file
     * @return whether the writing was successful
     */
    public static boolean writeStringToFile(File file, String content) {
        try {
            FileWriter stageAssistantWriter = new FileWriter(file);
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
     *            the directory to delete.
     * @return whether the process was successful.
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
