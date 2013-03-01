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
import java.io.IOException;
import java.util.HashSet;
import java.util.Set;

import org.xmlvm.Log;
import org.xmlvm.main.Arguments;
import org.xmlvm.plugins.iphone.IPhoneOutputProcess;
import org.xmlvm.proc.out.OutputFile;
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
    public static Set<OutputFile> getSourceResources(Arguments args) {
        Set<String> list = getFilteredList(args.option_out(), args.option_resource(), null, true);
        Set<OutputFile> out = new HashSet<OutputFile>();
        for (String item : list) {
            String dir = IPhoneOutputProcess.IPHONE_SRC_APP;
            if (item.toLowerCase().endsWith(".xib")) {
                dir = IPhoneOutputProcess.IPHONE_RESOURCES_SYS;
            }
            File srcfile = new File(item);
            out.add(new VerbatimOutputFile(srcfile.getParent(), args.option_out()
                + dir, srcfile.getName()));
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
    public static String getResourcesAsEscQuoteList(String projectpath, Set<String> reslist,
            String resourceroot) {
        Set<String> list = getFilteredList(projectpath, reslist, resourceroot, false);
        StringBuilder out = new StringBuilder();
        for (String resource : list)
            out.append("\\\"").append(resource).append("\\\" ");
        return out.toString();
    }

    private static Set<String> getFilteredList(String projectpath, Set<String> reslist,
            String resourceRoot, boolean accept_sources) {

        projectpath = getAbsoluteProjectLocation(projectpath);
        Set<String> list = new HashSet<String>();
        if (resourceRoot == null) {
            resourceRoot = System.getProperty("user.dir");
        }
        for (String resource : reslist) {
            // First treat the resource as a relative resource and see if it
            // exists.
            File resourceFile = new File(resourceRoot, resource);
            if (!resourceFile.exists()) {
                // If treating the resource as a relative resource doesn't
                // exist, try it as an absolute resource.
                resourceFile = new File(resource);
            }
            if (resourceFile.exists()) {
                if (resourceFile.isFile() || (!resource.endsWith(File.separator))) {
                    // Is a file
                    addFilteredResource(projectpath, list, resource, accept_sources);
                } else {
                    // Is a directory
                    if (resource.endsWith("/")) {
                        // We only need the contents of this directory
                        File[] entries = resourceFile.listFiles();
                        // This directory is not empty
                        if (entries != null) {
                            for (File entry : entries) {
                                // Get the filename.
                                String name = resource + entry.getName();
                                // If it is a file, only add non-source files.
                                if (entry.isFile()) {
                                    addFilteredResource(projectpath, list, name, accept_sources);
                                } else {
                                    // If it is a directory, keep a verbatim
                                    // copy.
                                    if (!accept_sources)
                                        addResource(projectpath, list, name);
                                }
                            }
                        }
                    } else { // We want a verbatim copy of this directory
                        if (!accept_sources)
                            addResource(projectpath, list, resource);
                    }
                }
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
    private static void addFilteredResource(String projectpath, Set<String> list, String resource,
            boolean accept_source) {
        String resourceLC = resource.toLowerCase();
        boolean is_source = resourceLC.endsWith(".c") || resourceLC.endsWith(".h")
                || resourceLC.endsWith(".m") || resourceLC.endsWith(".cpp")
                || resourceLC.endsWith(".c++") || resourceLC.endsWith(".mm")
                || resourceLC.endsWith(".xib") || resourceLC.endsWith(".storyboard");
        if (accept_source == is_source)
            addResource(projectpath, list, resource);
    }

    /**
     * Addd a resource file in the list, and check if the file is inside the
     * project path or not. If it is, a relative filename is added, or else an
     * absolute filename.
     * 
     * @param projectpath
     *            The path of the project
     * @param list
     *            The list of resources
     * @param resource
     *            The resource filename
     */
    private static void addResource(String projectpath, Set<String> list, String resource) {
        try {
            String canonical = new File(resource).getCanonicalPath();
            if (canonical.startsWith(projectpath))
                list.add(resource);
            else
                list.add(canonical);
        } catch (IOException ex) {
            Log.error(ex.getMessage());
        }
    }

    /**
     * Get the absolute location of the project, as a canonical path name. In
     * the special case that this project filename ends with "build/.xcode"
     * (which is the output location of XMLVM projects as created by the ant
     * tasks), then the project is actually two directory levels up.
     * 
     * @param projectpath
     *            The given path of the project
     * @return The actual path of the project
     */
    private static String getAbsoluteProjectLocation(String projectpath) {
        try {
            projectpath = new File(projectpath).getCanonicalPath();
            if (projectpath.endsWith("/build/.xcode")) {
                projectpath = projectpath.substring(0,
                        projectpath.length() - "/build/.xcode".length());
            }
        } catch (IOException ex) {
            Log.error(ex.getMessage());
        }
        return projectpath;
    }
}
