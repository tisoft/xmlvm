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

package org.xmlvm.util.skeleton;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.StringTokenizer;
import java.util.jar.JarEntry;
import java.util.jar.JarInputStream;

/**
 * 
 * @author teras
 */
public class ClassList extends ArrayList<Class> {

    private String pkg;
    private String canonical_pkg;


    public ClassList(String pkg) {
        this.pkg = pkg.replace(".", "/");
        canonical_pkg = pkg.replace("/", ".") + ".";
        updateList();
    }

    private void updateList() {
        String classpath = System.getProperty("java.class.path");
        StringTokenizer tok = new StringTokenizer(classpath, File.pathSeparator);

        while (tok.hasMoreTokens()) {
            File file = new File(tok.nextToken());
            if (file.isFile())
                browseJarFile(file);
            else if (file.isDirectory())
                browseLocalDir(file, "");
        }
    }

    private void browseJarFile(File f) {
        JarInputStream libFiles = null;
        int pkglen = pkg.length();
        try {
            libFiles = new JarInputStream(new FileInputStream(f));
            JarEntry file = null;
            while ((file = libFiles.getNextJarEntry()) != null) {
                String name = file.getName();
                int lastslash = name.lastIndexOf("/");
                if (lastslash == pkglen && name.startsWith(pkg))
                    checkClassName(name.substring(lastslash + 1, name.length()));
            }
        } catch (IOException ex) {
        } finally {
            try {
                libFiles.close();
            } catch (IOException ex) {
            }
        }
    }

    private void browseLocalDir(File d, String currentpkg) {
        if (currentpkg.equals(pkg)) {
            File[] list = d.listFiles();
            for (File entry : list)
                if (entry.isFile())
                    checkClassName(entry.getName());
            return;
        }
        if (currentpkg.length() >= pkg.length())
            return;
        if (!pkg.startsWith(currentpkg))
            return;
        File[] list = d.listFiles();
        for (File entry : list)
            if (entry.isDirectory())
                browseLocalDir(entry, currentpkg + ((currentpkg.length() == 0) ? "" : "/")
                        + entry.getName());
    }

    private void checkClassName(String name) {
        if (name.endsWith(".class") && name.indexOf('$') < 0) {
            try {
                add(Class.forName(canonical_pkg
                        + name.substring(0, name.length() - ".class".length())));
            } catch (ClassNotFoundException ex) {
                System.out.println("Class reference " + name + " found but unable to initialize.");
            }
        }
    }
}
