
package org.xmlvm.proc.out.build;

import java.io.FileFilter;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;

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
                                                                                      IPhoneOutputProcess.IPHONE_RESOURCES);
    /* Templates */
    private static final String                  TEMPL_PROJNAME               = "__PROJNAME__";
    private static final String                  TEMPL_FILEREFS               = "__FILEREFS__";
    private static final String                  TEMPL_BUILDREFS              = "__BUILDREFS__";
    private static final String                  TEMPL_APP_SRC                = "__APPSRC__";
    private static final String                  TEMPL_IPHONE_SRC             = "__IPHONESRC__";
    private static final String                  TEMPL_ANDROID_SRC            = "__ANDROIDSRC__";
    private static final String                  TEMPL_RESOURCES              = "__RESOURCES__";
    private static final String                  TEMPL_SRC_BUILD              = "__SRC_BUILD__";
    private static final String                  TEMPL_RESOURCES_BUILD        = "__RESOURCES_BUILD__";
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
        resourcefiles.put("txt", "text");
        resourcefiles.put("plist", "text.plist");
    }

    /* Produce Xcode project file */
    public String composeBuildFiles(List<OutputFile> allfiles, Arguments arguments) {
        String projname = arguments.option_app_name();

        /* Search and load xcode template */
        XCodeProj proj;
        try {
            proj = new XCodeProj(projname, allfiles);
        } catch (IOException ex) {
            return ex.getMessage();
        }
        proj.injectFiles(TEMPL_APP_SRC, FILTER_APP);
        proj.injectFiles(TEMPL_IPHONE_SRC, FILTER_IPHONE);
        proj.injectFiles(TEMPL_ANDROID_SRC, FILTER_ANDROID);
        proj.injectFiles(TEMPL_RESOURCES, FILTER_RESOURCES);
        proj.finalizeObject();

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

        private void finalizeObject() {
            data = data.replace(TEMPL_FILEREFS, "").replace(TEMPL_BUILDREFS, "").replace(
                    TEMPL_RESOURCES_BUILD, "").replace(TEMPL_SRC_BUILD, "");
        }

        private void injectFiles(String template, FileFilter filter) {
            StringBuffer filerefs = new StringBuffer();
            StringBuffer buildrefs = new StringBuffer();
            StringBuffer display = new StringBuffer();
            StringBuffer source = new StringBuffer();
            StringBuffer resource = new StringBuffer();

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
        }
    }
}
