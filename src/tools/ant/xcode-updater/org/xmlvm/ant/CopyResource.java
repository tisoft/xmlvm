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

package org.xmlvm.ant;

import java.io.File;
import java.util.HashSet;
import java.util.StringTokenizer;
import org.apache.tools.ant.BuildException;
import org.apache.tools.ant.Task;
import org.xmlvm.ant.utils.FileUtilities;

/**
 *
 * @author teras
 */
public class CopyResource extends Task {

    private String list = "";
    private File out = null;

    /**
     * Set a list of resources, as a colon separated list. Files and directories
     * are accepted.
     *
     * If a directory ends with "/", then the contents of this
     * directory are taken into account. If the directory does not end with "/",
     * then a verbatim copy of the directory is used.
     *
     * If a file is provided, then the path of the file will be ignored and put
     * in the root location of the resource.
     *
     * @param list
     *          list of resources
     */
    public void setList(String list) {
        this.list = list;
    }

    /**
     * Set the target root directory of the resources
     * @param out resource target root directory
     */
    public void setOut(String out) {
        this.out = new File(out);
    }

    /**
     * perform the actual ant task
     * @throws BuildException
     */
    @Override
    public void execute() throws BuildException {
        if (out == null)
            throw new BuildException("Required parameter out is missing.");
        out.mkdirs();

        // Get list of resources
        HashSet<String> resourcelist = new HashSet<String>();
        if (list != null) {
            StringTokenizer tk = new StringTokenizer(list, ":");
            while (tk.hasMoreTokens())
                resourcelist.add(tk.nextToken());
        }
        if (resourcelist.size() > 0)
            System.out.println("Copying resources '" + list + "'");

        // Parse resources list
        for (String item : resourcelist) {
            File ifile = new File(item);
            if (ifile.exists()) {
                if (item.endsWith("/")) {
                    if (ifile.isDirectory()) {
                        File[] children = ifile.listFiles();
                        for (File child : children)
                            FileUtilities.copy(child, out);
                    }
                } else {
                    FileUtilities.copy(ifile, out);
                }
            }
        }
    }
}
