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

package org.xmlvm.proc.out;

import java.io.File;
import java.util.Arrays;

import org.xmlvm.Log;
import org.xmlvm.main.Arguments;
import org.xmlvm.proc.BundlePhase1;
import org.xmlvm.proc.BundlePhase2;
import org.xmlvm.proc.XmlvmProcessImpl;
import org.xmlvm.proc.out.build.VisualStudioFile;
import org.xmlvm.util.FileMerger;
import org.xmlvm.util.universalfile.UniversalFile;
import org.xmlvm.util.universalfile.UniversalFileCreator;

public class WP7OutputProcess extends XmlvmProcessImpl {
    private static final String        TAG                  = WP7OutputProcess.class
                                                                    .getSimpleName();

    public static final String         WP7_RESOURCES        = "res";
    public static final String         WP7_SOURCES          = "src";

    private static final UniversalFile WP7_COMPAT_LIB       = UniversalFileCreator.createDirectory(
                                                                    "/wp7/wrapper-lib.jar",
                                                                    "src/xmlvm2csharp/lib/wrapper");

    private static final String        APPLICATION_DELEGATE = "ApplicationDelegate.cs";
    private static final String        TEMPL_APP_CLASS      = "__APP_CLASS__";


    public WP7OutputProcess(Arguments arguments) {
        super(arguments);
        addSupportedInput(CSharpOutputProcess.class);
    }

    @Override
    public boolean processPhase1(BundlePhase1 bundle) {
        return true;
    }

    @Override
    public boolean processPhase2(BundlePhase2 bundle) {
        Log.debug("Processing WP7OutputProcess");

        replaceCompatLib(bundle);

        // Adjust output path of all sources and find application class
        String applicationClass = null;
        for (OutputFile in : bundle.getOutputFiles()) {
            in.setLocation(in.getLocation() + File.separator + arguments.option_app_name()
                    + File.separator + WP7_SOURCES);

            if (in.hasTag(CSharpOutputProcess.APPLICATION_TAG)) {
                if (applicationClass == null) {
                    applicationClass = in.getTag(CSharpOutputProcess.APPLICATION_TAG);
                } else {
                    Log.warn("Found second class inheriting from Compatlib.System.Windows.Application!");
                }
            }
        }

        if (applicationClass == null) {
            Log.error("Couldn't find class inheriting from Compatlib.System.Windows.Application in app!");
        }

        if (arguments.option_resource() != null) {
            copyResources(bundle);
        }

        createFileList(bundle);
        
        // Copy over AppDelegate
        OutputFile applicationDelegate = null;
        for (UniversalFile file : WP7_COMPAT_LIB.listFilesRecursively()) {
            if (file.getName().equals(APPLICATION_DELEGATE)) {
                OutputFile outputFile = new OutputFile(file);

                // Path
                String path = file.getRelativePath(WP7_COMPAT_LIB.getAbsolutePath());
                if (path.indexOf(File.separatorChar) >= 0) {
                    path = path.substring(0, path.lastIndexOf(File.separator));
                } else {
                    path = "";
                }
                outputFile.setLocation(arguments.option_out() + File.separator
                        + arguments.option_app_name() + File.separator + WP7_SOURCES
                        + File.separator + path);
                outputFile.setFileName(file.getName());

                applicationDelegate = outputFile;
                bundle.addOutputFile(outputFile);
            }
        }

        // Replace class name in AppDelegate
        String dataAsString = applicationDelegate.getDataAsString();
        dataAsString = dataAsString.replaceAll(TEMPL_APP_CLASS, applicationClass);
        applicationDelegate.setData(dataAsString.getBytes(), applicationDelegate.getLastModified());

        VisualStudioFile vs = new VisualStudioFile(bundle);
        vs.composeBuildFiles(arguments);

        return true;
    }

