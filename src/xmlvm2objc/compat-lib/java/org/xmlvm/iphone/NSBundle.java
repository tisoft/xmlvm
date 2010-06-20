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
import java.net.URISyntaxException;
import java.net.URL;

/**
 * @author arno, teras
 * 
 */
public class NSBundle extends NSObject {
    private static final String SYSRES_JAR = "/sys_resources";
    private static final String APPRES_FILE = File.separator + "resources" + File.separator + "app" + File.separator;


    private static NSBundle mainBundle = new NSBundle();

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

        /* First check as a local file */
        try {
            File res = new File(new File(getClass().getResource("/").getFile()).getParentFile().getParent()
                    + APPRES_FILE + filename);
            if (res.exists()) {
                return "file://"+res.getAbsolutePath();
            }
        } catch (Exception ex) {
        }
        
        /* Check also if it is simply on the root directory of the project */
        try {
            File res = new File(getClass().getResource("/" + filename).getFile());
            if (res.exists()) {
                return res.toURI().toString();
            }
        } catch (Exception ex) {
        }

        /* Then check as a file inside the jar */
        String jarfilename = filename.startsWith("/") ? filename : "/" + filename;
        try {
            String path = getClass().getResource(jarfilename).toURI().toURL().toString();
            if (path != null) {
                return path;
            }
        } catch (Exception ex) {
        }

        /* Then check as a system jar resource file */
        try {
            String path = getClass().getResource(SYSRES_JAR + jarfilename).toURI().toURL().toString();
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
        return getClass().getResource("/").getPath();
    }
    
    static String getFilenameFromURI(String path) {
        if (path.startsWith("file:///")) {
            return path.substring("file://".length());
        }
        if (path.startsWith("file:/")) {
            return path.substring("file:".length());
        }
        return path;
    }
}
