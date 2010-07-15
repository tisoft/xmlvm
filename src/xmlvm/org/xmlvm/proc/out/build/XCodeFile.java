/*
 * Copyright (c) 2004-2010 XMLVM --- An XML-based Programming Language
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

package org.xmlvm.proc.out.build;

import java.io.FileFilter;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;

import java.util.Set;
import org.xmlvm.Log;
import org.xmlvm.main.Arguments;
import org.xmlvm.proc.out.Android2IPhoneOutputProcess;
import org.xmlvm.proc.out.IPhoneOutputProcess;
import org.xmlvm.proc.out.OutputFile;

/**
 * @author teras
 */
public class XCodeFile extends BuildFile {

    private static final String                  IPHONE_XCODE_IN_JAR_RESOURCE = "/iphone/project.template";
    private static final String                  IPHONE_XCODE_PATH            = "var/iphone/project.template";
    /* File filters */
    private static final PathFileFilter          FILTER_APP                   = new PathFileFilter(
                                                                                      IPhoneOutputProcess.IPHONE_SRC_APP);
    private static final PathFileFilter          FILTER_IPHONE                = new PathFileFilter(
                                                                                      IPhoneOutputProcess.IPHONE_SRC_LIB);
    private static final PathFileFilter          FILTER_ANDROID               = new PathFileFilter(
                                                                                      Android2IPhoneOutputProcess.ANDROID_SRC_LIB);
    private static final PathFileFilter          FILTER_RESOURCES             = new PathFileFilter(
                                                                                      IPhoneOutputProcess.IPHONE_RESOURCES_APP);
    /* Templates */
    private static final String                  TEMPL_PROJNAME               = "__PROJNAME__";
    private static final String                  TEMPL_FILEREFS               = "__FILEREFS__";
    private static final String                  TEMPL_BUILDREFS              = "__BUILDREFS__";
    private static final String                  TEMPL_BUILDFRAMS             = "__BUILDFRAMS__";
    private static final String                  TEMPL_FRAMEWORKS             = "__FRAMEWORKS__";

    private static final String                  TEMPL_APP_SRC                = "__APPSRC__";
    private static final String                  TEMPL_IPHONE_SRC             = "__IPHONESRC__";
    private static final String                  TEMPL_ANDROID_SRC            = "__ANDROIDSRC__";
    private static final String                  TEMPL_RESOURCES              = "__RESOURCES__";
    private static final String                  TEMPL_SRC_BUILD              = "__SRC_BUILD__";
    private static final String                  TEMPL_RESOURCES_BUILD        = "__RESOURCES_BUILD__";

    private static final String                  TEMPL_SDK_ROOT               = "__SDK_ROOT__";
    private static final String                  TEMPL_SDK_TARGET             = "__SDK_TARGET__";

    /* Maps of file types */
    private static final HashMap<String, String> sourcefiles;
    private static final HashMap<String, String> hiddensourcefiles;
    private static final HashMap<String, String> resourcefiles;

    static {
        sourcefiles = new HashMap<String, String>();
        sourcefiles.put("c", "sourcecode.c.c");
        sourcefiles.put("m", "sourcecode.c.objc");
        sourcefiles.put("c++", "sourcecode.cpp.cpp");
        sourcefiles.put("cpp", "sourcecode.cpp.cpp");

        hiddensourcefiles = new HashMap<String, String>();
        hiddensourcefiles.put("h", "sourcecode.c.h");

        resourcefiles = new HashMap<String, String>();
        resourcefiles.put("xml", "text.xml");
        resourcefiles.put("jpg", "image.jpeg");
        resourcefiles.put("png", "image.png");
        resourcefiles.put("mp3", "audio.mpeg");
        resourcefiles.put("txt", "text");
        resourcefiles.put("plist", "text.plist");
    }

    /* Produce Xcode project file */
    @Override
    public String composeBuildFiles(List<OutputFile> allfiles, Arguments arguments) {
        String projname = arguments.option_app_name();

        /* Search and load xcode template */
        XCodeProj proj;
        try {
            proj = new XCodeProj(projname, allfiles);
        } catch (IOException ex) {
            return ex.getMessage();
        }
        proj.injectLibraries(arguments.option_lib());
        proj.injectFiles(TEMPL_APP_SRC, FILTER_APP);
        proj.injectFiles(TEMPL_IPHONE_SRC, FILTER_IPHONE);
        proj.injectFiles(TEMPL_ANDROID_SRC, FILTER_ANDROID);
        // proj.injectFiles(TEMPL_RESOURCES, FILTER_RESOURCES); // Do not inject
        // files, a special bash script will take care of this
        proj.finalizeObject(arguments);

        OutputFile makefile = new OutputFile(proj.data);
        makefile.setFileName("project.pbxproj");
        makefile.setLocation(arguments.option_out() + "/" + projname + ".xcodeproj");
        allfiles.add(makefile);
        return null;
    }

    private class XCodeProj {

        static final int FIRST_ID = 1000;
        /* */
        String           data;
        int              nextid;
        List<OutputFile> allfiles;

