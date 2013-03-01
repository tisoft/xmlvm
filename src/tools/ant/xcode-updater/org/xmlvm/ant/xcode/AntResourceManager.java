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

import java.io.File;
import java.util.HashSet;
import java.util.Set;
import java.util.StringTokenizer;

/**
 * This object is a copy of ResourceManager of core xmlvm project. It also
 * contains source code of Arguments object.
 */
public class AntResourceManager {

    /**
     * This method does not exist in Resource Manager. It is a convenient method
     * to create set of arguments.
     * 
     * @param resources
     * @return
     */
    public static String getResourcesAsRegExQuoteList(String resources, String resourceroot) {
        HashSet<String> reslist = new HashSet<String>();
        parseListArgument(resources, reslist, ":");
        return getResourcesAsRegExQuoteList(reslist, resourceroot);
    }

    /**
     * Get a list of resources, each one inside double quotes
     * 
     * @param args
     *            command line arguments, used to find given resources
     * @return list of resources
     */
    public static String getResourcesAsRegExQuoteList(Set<String> reslist, String resourceroot) {
        Set<String> list = getFilteredList(reslist, resourceroot, false);
        StringBuilder out = new StringBuilder();
        for (String resource : list)
            out.append("\\\\\"").append(resource).append("\\\\\" ");
        return out.toString();
    }

    private static Set<String> getFilteredList(Set<String> reslist, String resourceroot,
            boolean accept_sources) {
        Set<String> list = new HashSet<String>();
        if (resourceroot == null)
            resourceroot = System.getProperty("user.dir");
        for (String resource : reslist) {
            File rfile = new File(resourceroot, resource);
            if (rfile.exists())
                if (rfile.isFile() || (!resource.endsWith(File.separator))) // Is
                                                                            // a
                                                                            // file
                    addSourceFilter(list, resource, accept_sources);
                else // Is a directory
                if (resource.endsWith("/")) { // We only need the contents of
                                              // this directory
                    File[] entries = rfile.listFiles();
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
                || resourceLC.endsWith(".c++") || resourceLC.endsWith(".mm")
                || resourceLC.endsWith(".xib") || resourceLC.endsWith(".storyboard");
        if (accept_source == is_source)
            list.add(resource);
    }

    private static void parseListArgument(String argument, Set<String> option, String separator) {
        StringTokenizer tk = new StringTokenizer(argument, separator);
        while (tk.hasMoreTokens()) {
            String entry = tk.nextToken().trim();
            if (!entry.equals("")) {
                boolean status = true;
                if (entry.startsWith("+")) {
                    entry = entry.substring(1);
                } else if (entry.startsWith("-")) {
                    status = false;
                    entry = entry.substring(1);
                }
                if (!entry.equals("")) {
                    if (status) {
                        option.add(entry);
                    } else {
                        option.remove(entry);
                    }
                }
            }
        }
    }
}
