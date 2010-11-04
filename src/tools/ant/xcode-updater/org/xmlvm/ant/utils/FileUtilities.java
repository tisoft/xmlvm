/*
 * Copyright (c) 2004-2008 XMLVM --- An XML-based Programming Language
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

package org.xmlvm.ant.utils;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileFilter;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.StringTokenizer;
import org.apache.tools.ant.BuildException;

/**
 * Various methods, to help working with files.
 * @author teras
 */
public class FileUtilities {

    /**
     * where xcode source file is located
     */
    public static final String SRCLOC = "build" + File.separator + "xcode" + File.separator + "src" + File.separator;

    /**
     * Root location of source files
     * @param project Location of the project
     * @return Source root location
     */
    public static String coreDir(String project) {
        return project + File.separator + SRCLOC;
    }

    /**
     * Get the location of the application directory
     * @param project Location of the project
     * @return Application directory location
     */
    public static String appDir(String project) {
        return coreDir(project) + "app";
    }

    /**
     * Get the location of the source code of the libraries
     * @param project Location of the project
     * @return Libraries directory location
     */
    public static String compDir(String project) {
        return coreDir(project) + "lib";
    }

    /**
     * Get the location of the iphone directory
     * @param project Location of the project
     * @return iPhone directory location
     */
    public static String iphoneDir(String project) {
        return compDir(project) + File.separator + "iphone";
    }

    /**
     * Get the location of the android directory
     * @param project Location of the project
     * @return Android directory location
     */
    public static String androidDir(String project) {
        return compDir(project) + File.separator + "android";
    }

    /**
     * Get the output directory of the trimmed project
     * @param project Location of the project
     * @return Trimmed project directory location
     */
    public static String trimDir(String project) {
        return coreDir(project) + "trim";
    }

    /**
     * Locate a source file, either in application source code, iphone or android
     * directory
     * @param path the path to search for
     * @param filename the name of the file to search for
     * @return a File object of this filename
     */
    public static File locateSrcFile(String path, String filename) {
        File absfile = new File(path, filename);
        if (absfile.exists()) {
            return absfile;
        }
        File app = new File(appDir(path) + File.separator + filename);
        if (app.exists()) {
            return app;
        }
        File iphone = new File(iphoneDir(path) + File.separator + filename);
        if (iphone.exists()) {
            return iphone;
        }
        File android = new File(androidDir(path) + File.separator + filename);
        if (android.exists()) {
            return android;
        }
        Log.warn("File not located in rich path " + path + ": " + filename);
        return null;
    }

    /**
     * Get a list of all source files (i.e. files ending in .m, .c., .cpp, .c++ and .h
     * @param path Path to search for
     * @return list of source files
     * @throws FileNotFoundException if path is not found
     */
    public static File[] listSourceFiles(String path) throws FileNotFoundException {
        File dir = new File(path);
        if (!dir.exists()) {
            throw new FileNotFoundException("Directory " + dir.getPath() + " does not exist.");
        }
        if (!dir.isDirectory()) {
            throw new FileNotFoundException("File " + dir.getPath() + " is not a directory.");
        }

        File[] list = dir.listFiles(new FileFilter() {

            public boolean accept(File file) {
                if (!file.isFile()) {
                    return false;
                }
                String name = file.getName().toLowerCase();
                if (name.endsWith(".h")
                        || name.endsWith(".m")
                        || name.endsWith(".c")
                        || name.endsWith(".cpp")
                        || name.endsWith(".mm")
                        || name.endsWith(".c++")) {
                    return true;
                }
                return false;
            }
        });
        return list;
    }

    /**
     * Get a list of all source files, and issue a warning insted of throwing exception
     * @param path Path to search for
     * @return list of source files
     */
    public static File[] listSourceFilesWithWarning(String path) {
        try {
            return listSourceFiles(path);
        } catch (FileNotFoundException ex) {
            Log.error(ex.getMessage());
        }
        return new File[0];
    }

    /**
     * Read a file and parse it, based on the given closure
     * @param path the file directory
     * @param filename the name of the file
     * @param cl the closure to use
     * @return true if everything was successful, false if an error occured
     */
    public static boolean parseFile(String path, String filename, Closure cl) {
        boolean status = false;
        BufferedReader in = null;
        try {
            File f = FileUtilities.locateSrcFile(path, filename);
            if (f != null) {
                in = new BufferedReader(new FileReader(f));
                String line;
                while ((line = in.readLine()) != null) {
                    cl.exec(line);
                }
                status = true;
            }
        } catch (IOException ex) {
            Log.error(ex.getMessage());
        } finally {
            try {
                if (in != null) {
                    in.close();
                }
            } catch (IOException ex) {
            }
        }
        return status;
    }

    /**
     * Read a file in memory
     * @param path the file directory
     * @param filename the name of the file
     * @return The contents of this file
     */
    public static String readFile(String path, String filename) {
        final StringBuffer data = new StringBuffer();

        if (!parseFile(path, filename, new Closure<String>() {

            public void exec(String line) {
                data.append(line).append('\n');
            }
        })) {
            return null;
        }
        return data.toString();
    }

    /**
     * Output a String to a file
     * @param outfile the file name and location
     * @param data String containing the date to save 
     * @return true, if everything was successful, false if an error occurred
     */
    public static boolean writeFile(String outfile, String data) {
        boolean status = false;
        OutputStreamWriter out = null;
        try {
            out = new OutputStreamWriter(new FileOutputStream(outfile), "UTF-8");
            out.append(data);
            status = true;
        } catch (IOException ex) {
            Log.error(ex.getMessage());
        } finally {
            try {
                if (out != null) {
                    out.close();
                }
            } catch (IOException ex) {
            }
        }
        return status;
    }