    /**
     * Copies the given resources into the project.
     * 
     * @param bundle
     */
    private void copyResources(BundlePhase2 bundle) {
        Log.debug("Adding resources...");

        for (String resource : arguments.option_resource()) {
            File file = new File(resource);
            if (!file.exists()) {
                Log.warn("Resource doesn't exist: " + file.getAbsolutePath());
                continue;
            }

            if (file.isFile()) {
                UniversalFile resourceFile = null;
                resourceFile = UniversalFileCreator.createFile(file);
                OutputFile outputFile = new OutputFile(resourceFile);
                outputFile.setLocation(arguments.option_out() + File.separator
                        + arguments.option_app_name());
                outputFile.setFileName(file.getName());
                bundle.addOutputFile(outputFile);
            } else if (file.isDirectory()) {
                UniversalFile resourceDirectory = UniversalFileCreator.createDirectory(file
                        .getAbsolutePath());

                for (UniversalFile resourceFile : resourceDirectory.listFilesRecursively()) {
                    OutputFile outputFile = new OutputFile(resourceFile);
                    outputFile.setLocation(arguments.option_out() + File.separator
                            + arguments.option_app_name() + File.separator
                            + resourceDirectory.getName());

                    // Path
                    String path = resourceFile.getRelativePath(resourceDirectory.getAbsolutePath());
                    if (path.indexOf(File.separatorChar) >= 0) {
                        path = path.substring(0, path.lastIndexOf(File.separator));
                    } else {
                        path = "";
                    }
                    outputFile.setFileName(path + File.separator + resourceFile.getName());
                    bundle.addOutputFile(outputFile);
                }
            }

        }
    }

    /**
     * Create a file list of all resources since WP7 cannot list the content of
     * directories.
     * 
     * @param bundle
     */
    private void createFileList(BundlePhase2 bundle) {
        StringBuilder buffer = new StringBuilder();
        buffer.append("// Generated by WP7OutputProcess. Do not edit!\n\n");
        buffer.append("namespace gen {\n");
        buffer.append("  public class FileList {\n");
        buffer.append("    public static string[] list = {\n");
        if (arguments.option_resource() != null) {
            for (String resource : arguments.option_resource()) {
                File file = new File(resource);
                if (!file.exists()) {
                    Log.warn("Resource doesn't exist: " + file.getAbsolutePath());
                    continue;
                }

                if (file.isFile()) {
                    buffer.append("      \"" + file.getName() + "\",\n");
                } else if (file.isDirectory()) {
                    UniversalFile resourceDirectory = UniversalFileCreator.createDirectory(file
                            .getAbsolutePath());
                    String resDir = resourceDirectory.getName();
                    for (UniversalFile resourceFile : resourceDirectory.listFilesRecursively()) {
                        // Path
                        String path = resDir + File.separator + resourceFile.getRelativePath(resourceDirectory
                                .getAbsolutePath());
                        if (path.indexOf(File.separatorChar) >= 0) {
                            path = path.substring(0, path.lastIndexOf(File.separator));
                        } else {
                            path = "";
                        }
                        path += File.separator;
                        path = path.replace("\\", "/");
                        buffer.append("      \"" + path + resourceFile.getName() + "\",\n");
                    }
                }
            }
        }
        buffer.append("    };\n");
        buffer.append("  }\n");
        buffer.append("}\n");
        OutputFile fileOutput = new OutputFile(buffer.toString());
        String path = arguments.option_out() + File.separator + arguments.option_app_name() + File.separator;
        path += "src" + File.separator + "gen";
        fileOutput.setLocation(path);
        fileOutput.setFileName("FileList.cs");
        bundle.addOutputFile(fileOutput);
    }

    /**
     * Right now all the Java-based WP7 API classes are going through the whole
     * pipeline. This is necessary as they are used for dependency and other
     * analysis. We replace those resources here with manually implemented
     * versions.
     */
    private void replaceCompatLib(BundlePhase2 resources) {
        UniversalFile[] wp7Files = WP7_COMPAT_LIB.listFilesRecursively();
        String skeletonPath = new File(arguments.option_out()).getAbsolutePath();
        String implementationPath = WP7_COMPAT_LIB.getAbsolutePath();
        FileMerger merger = new FileMerger(resources.getOutputFiles(), skeletonPath,
                Arrays.asList(wp7Files), implementationPath);
        merger.process();
    }

}