        private XCodeProj(String name, List<OutputFile> allfiles) throws IOException {
            data = readData(IPHONE_XCODE_IN_JAR_RESOURCE, IPHONE_XCODE_PATH);
            if (data == null)
                throw new RuntimeException("XCode template not found");
            data = data.replace(TEMPL_PROJNAME, name);

            if (allfiles == null)
                throw new RuntimeException("Null files given to XCodeProj");
            this.allfiles = allfiles;

            nextid = FIRST_ID;
        }

        private void finalizeObject(Arguments arguments) {
            data = data.replace(TEMPL_FILEREFS, "")
                    .replace(TEMPL_BUILDREFS, "")
                    .replace(TEMPL_RESOURCES_BUILD, "")
                    .replace(TEMPL_SRC_BUILD, "")
                    .replace(TEMPL_RESOURCES, "")
                    .replace(TEMPL_BUILDFRAMS, "")
                    .replace(TEMPL_FRAMEWORKS, "");
            XcodeSkeleton skel = XcodeSkeleton.getTarget(arguments.option_property("xcodeproject"));
            data = data.replace(TEMPL_SDK_ROOT, skel.root)
                    .replace(TEMPL_SDK_TARGET, skel.target);
        }

        private void injectLibraries(Set<String> libraries) {
            StringBuilder filerefs = new StringBuilder();
            StringBuilder buildrefs = new StringBuilder();
            StringBuilder buildframs = new StringBuilder();
            StringBuilder frameworks = new StringBuilder();

            String filetype = "";
            String path = "";

            /* add user specified libraries to system libraries */
            boolean valid_lib;
            /* Parse libraries */
            int buildid = 99998;
            int fileid;
            for (String lib : libraries) {
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
                    buildframs.append("\t\t\t\t").append(buildid).append(" /* ").append(lib)
                            .append(" in Frameworks */,\n");
                    frameworks.append("\t\t\t\t").append(fileid).append(" /* ").append(lib).append(
                            " */,\n");
                }
            }
            data = data.replace(TEMPL_FILEREFS, filerefs.toString() + TEMPL_FILEREFS);
            data = data.replace(TEMPL_BUILDREFS, buildrefs.toString() + TEMPL_BUILDREFS);
            data = data.replace(TEMPL_BUILDFRAMS, buildframs.toString() + TEMPL_BUILDFRAMS);
            data = data.replace(TEMPL_FRAMEWORKS, frameworks.toString() + TEMPL_FRAMEWORKS);
        }

        private void injectFiles(String template, FileFilter filter) {
            StringBuilder filerefs = new StringBuilder();
            StringBuilder buildrefs = new StringBuilder();
            StringBuilder display = new StringBuilder();
            StringBuilder source = new StringBuilder();
            StringBuilder resource = new StringBuilder();

            if (template == null || template.equals(""))
                return;

            List<String> files = getFileNames(allfiles, filter);
            for (String fname : files) {
                FileResource fres = new FileResource(fname);
                if (fres.isValid) {
                    filerefs.append("\t\t").append(nextid);
                    filerefs.append(" /* ").append(fname).append(" */");
                    filerefs
                            .append(" = { isa = PBXFileReference; fileEncoding = 4; lastKnownFileType = ");
                    filerefs.append(fres.type).append("; path = \"");
                    filerefs.append(fname).append("\"; sourceTree = \"<group>\"; };");
                    filerefs.append('\n');

                    display.append("\t\t\t\t").append(nextid);
                    display.append(" /* ").append(fname).append(" */");
                    display.append(",\n");

                    if (fres.isBuildable) {
                        int fileid = nextid;
                        nextid++;
                        buildrefs.append("\t\t").append(nextid);
                        buildrefs.append(" /* ").append(fname);
                        buildrefs.append(" in ").append(fres.isSource ? "Sources" : "Resources");
                        buildrefs.append(" */ = {isa = PBXBuildFile; fileRef = ").append(fileid);
                        buildrefs.append(" /* ").append(fname);
                        buildrefs.append(" */; };\n");

                        if (fres.isSource) {
                            source.append("\t\t\t\t").append(nextid);
                            source.append(" /* ").append(fname).append(" */");
                            source.append(",\n");
                        }
                        if (fres.isResource) {
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
            data = data.replace(template, display.toString());
            data = data.replace(TEMPL_SRC_BUILD, source.toString() + TEMPL_SRC_BUILD);
            data = data.replace(TEMPL_RESOURCES_BUILD, resource.toString() + TEMPL_RESOURCES_BUILD);
        }

        private class FileResource {

            private String  type        = null;
            private boolean isSource    = false;
            private boolean isResource  = false;
            private boolean isValid     = false;
            private boolean isBuildable = false;

            private FileResource(String fname) {
                if (fname == null)
                    return;
                int point = fname.lastIndexOf(".");
                if (point < 0 || point == fname.length())
                    return;

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
            public String toString() {
                return "[type=" + type + (isSource ? ", Source" : "")
                        + (isResource ? ", Resource" : "") + (isValid ? ", Valid" : "")
                        + (isBuildable ? ", Buildable" : "") + "]";
            }
        }
    }
}