    /**
     * Write the Xcode project file with the new file list, and overwrite the old one
     * @param projecthome The home directory of the project
     * @param projectname The name of the project
     * @param data The project date
     * @param replace the replacement list to use
     * @return true, if everything was successful, false if an error occurred
     */
    public static boolean writeProjectFile(String projecthome, String projectname, String data, ReplacementList replace) {
        return writeFile(getProjectFile(projecthome).getPath(), replace.actOnData(data));
    }

    /**
     * Get the name of the project, based on the project directory. 
     * @param projecthome The home directory of the project
     * @return The project name
     */
    public static String getProjectName(String projecthome) {
        final int SUFFIXSIZE = 10;
        String name = getProjectDir(projecthome).getName();
        return name.substring(0, name.length() - SUFFIXSIZE);
    }

    /**
     * Get the location of the project, based on the given directory. It
     * searches for the *.xcodeproj directory in the current directory, in
     * directory "dist" and in directory "build".
     * If it is not found a RuntimeException is thrown
     * @param projecthome The home directory of the project
     * @return The project directory
     */
    public static File getProjectDir(String projecthome) {
        File projdir;
        projdir = getProjectDirImpl(projecthome + File.separator + "dist");
        if (projdir == null)
            projdir = getProjectDirImpl(projecthome);
        if (projdir == null)
            projdir = getProjectDirImpl(projecthome + File.separator + "build");
        if (projdir == null)
            throw new RuntimeException("Unable to find Xcode project under directory " + projecthome);
        return projdir;
    }

    public static File getProjectFile(String projecthome) {
        return new File(getProjectDir(projecthome), "project.pbxproj");
    }

    /* Actual implementation of searching for project name under a specific directory */
    private static File getProjectDirImpl(String dirname) {
        File projecthomefile = new File(dirname);
        File[] list = projecthomefile.listFiles();
        if (list != null)
            for (int i = 0; i < list.length; i++) {
                String filename = list[i].getName();
                if (list[i].isDirectory() && filename.endsWith(".xcodeproj"))
                    return list[i];
            }
        return null;
    }

    /**
     * Get a list of defined project libraries
     * @param projecthome The home directory of the project
     * @param projectname The name of the project
     * @return A list of libraries required for this project
     */
    public static HashSet<String> getProjectLibs(String projecthome, String projectname) {
        File oldproj = getProjectFile(projecthome);
        if (!oldproj.exists()) {
            throw new RuntimeException("Unable to find old project " + projectname + " under directory " + projecthome);
        }

        HashSet<String> results = new HashSet<String>();
        String content = readFile(oldproj.getParent(), oldproj.getName());
        StringTokenizer tok = new StringTokenizer(content, "\n");
        while (tok.hasMoreTokens()) {
            String line = tok.nextToken();
            if (line.contains(" in Frameworks") && line.contains("PBXBuildFile")) {
                StringTokenizer il = new StringTokenizer(line, "/*");
                if (il.countTokens() >= 2) {
                    String part = il.nextToken();
                    part = il.nextToken().trim();
                    part = part.substring(0, part.length() - " in Frameworks".length());
                    results.add(part);
                }
            }
        }
        return results;
    }

    /**
     *  Copy a list files based on the project diretory
     * @param projecthome The home directory of the project
     * @param list List of files to copy
     * @param replace the replacement list to use
     * @return true, if everything was successful, false if an error occured
     */
    public static boolean transferFiles(String projecthome, ArrayList<String> list, ReplacementList replace) {
        boolean status = true;
        String outdir = trimDir(projecthome) + File.separator;
        if (!new File(outdir).mkdirs()) {
            Log.error("Unable to create directory " + outdir);
            return false;
        }
        for (String filename : list) {
            String data = replace.actOnData(readFile(projecthome, filename));
            filename = replace.actOnData(filename);
            Log.debug("Copying to file " + filename);
            if (!writeFile(outdir + filename, data)) {
                Log.error("Unable to copy file " + filename);
                status = false;
            }
        }
        return status;
    }

    /**
     * Recursively remove a directory or file
     * @param current the directory or file to remove
     * @return true, if everything was successful, false if an error occured
     */
    public static boolean removeDirectory(File current) {
        boolean status = true;
        if (current.isDirectory()) {
            File[] list = current.listFiles();
            for (int i = 0; i < list.length; i++) {
                if (!removeDirectory(list[i])) {
                    status = false;
                    Log.error("Unable to delete " + list[i].getPath());
                }
            }
        }
        if (!current.delete()) {
            status = false;
        }
        return status;
    }

    /**
     * Copy a file or a directory to a specified directory
     * @param source source file or directory
     * @param dest destination file or directory
     * @throws BuildException  this exception is thrown when copying can not be performed
     */
    public static void copy(File source, File dest) throws BuildException {
        dest = new File(dest, source.getName());
        if (source.isFile()) {
            // Copy file
            byte[] buffer = new byte[4096];
            FileInputStream fin = null;
            FileOutputStream fout = null;
            try {
                fin = new FileInputStream(source);
                fout = new FileOutputStream(dest);
                int count = 0;
                while ((count = fin.read(buffer)) > 0)
                    fout.write(buffer, 0, count);
                fin.close();
                fout.close();
            } catch (IOException ex) {
                throw new BuildException(ex);
            } finally {
                try {
                    if (fin != null)
                        fin.close();
                } catch (IOException ex) {
                }
                try {
                    if (fout != null)
                        fout.close();
                } catch (IOException ex) {
                }
            }
        } else {
            // Copy directory
            dest.mkdirs();
            File[] children = source.listFiles();
            for (File child : children)
                copy(child, dest);
        }
    }
}
