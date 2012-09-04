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
package org.xmlvm.ant.xcode;

import java.util.HashMap;

/**
 * Datatype to define a file which will appear in an XCode project
 */
public class FileResource {

    /** Maps of file types */
    private static final HashMap<String, String> sourcefiles;
    private static final HashMap<String, String> hiddensourcefiles;
    private static final HashMap<String, String> resourcefiles;

    static {
        sourcefiles = new HashMap<String, String>();
        sourcefiles.put("c", "sourcecode.c.c");
        sourcefiles.put("m", "sourcecode.c.objc");
        sourcefiles.put("c++", "sourcecode.cpp.cpp");
        sourcefiles.put("cpp", "sourcecode.cpp.cpp");
        sourcefiles.put("mm", "sourcecode.cpp.objcpp");

        hiddensourcefiles = new HashMap<String, String>();
        hiddensourcefiles.put("h", "sourcecode.c.h");
 
        resourcefiles = new HashMap<String, String>();
        resourcefiles.put("xib", "file.xib");
   }
    private String                               type        = null;
    private boolean                              isSource    = false;
    private boolean                              isResource  = false;
    private boolean                              isValid     = false;
    private boolean                              isBuildable = false;


    /**
     * Create a new file resource
     * 
     * @param fname
     *            the name of the file
     */
    public FileResource(String fname) {
        if (fname == null) {
            return;
        }
        int point = fname.lastIndexOf(".");
        if (point < 0 || point == fname.length()) {
            return;
        }

        String ext = fname.substring(point + 1);

        type = sourcefiles.get(ext);
        if (type != null) {
            isValid = true;
            isBuildable = true;
            isSource = true;
            return;
        }

        type = hiddensourcefiles.get(ext);
        if (type != null) {
            isValid = true;
            isSource = true;
            return;
        }

        type = resourcefiles.get(ext);
        if (type != null) {
            isValid = true;
            isBuildable = true;
            isResource = true;
            return;
        }
    }

    @Override
    /**
     * Information about this file resource
     */
    public String toString() {
        return "[type=" + type + (isSource ? ", Source" : "") + (isResource ? ", Resource" : "")
                + (isValid ? ", Valid" : "") + (isBuildable ? ", Buildable" : "") + "]";
    }

    /**
     * Whether this file should be take part in the build process of Xcode
     * project
     */
    public boolean isBuildable() {
        return isBuildable;
    }

    /**
     * Whether this file is a resource. Resources are files not actively used in
     * the build process
     */
    public boolean isResource() {
        return isResource;
    }

    /**
     * Whether this file is a source file
     */
    public boolean isSource() {
        return isSource;
    }

    /**
     * Whether this file is valid and should be taken into account
     * 
     * @return
     */
    public boolean isValid() {
        return isValid;
    }

    /**
     * Return the type of the file
     * 
     * @return The type of the file, as defined by Xcode
     */
    public String getType() {
        return type;
    }
}
