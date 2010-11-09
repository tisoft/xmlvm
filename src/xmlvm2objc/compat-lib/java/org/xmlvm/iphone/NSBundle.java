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

package org.xmlvm.iphone;

import java.io.File;
import java.io.FileInputStream;
import java.util.HashSet;
import java.util.Properties;
import java.util.Set;
import java.util.StringTokenizer;

import org.xmlvm.XMLVMSkeletonOnly;

/**
 * @author arno, teras
 * 
 */
@XMLVMSkeletonOnly
public class NSBundle extends NSObject {

    private static final String SYSRES              = "/sys_resources";
    private static final String CLASS_RESOURCE_LIST = "/META-INF/list.resources";
    private static final String XCODE_RESOURCE_LIST = System.getProperty("user.dir")
                                                            + File.separator + "xcode.properties";
    private static NSBundle     mainBundle          = new NSBundle();
    private static Set<String>  runtime_res;


    private NSBundle() {
    }

    public static NSBundle mainBundle() {
        return mainBundle;
    }

    public String pathForResource(String resource, String type, String directory) {
        // resource is not allowed to contain a path component. In this case
        // null has to be returned
        if (resource.indexOf('/') != -1) {
            return null;
        }

        /* Calculate file name */
        String filename = type == null ? resource : resource + "." + type;
        if (directory != null && !directory.equals("")) {
            filename = directory + "/" + filename;
        }

        /* Check it as a local resource file */
        for (String dname : getDeclaredResources()) {
            File dfile = new File(dname);
            try {
                if (dfile.isFile()) { // Resource is a file
                    if (dfile.getName().equals(filename))
                        return dfile.getAbsolutePath();
                } else { // Resource is a directory
                    File req = null;
                    if (dname.endsWith("/")) // Search inside directory
                        req = new File(dfile, filename);
                    else { // Take into account resource directory
                        int slash = filename.indexOf('/');
                        String doubledir = filename.substring(0, slash);
                        if (doubledir.equals(dfile.getName())) // Only if both
                            // directories
                            // are the same
                            req = new File(dfile, filename.substring(slash + 1));
                    }
                    if (req != null && req.exists())
                        return req.getAbsolutePath();
                }
            } catch (Exception ex) {
            }
        }

        /*
         * If file was not found, search as a system resource file. This is a
         * rare case and used only internally for the emulator.
         * 
         * Please do not use it in your own projects. Use "xmlvm.resource" in
         * file "xcode.properties" instead.
         */
        String sysfilename = SYSRES + (filename.startsWith("/") ? "" : "/") + filename;
        try {
            String path = getClass().getResource(sysfilename).toURI().toURL().toString();
            if (path != null) {
                return path;
            }
        } catch (Exception ex) {
        }

        /* Not found */
        return null;
    }

    public String pathForResource(String resource, String type) {
        return pathForResource(resource, type, null);
    }

    public String bundlePath() {
        // First we assume that we are running an Android app and we use the
        // 'res' directory
        // to locate the proper classpath location. We have to do this since the
        // classpath
        // usually consists of several directories and we use 'res' as a unique
        // identifier
        // to locate the correct location.
        String path = pathForResource("", null, "res");
        if (path == null) {
            // We are not running an Android app. Just return the main directory
            // in this case
            File res = new File(getClass().getResource("/").getFile());
            if (res.exists()) {
                return res.getAbsolutePath();
            }
            return null;
        }
        return new File(path).getParent();
    }

    /**
     * Runtime resources, given as a special file under
     * ${CLASSPATH}/META-INF/xcode.properties or under
     * ${user.dir}/xcode.properties
     * 
     * This is required in order to run applications as Java from the command
     * line.
     */
    private static Set<String> getDeclaredResources() {
        if (runtime_res == null) {
            runtime_res = new HashSet<String>();
            Properties pr = new Properties();
            try {
                // Load resources definition in the META-INF directory
                pr.load(NSBundle.class.getResourceAsStream(CLASS_RESOURCE_LIST));
            } catch (Exception ex1) {
                try {
                    pr.load(new FileInputStream(XCODE_RESOURCE_LIST));
                } catch (Exception ex2) {
                    return runtime_res;
                }
            }

            String path = pr.getProperty("xmlvm.resource.path", System.getProperty("user.dir"));
            if (!path.endsWith(File.separator))
                path += File.separator;
            String list = pr.getProperty("xmlvm.resource", "");
            StringTokenizer tk = new StringTokenizer(list, ":");
            while (tk.hasMoreTokens()) {
                String item = tk.nextToken();
                if (item.startsWith(File.separator))
                    runtime_res.add(item);
                else
                    runtime_res.add(path + item);
            }
        }
        return runtime_res;
    }
}
