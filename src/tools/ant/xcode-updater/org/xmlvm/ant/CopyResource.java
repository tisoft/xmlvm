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

import java.io.File;
import java.util.HashSet;
import java.util.StringTokenizer;
import org.apache.tools.ant.BuildException;
import org.apache.tools.ant.Task;
import org.xmlvm.ant.utils.FileUtilities;

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
