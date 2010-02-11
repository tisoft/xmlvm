/*
 * Copyright (c) 2004-2009 XMLVM --- An XML-based Programming Language
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
import java.io.BufferedOutputStream;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.List;
import java.util.StringTokenizer;
import java.util.jar.JarEntry;
import java.util.jar.JarInputStream;

import org.xmlvm.Log;
import org.xmlvm.proc.NewMain;

public class JarUtil {

    /**
     * Copies a file from within the OneJar JAR archive to the given file system
     * path while keeping its name.
     * 
     * @param resourceName
     *            The name of the resource to copy.
     * @param toPath
     *            The destination directory where the resource should be copied
     *            to.
     * @return Whether the operation was successful.
     */
    public static boolean copyFromArchive(String resourceName, String toPath) {
        try {
            JarInputStream libFiles = new JarInputStream(NewMain.class
                    .getResourceAsStream(resourceName));
            if (!toPath.endsWith(File.separator))
                toPath += File.separator;
            File dir = new File(toPath);
            if (!dir.exists())
                dir.mkdirs();
            JarEntry file = null;
            while ((file = libFiles.getNextJarEntry()) != null) {
                final int BUFFER = 2048;
                int count;
                byte data[] = new byte[BUFFER];
                // write the files to the disk
                FileOutputStream fos = new FileOutputStream(toPath + file.getName());
                BufferedOutputStream dest = new BufferedOutputStream(fos, BUFFER);
                while ((count = libFiles.read(data, 0, BUFFER)) != -1) {
                    dest.write(data, 0, count);
                }
                dest.flush();
                dest.close();
            }
            return true;
        } catch (Exception ex) {
            ex.printStackTrace();
            return false;
        }
    }

    public static BufferedReader getFile(String name) {
        return new BufferedReader(new InputStreamReader(NewMain.class.getResourceAsStream(name)));
    }

    public static BufferedInputStream getStream(String name) {
        return new BufferedInputStream(NewMain.class.getResourceAsStream(name));
    }

    /**
     * Returns whether the resource with the given name exists.
     */
    public static boolean resourceExists(String name) {
        return NewMain.class.getResourceAsStream(name) != null;
    }

    public static List<String> list(String fromJar) {
        try {
            ArrayList<String> list = new ArrayList<String>();

            JarInputStream libFiles = new JarInputStream(JarUtil.class.getResourceAsStream(fromJar));
            JarEntry file = null;
            while ((file = libFiles.getNextJarEntry()) != null) {
                list.add(file.getName());
            }
            return list;
        } catch (IOException ex) {
            Log.error("Unable to parse JAR file " + fromJar);
        }
        return null;
    }

    public static String findSelfJar() {
        String jarname = "xmlvm";
        String classpath = System.getProperty("java.class.path");
        StringTokenizer tok = new StringTokenizer(classpath, System.getProperty("path.separator"));

        while (tok.hasMoreTokens()) {
            File file = new File(tok.nextToken()).getAbsoluteFile();
            if (file.getName().toLowerCase().endsWith(jarname.toLowerCase() + ".jar")
                    || file.getName().toLowerCase().endsWith(jarname.toLowerCase() + ".exe"))
                return file.getAbsolutePath();
        }
        return null;
    }
}
