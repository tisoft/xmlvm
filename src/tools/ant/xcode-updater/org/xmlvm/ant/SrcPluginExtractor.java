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

package org.xmlvm.ant;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.HashSet;
import java.util.Set;
import java.util.StringTokenizer;
import java.util.jar.JarEntry;
import java.util.jar.JarInputStream;
import org.apache.tools.ant.BuildException;
import org.apache.tools.ant.Task;

/**
 * Use this task to parse classpath, and copy the Obj-c part of each plugin (if
 * it exists) to destination directory. Each plugin is a regular JAR file, which
 * inside the "/objc" directory it is possible to add *.m, *.h. *.c, *.cpp and
 * *.c++ files. These files will be copied along the produced Obj-c files to the
 * Xcode project, and compiled together.
 */
public class SrcPluginExtractor extends Task {

    private final static String PREFIX  = "objc/";
    private File                dest;
    private String              classpath;
    private int                 howmany = 0;


    /**
     * provide the classpath to the task, in order to parse *.JAR files for
     * possible C code. Every JAR file is searched if the directory "/objc"
     * exists, and if it exists, it copies all files found there to the "dest"
     * directory
     * 
     * @param classpath
     */
    public void setClasspath(String classpath) {
        this.classpath = classpath;
    }

    /**
     * Set the destination folder, where Obj-c files will be stored
     * 
     * @param dest
     */
    public void setDest(File dest) {
        this.dest = getProjectFile(dest.getPath());
    }

    /**
     * Start the SrcPluginExtractor task
     * 
     * @throws BuildException
     */
    @Override
    public void execute() throws BuildException {
        if (classpath == null || classpath.equals(""))
            throw new BuildException(new NullPointerException(
                    "Attribute \"classpath\" for SrcPluginExtractor should be properly defined."));
        if (dest == null)
            throw new BuildException(new NullPointerException(
                    "Attribute \"dest\" for SrcPluginExtractor should be properly defined."));
        if (dest.exists() && (!dest.isDirectory()))
            throw new BuildException(new IOException("Path " + dest.getPath()
                    + " exists and is not a directory"));
        dest.mkdirs();
        if (!dest.exists())
            throw new BuildException(new IOException("Unable to use path " + dest.getPath()));

        for (String jar : getClassPaths())
            extractSourceFiles(jar);
        if (howmany != 0)
            System.out.println("Copying " + howmany + " files to " + dest.getPath());

    }

    private Set<String> getClassPaths() {
        HashSet<String> paths = new HashSet<String>();
        StringTokenizer tk = new StringTokenizer(classpath, File.pathSeparator);
        while (tk.hasMoreTokens()) {
            String val = tk.nextToken();
            if ((!val.equals("")) && val.toLowerCase().endsWith(".jar")) {
                paths.add(val);
            }
        }
        return paths;
    }

    private void extractSourceFiles(String jar) {
        JarInputStream in = null;
        BufferedOutputStream out = null;
        try {
            in = new JarInputStream(new FileInputStream(getProjectFile(jar)));
            JarEntry item;
            byte buffer[] = new byte[4096];
            int buflength;
            while ((item = in.getNextJarEntry()) != null)
                if (item.getName().startsWith(PREFIX) && (!item.getName().endsWith("/"))) {
                    out = new BufferedOutputStream(new FileOutputStream(new File(dest,
                            getFileName(item))));
                    while ((buflength = in.read(buffer)) != -1)
                        out.write(buffer, 0, buflength);
                    howmany++;
                    out.flush();
                    out.close();
                    out = null;
                }
        } catch (IOException ex) {
            System.out.println("Unable to parse file " + jar + ", reason: " + ex.getMessage());
        } finally {
            try {
                if (in != null)
                    in.close();
            } catch (IOException ex) {
            }
            try {
                if (out != null)
                    out.close();
            } catch (IOException ex) {
            }
        }
    }

    private File getProjectFile(String path) {
        if (new File(path).isAbsolute())
            return new File(path);
        return new File(getProject().getBaseDir(), path).getAbsoluteFile();
    }

    private String getFileName(JarEntry entry) {
        String name = entry.getName();
        int slash = name.lastIndexOf('/');
        if (slash >= 0)
            return name.substring(slash + 1, name.length());
        return name;
    }
}
