
package org.xmlvm.proc.out.build;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileFilter;
import java.io.StringWriter;
import java.util.ArrayList;
import java.util.List;

import org.xmlvm.Log;
import org.xmlvm.main.Arguments;
import org.xmlvm.proc.out.OutputFile;
import org.xmlvm.util.FileUtil;

/**
 * Create a file responsible to "build" the selected target (i.e. a Makefile or
 * a Xcode file)
 *
 * @author teras
 */
public abstract class BuildFile {

    /**
     * Read data either from inside a JAR or from a file
     * 
     * @param JARResource
     *            The filename inside the JAR file
     * @param FileResource
     *            The filename in the local directoy
     * @return The data read either from JAR or from a local file
     */
    protected String readData(String JARResource, String FileResource) {
        StringWriter out = new StringWriter();
        BufferedReader in = FileUtil.findReaderResource(JARResource, FileResource);
        if (in == null)
            return "Can not read data from resources " + JARResource + " / " + FileResource;
        if (!FileUtil.copyReaders(in, out))
            return "Can not copy data from resources " + JARResource + " / " + FileResource;
        return out.toString();
    }

    /**
     * Get a list of filenames from a OutputFile list, which are in accordance
     * with some criteria
     * 
     * @param fileList
     *            The list of OutputFile
     * @param filter
     *            Filename criteria
     * @return list of filenames with valid files
     */
    protected static List<String> getFileNames(List<OutputFile> fileList, FileFilter filter) {
        ArrayList<String> result = new ArrayList<String>();

        for (OutputFile outfile : fileList) {
            File[] files = outfile.getAffectedSourceFiles();
            if (files != null) {
                for (File copyFile : files) {
                    if (filter.accept(copyFile))
                        result.add(copyFile.getName());
                }
            } else {
                Log.debug("Null items found while parsing " + outfile.getClass().getName());
            }
        }
        return result;
    }

    /**
     * Create build files for this target
     * 
     * @param result
     *            The created build-file
     * @param arguments
     *            XMLVM command line arguments
     * @return The produced build-file
     */
    public abstract String composeBuildFiles(List<OutputFile> result, Arguments arguments);
}
