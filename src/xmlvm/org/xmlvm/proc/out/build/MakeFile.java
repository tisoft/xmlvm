
package org.xmlvm.proc.out.build;

import java.util.List;

import org.xmlvm.main.Arguments;
import org.xmlvm.proc.out.OutputFile;

/**
 * @author teras
 */

public class MakeFile extends BuildFile {

    private static final String TEMPL_PROJNAME                 = "__PROJNAME__";
    private static final String IPHONE_MAKFILE_IN_JAR_RESOURCE = "/iphone/Makefile";
    private static final String IPHONE_MAKEFILE_PATH           = "var/iphone/Makefile";

    @Override
    public String composeBuildFiles(List<OutputFile> result, Arguments arguments) {
        String makefile_data = readData(IPHONE_MAKFILE_IN_JAR_RESOURCE, IPHONE_MAKEFILE_PATH);
        if (makefile_data == null)
            return "Could not initialize Makefile";
        makefile_data = makefile_data.replace(TEMPL_PROJNAME, arguments.option_app_name());
        OutputFile makefile = new OutputFile(makefile_data);
        makefile.setFileName("Makefile");
        makefile.setLocation(arguments.option_out());
        result.add(makefile);
        return null;
    }
}
