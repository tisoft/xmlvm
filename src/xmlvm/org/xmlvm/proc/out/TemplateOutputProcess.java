
package org.xmlvm.proc.out;

import java.io.File;
import java.util.ArrayList;
import java.util.List;

import org.xmlvm.main.Arguments;
import org.xmlvm.proc.in.InputProcess;
import org.xmlvm.util.FileUtil;
import org.xmlvm.util.JarUtil;

/**
 * 
 * @author teras
 */
public class TemplateOutputProcess extends OutputProcess {

    private static final String     IPHONE_TEMPL_PROJNAME  = "__PROJNAME__";
    private static final String     IPHONE_TEMPL_JAR_PATH  = "/iphone/netbeans/";
    private static final String     IPHONE_TEMPL_FILE_PATH = "var/iphone/netbeans/";
    private static final String[][] Files                  = { { "Main.java", "src/xmlvm/" },
            { "build-impl.xml", "nbproject/" }, { "build.xml", "" },
            { "genfiles.properties", "nbproject/" }, { "manifest.mf", "" },
            { "project.properties", "nbproject/" }, { "project.xml", "nbproject/" },
            { ".project", "" }, { ".classpath", "" }      };
    private List<OutputFile>        result                 = new ArrayList<OutputFile>();

    public TemplateOutputProcess(Arguments arguments) {
        super(arguments);
        addSupportedInput(InputProcess.class);
    }

    @Override
    public List getOutputFiles() {
        return result;
    }

    @Override
    public boolean process() {
        String projname = arguments.option_app_name();
        String outpath = arguments.option_out() + "/";

        for (int i = 0; i < Files.length; i++) {
            if (!addFile(Files[i][0], outpath + Files[i][1], projname))
                return false;
        }

        File jarlib = new File(JarUtil.findSelfJar());
        ResourceOutputFile jarout = new ResourceOutputFile(jarlib.getParent(), outpath + "lib/",
                jarlib.getName());
        result.add(jarout);

        return true;
    }

    private boolean addFile(String filename, String to, String projname) {
        OutputFile file = new OutputFile(null);
        file.setFileName(filename);
        file.setLocation(to);
        if (!file.setDataFromStream(FileUtil.findStreamResource(IPHONE_TEMPL_JAR_PATH + filename,
                IPHONE_TEMPL_FILE_PATH + filename)))
            return false;
        file.setData(file.getData().replace(IPHONE_TEMPL_PROJNAME, projname));
        result.add(file);
        return true;
    }
}
