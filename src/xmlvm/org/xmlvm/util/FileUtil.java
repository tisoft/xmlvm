package org.xmlvm.util;

import org.xmlvm.Log;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
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
        final int READ_BUFFER = 4096;

        FileInputStream is;
        try {
            is = new FileInputStream(file);
            StringBuffer buffer = new StringBuffer();
            byte b[] = new byte[READ_BUFFER];
            int l = 0;
            if (is == null) {
                return "";
            } else {
                while ((l = is.read(b)) > 0) {
                    buffer.append(new String(b, 0, l));
                }
            }
            return buffer.toString();
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
        return "";
    }
}
