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
package org.xmlvm.ant.xcode;

import org.xmlvm.ant.utils.Log;
import java.util.ArrayList;
import java.util.HashSet;

/**
 * Create an xcode project
 * @author teras
 */
public class XCodeFile {

    /* Templates */
    private static final String TEMPL_PROJNAME = "__PROJNAME__";
    private static final String TEMPL_FILEREFS = "__FILEREFS__";
    private static final String TEMPL_BUILDREFS = "__BUILDREFS__";
    private static final String TEMPL_BUILDFRAMS = "__BUILDFRAMS__";
    private static final String TEMPL_FRAMEWORKS = "__FRAMEWORKS__";
    private static final String TEMPL_APP_SRC = "__APPSRC__";
    private static final String TEMPL_RESOURCES = "__RESOURCES__";
    private static final String TEMPL_SRC_BUILD = "__SRC_BUILD__";
    private static final String TEMPL_RESOURCES_BUILD = "__RESOURCES_BUILD__";
    /* Project creation constants*/
    private static final int FIRST_ID = 1000;
    /* */
    private String data = "";    // Actual XCode data
    private int nextid; // Next reference id

    public XCodeFile(String projname, ArrayList<String> projfiles, HashSet<String> libraries) {
        /* Project name */
        data = XCodeProjectSource.Source.replace(TEMPL_PROJNAME, projname);

        nextid = FIRST_ID;
        injectLibraries(libraries);
        injectFiles(projfiles);
        finalizeObject();
    }
    /* Requested libraries */

    public String getProjectData() {
        return data;
    }

    private void finalizeObject() {
        data = data.replace(TEMPL_FILEREFS, "").replace(
                TEMPL_BUILDREFS, "").replace(TEMPL_RESOURCES_BUILD, "").replace(
                TEMPL_SRC_BUILD, "").replace(TEMPL_RESOURCES, "").replace(
                TEMPL_BUILDFRAMS, "").replace(TEMPL_FRAMEWORKS, "");
    }

    private void injectLibraries(HashSet<String> libs) {
        StringBuilder filerefs = new StringBuilder();
        StringBuilder buildrefs = new StringBuilder();
        StringBuilder buildframs = new StringBuilder();
        StringBuilder frameworks = new StringBuilder();

        String filetype = "";
        String path = "";

        boolean valid_lib;
        /* Parse libraries */
        int buildid = 99998;
        int fileid;
        for (String lib : libs) {
            buildid += 2;
            fileid = buildid + 1;
            valid_lib = true;

            if (lib.endsWith(".framework")) {
                filetype = "wrapper.framework";
                path = "System/Library/Frameworks/";
            } else if (lib.endsWith(".dylib")) {
                filetype = "compiled.mach-o.dylib";
                path = "usr/lib/";
            } else {
                Log.error("Unable to parse library " + lib + ". Ignoring.");
                valid_lib = false;
            }

            if (valid_lib) {
                /* Add build reference */
                buildrefs.append("\t\t").append(buildid);
                buildrefs.append(" /* ").append(lib).append(" in Frameworks */");
                buildrefs.append(" = {isa = PBXBuildFile; fileRef = ").append(fileid);
                buildrefs.append(" /* ").append(lib);
                buildrefs.append(" */; };\n");
                /* Add file reference */
                filerefs.append("\t\t").append(fileid);
                filerefs.append(" /* ").append(lib).append(" */");
                filerefs.append(" = { isa = PBXFileReference; lastKnownFileType = ");
                filerefs.append(filetype).append("; name = ").append(lib);
                filerefs.append("; path = ").append(path).append(lib);
                filerefs.append("; sourceTree = SDKROOT; };\n");
                /* Add references frameworks */
                buildframs.append("\t\t\t\t").append(buildid).append(" /* ").append(lib).append(" in Frameworks */,\n");
                frameworks.append("\t\t\t\t").append(fileid).append(" /* ").append(lib).append(" */,\n");
            }
        }
        data = data.replace(TEMPL_FILEREFS, filerefs.toString() + TEMPL_FILEREFS);
        data = data.replace(TEMPL_BUILDREFS, buildrefs.toString() + TEMPL_BUILDREFS);
        data = data.replace(TEMPL_BUILDFRAMS, buildframs.toString() + TEMPL_BUILDFRAMS);
        data = data.replace(TEMPL_FRAMEWORKS, frameworks.toString() + TEMPL_FRAMEWORKS);
    }

    private void injectFiles(ArrayList<String> files) {
        StringBuilder filerefs = new StringBuilder();
        StringBuilder buildrefs = new StringBuilder();
        StringBuilder display = new StringBuilder();
        StringBuilder source = new StringBuilder();
        StringBuilder resource = new StringBuilder();

        for (String fname : files) {
            FileResource fres = new FileResource(fname);
            if (fres.isValid()) {
                filerefs.append("\t\t").append(nextid);
                filerefs.append(" /* ").append(fname).append(" */");
                filerefs.append(" = { isa = PBXFileReference; fileEncoding = 4; lastKnownFileType = ");
                filerefs.append(fres.getType()).append("; path = \"");
                filerefs.append(fname).append("\"; sourceTree = \"<group>\"; };");
                filerefs.append('\n');

                display.append("\t\t\t\t").append(nextid);
                display.append(" /* ").append(fname).append(" */");
                display.append(",\n");

                if (fres.isBuildable()) {
                    int fileid = nextid;
                    nextid++;
                    buildrefs.append("\t\t").append(nextid);
                    buildrefs.append(" /* ").append(fname);
                    buildrefs.append(" in ").append(fres.isSource() ? "Sources" : "Resources");
                    buildrefs.append(" */ = {isa = PBXBuildFile; fileRef = ").append(fileid);
                    buildrefs.append(" /* ").append(fname);
                    buildrefs.append(" */; };\n");

                    if (fres.isSource()) {
                        source.append("\t\t\t\t").append(nextid);
                        source.append(" /* ").append(fname).append(" */");
                        source.append(",\n");
                    }
                    if (fres.isResource()) {
                        resource.append("\t\t\t\t").append(nextid);
                        resource.append(" /* ").append(fname).append(" */");
                        resource.append(",\n");
                    }
                }
                nextid++;
            }
        }
        data = data.replace(TEMPL_FILEREFS, filerefs.toString() + TEMPL_FILEREFS);
        data = data.replace(TEMPL_BUILDREFS, buildrefs.toString() + TEMPL_BUILDREFS);
        data = data.replace(TEMPL_APP_SRC, display.toString());
        data = data.replace(TEMPL_SRC_BUILD, source.toString() + TEMPL_SRC_BUILD);
        data = data.replace(TEMPL_RESOURCES_BUILD, resource.toString() + TEMPL_RESOURCES_BUILD);
    }
}
