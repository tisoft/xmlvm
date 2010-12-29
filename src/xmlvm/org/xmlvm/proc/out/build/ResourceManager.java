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

package org.xmlvm.proc.out.build;

import java.io.File;
import java.util.HashSet;
import java.util.Set;
import org.xmlvm.main.Arguments;
import org.xmlvm.proc.out.IPhoneOutputProcess;
import org.xmlvm.proc.out.VerbatimOutputFile;

public class ResourceManager {

    /**
     * Get a list of source files, as resources. Only source files in the first
     * level will be found. This is not a recursive function.
     * 
     * @param args
     *            command line arguments, used to find given resources
     * @return Set of resources as a VerbatimOutputFile set
     */
    public static Set<VerbatimOutputFile> getSourceResources(Arguments args) {
        Set<String> list = getFilteredList(args.option_resource(), null, true);
        Set<VerbatimOutputFile> out = new HashSet<VerbatimOutputFile>();
        for (String item : list) {
            File srcfile = new File(item);
            out.add(new VerbatimOutputFile(srcfile.getParent(), args.option_out()
                    + IPhoneOutputProcess.IPHONE_SRC_APP, srcfile.getName()));
        }
        return out;
    }

    /**
     * Get a list of resources, each one inside double quotes
     * 
     * @param args
     *            command line arguments, used to find given resources
     * @return list of resources
     */
    public static String getResourcesAsEscQuoteList(Set<String> reslist, String resourceroot) {
        Set<String> list = getFilteredList(reslist, resourceroot, false);
        StringBuilder out = new StringBuilder();
        for (String resource : list)
            out.append("\\\"").append(resource).append("\\\" ");
        return out.toString();
    }

    private static Set<String> getFilteredList(Set<String> reslist, String resourceRoot,
            boolean accept_sources) {
        Set<String> list = new HashSet<String>();
        if (resourceRoot == null)
            resourceRoot = System.getProperty("user.dir");
        for (String resource : reslist) {
            File resourceFile = new File(resourceRoot, resource);
            if (resourceFile.exists())
                if (resourceFile.isFile() || (!resource.endsWith(File.separator))) // Is
                    // a
                    // file
                    addSourceFilter(list, resource, accept_sources);
                else // Is a directory
                if (resource.endsWith("/")) { // We only need the contents of
                    // this directory
                    File[] entries = resourceFile.listFiles();
                    if (entries != null) { // This directory is not empty
                        for (File entry : entries) {
                            String name = resource + entry.getName(); // Get the
                            // filename
                            if (entry.isFile()) // If it is a file, only add
                                // non-source files
                                addSourceFilter(list, name, accept_sources);
                            else { // If it is a directory, keep a verbatim copy
                                if (!accept_sources)
                                    list.add(name);
                            }
                        }
                    }
                } else { // We want a verbatim copy of this directory
                    if (!accept_sources)
                        list.add(resource);
                }
        }
        return list;
    }

    /**
     * Add a resource file in list, depending if it is a resource or not
     * 
     * @param list
     *            list to add this resource file
     * @param resource
     *            resource file name
     * @param accept_source
     *            whether we accept source files. This is a toggle. If sources
     *            are accepted, then ONLY source files will be added. When
     *            sources are not accepted, then not any source file will be
     *            added.
     */
    private static void addSourceFilter(Set<String> list, String resource, boolean accept_source) {
        String resourceLC = resource.toLowerCase();
        boolean is_source = resourceLC.endsWith(".c") || resourceLC.endsWith(".h")
                || resourceLC.endsWith(".m") || resourceLC.endsWith(".cpp")
                || resourceLC.endsWith(".c++") || resourceLC.endsWith(".mm");
        if (accept_source == is_source)
            list.add(resource);
    }
}
