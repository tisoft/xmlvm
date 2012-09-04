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

import org.xmlvm.ant.utils.FileUtilities;
import org.xmlvm.ant.utils.Closure;
import org.xmlvm.ant.utils.Log;
import org.xmlvm.ant.utils.ReplacementList;
import java.io.File;
import java.io.FileNotFoundException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.SortedMap;

/**
 * Perform the actual trimming of the project. It is called by the ant script
 */
public class TrimmerAction {

    private static final String INCLUDE      = "#include ";
    private static final int    INCLUDE_SIZE = INCLUDE.length();
    private static final String IMPORT       = "#import ";
    private static final int    IMPORT_SIZE  = IMPORT.length();
    /* */
    private final String        projecthome;
    private final boolean       shorten;
    private final boolean       cleanup;
    private final String        template;
    private final long          seed;
    private final XcodeSkeleton target;
    private final String        resources;
    private final String        resourceroot;
    private final SortedMap<String, String> replacements;


    /**
     * Initialize the trimmer object. For actual parameter definition, refer to
     * the corresponding ant task
     */
    public TrimmerAction(boolean shorten, boolean cleanup, String projecthome, String template,
            long seed, XcodeSkeleton target, String resources, String resourceroot,
            SortedMap<String, String> replacements) {
        this.projecthome = projecthome;
        this.shorten = shorten;
        this.cleanup = cleanup;
        this.template = template;
        this.seed = seed;
        this.target = target;
        this.resources = resources;
        this.resourceroot = resourceroot;
        this.replacements = replacements;
    }

    /**
     * Perform the trimming procedure
     * 
     * @throws FileNotFoundException
     *             In the case that a file was not found
     */
    public void trim() throws FileNotFoundException {
        Log.debug("Parsing files");

        /* useful variables */
        ReplacementList replace = new ReplacementList(shorten, template, seed, resources,
                                                      resourceroot, replacements);
        String projname = FileUtilities.getProjectName(projecthome);

        HashSet<String> files;
        if (cleanup) {
            files = getFilesByDependency();
        } else {
            files = getAllFiles();
        }

        Log.debug("Sorting files");
        ArrayList<String> list = new ArrayList<String>(files);
        Collections.sort(list);

        Log.debug("Creating XCode file");
        HashSet<String> libraries = FileUtilities.getProjectLibs(projecthome, projname);
        XCodeFile output = new XCodeFile(projname, list, libraries, target);

        Log.debug("Removing old trimmed files");
        FileUtilities.removeDirectory(new File(FileUtilities.trimDir(projecthome)));

        Log.debug("Saving XCode project " + projname + ".");
        FileUtilities.writeProjectFile(projecthome, projname, output.getProjectData(), replace);

        Log.debug("Moving source files");
        FileUtilities.transferFiles(projecthome, list, replace);

        Log.debug("Remove old source files");
        FileUtilities.removeDirectory(new File(FileUtilities.appDir(projecthome)));
        FileUtilities.removeDirectory(new File(FileUtilities.compDir(projecthome)));
    }

    private HashSet<String> getAllFiles() throws FileNotFoundException {
        HashSet<String> files = new HashSet<String>();

        for (File f : FileUtilities.listSourceFiles(FileUtilities.appDir(projecthome))) {
            files.add(f.getName());
        }
        for (File f : FileUtilities
                .listSourceFilesWithWarning(FileUtilities.iphoneDir(projecthome))) {
            files.add(f.getName());
        }
        for (File f : FileUtilities.listSourceFilesWithWarning(FileUtilities
                .androidDir(projecthome))) {
            files.add(f.getName());
        }
        return files;
    }

    private HashSet<String> getFilesByDependency() throws FileNotFoundException {
        HashSet<String> current_queue = new HashSet<String>();
        final HashSet<String> scratch_queue = new HashSet<String>();
        HashSet<String> allfiles = new HashSet<String>();

		File[] resources = FileUtilities.listSourceFiles(FileUtilities.resDir(projecthome));
		for (File f : resources) {
			allfiles.add(f.getName());
		}

        File[] core = FileUtilities.listSourceFiles(FileUtilities.appDir(projecthome));
        for (File f : core) {
            current_queue.add(f.getName());
        }

        while (!current_queue.isEmpty()) {
            for (String qitem : current_queue) {
                if (!allfiles.contains(qitem)) {
                    if (qitem.endsWith(".h")) {
                        scratch_queue.add(qitem.substring(0, qitem.length() - 2) + ".m");
                    }
                    if (FileUtilities.parseFile(projecthome, qitem, new Closure<String>() {

                        /* Parse source files for dependencies */
                        public void exec(String line) {
                            String original_line = line;

                            line = line.trim();
                            int offset = -1;
                            if (line.startsWith(INCLUDE)) {
                                offset = INCLUDE_SIZE;
                            } else if (line.startsWith(IMPORT)) {
                                offset = IMPORT_SIZE;
                            } else {
                                return;
                            }
                            line = line.substring(offset).trim();
                            if (line.charAt(0) == '<') {
                                return;
                            }
                            if (line.charAt(0) != '"') {
                                throw new RuntimeException("Missing '\"' while parsing line: "
                                        + original_line);
                            }

                            int upto = line.indexOf('"', 1);
                            scratch_queue.add(line.substring(1, upto));

                        }
                    })) {
                        allfiles.add(qitem);
                    }
                }
            }
            current_queue = new HashSet<String>(scratch_queue);
            scratch_queue.clear();
        }
        return allfiles;
    }
}
