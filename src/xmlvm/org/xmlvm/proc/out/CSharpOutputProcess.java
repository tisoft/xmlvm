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
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

import org.jdom.Document;
import org.xmlvm.Log;
import org.xmlvm.main.Arguments;
import org.xmlvm.proc.BundlePhase1;
import org.xmlvm.proc.BundlePhase2;
import org.xmlvm.proc.XmlvmProcessImpl;
import org.xmlvm.proc.XmlvmResource;
import org.xmlvm.proc.XmlvmResource.Type;
import org.xmlvm.proc.XmlvmResource.XmlvmField;
import org.xmlvm.proc.XmlvmResource.XmlvmMethod;
import org.xmlvm.proc.XsltRunner;
import org.xmlvm.util.FileMerger;
import org.xmlvm.util.ObjectHierarchyHelper;
import org.xmlvm.util.universalfile.UniversalFile;
import org.xmlvm.util.universalfile.UniversalFileCreator;

/**
 * This process takes XMLVM and generates C# source code from it.
 */
public class CSharpOutputProcess extends XmlvmProcessImpl {

    public static final String               APPLICATION_CLASS      = "Compatlib.System.Windows.Application";
    public static final String               APPLICATION_TAG        = "APPLICATION";

    private static final String              TAG                    = CSharpOutputProcess.class
                                                                            .getSimpleName();
    private static final String              CS_EXTENSION           = ".cs";

    private static final UniversalFile       CSHARP_JAVA_COMPAT_LIB = UniversalFileCreator
                                                                            .createDirectory(
                                                                                    "/xmlvm2csharp/java-compat-lib.jar",
                                                                                    "src/xmlvm2csharp/compat-lib/java");
    private static final UniversalFile       CSHARP_NATIVE_LIB      = UniversalFileCreator
                                                                            .createDirectory(
                                                                                    "/lib/native-csharp-lib.jar",
                                                                                    "src/xmlvm2csharp/lib/native");

    private final Map<String, XmlvmResource> resourcePool           = new HashMap<String, XmlvmResource>();
    private StringBuilder                    interfaceNameStr       = new StringBuilder();
    private static String                    interfaceNameDelimiter = ",";
    private ObjectHierarchyHelper            hierarchyHelper;


    /**
     * Initializes the {@link CSharpOutputProcess} with the given arguments.
     */
    public CSharpOutputProcess(Arguments arguments) {
        super(arguments);
        addSupportedInput(RecursiveResourceLoadingProcess.class);
    }

    @Override
    public boolean processPhase1(BundlePhase1 bundle) {
        return true;
    }

    @Override
    public boolean processPhase2(BundlePhase2 bundle) {
        Log.debug("Processing CSharpOutputProcess");
        for (XmlvmResource xmlvm : bundle.getResources()) {
            if (xmlvm != null) {
                resourcePool.put(xmlvm.getFullName(), xmlvm);
            }
        }

        this.hierarchyHelper = new ObjectHierarchyHelper(resourcePool, arguments);
        this.hierarchyHelper.redeclareInterfaceMethodsInAbstractClasses();

        for (XmlvmResource xmlvm : resourcePool.values()) {
            processResource(xmlvm);
        }

        List<OutputFile> xmlvmFiles = new ArrayList<OutputFile>();
        for (OutputFile outputFile : bundle.getOutputFiles()) {
            // Pass-through all non-xmlvm files.
            if (outputFile.getFileName().endsWith(".xmlvm")) {
                bundle.removeOutputFile(outputFile);
                xmlvmFiles.add(outputFile);
            }
        }

        // Process all collected resources.
        File outDir = new File(arguments.option_out());
        if (!outDir.exists()) {
            outDir.mkdirs();
        }
        UniversalFile dir = UniversalFileCreator.createFile(outDir);
        for (XmlvmResource xmlvm : resourcePool.values()) {
            if (xmlvm.getType() == Type.CONST_POOL) {
                continue;
            }
            OutputFile csFile = this.genCSharp(xmlvm);
            if (csFile != null) {
                csFile.setLocation(dir.getAbsolutePath());
                bundle.addOutputFile(csFile);
            }
        }

        // Merge native resources
        UniversalFile[] nativeFiles = CSHARP_NATIVE_LIB.listFilesRecursively();
        FileMerger merger = new FileMerger(bundle.getOutputFiles(), dir.getAbsolutePath(),
                Arrays.asList(nativeFiles), CSHARP_NATIVE_LIB.getAbsolutePath());
        merger.process();

        // This contains _nTIB, _nElement, _nException and other helper classes
        // for Java to C# compatibility, they are added separately so they can
        // be added to the VS build file
        for (UniversalFile file : CSHARP_JAVA_COMPAT_LIB.listFilesRecursively()) {
            OutputFile outputFile = new OutputFile(file);
            outputFile.setLocation(arguments.option_out());

            // Path
            String path = file.getRelativePath(CSHARP_JAVA_COMPAT_LIB.getAbsolutePath());
            if (path.indexOf(".svn") >= 0) {
                continue;
            } else if (path.indexOf(File.separatorChar) >= 0) {
                path = path.substring(0, path.lastIndexOf(File.separator));
            } else {
                path = "";
            }
            outputFile.setFileName(path + File.separator + file.getName());
            bundle.addOutputFile(outputFile);
        }

        return true;
    }

    /**
     * Process all resources and adjust them for C# specific issues (method
     * overriding, interface fields) so that the xmlvm2csharp.xsl can handle
     * those cases
     * 
     * @param resource
     *            XmlvmResource which should be adjusted
     */
    private void processResource(XmlvmResource resource) {
        // Don't recompute vtables and don't compute them for interfaces
        if (resource == null || resource.getType() == Type.CONST_POOL) {
            return;
        }

        if (resource.isInterface()) {
            addInterfaceFieldsToChildren(resource);

            this.interfaceNameStr.append(resource.getFullName());
            this.interfaceNameStr.append(interfaceNameDelimiter);
        } else {
            markOverridingMethods(resource);
        }
    }

    /**
     * Add all fields declared in the interface given as resource to all classes
     * which implement this interface if the field doesn't exist in the class
     * already
     * 
     * @param resource
     *            XmlvmResource of the interface containing the fields
     */
    private void addInterfaceFieldsToChildren(XmlvmResource resource) {
        Set<XmlvmResource> children = hierarchyHelper.getChildrenRecursive(resource.getFullName());

        for (XmlvmResource child : children) {
            if (!child.isInterface()) {
                // Record all fields in the child
                Set<String> fieldNames = new HashSet<String>();
                for (XmlvmField field : child.getFields()) {
                    fieldNames.add(field.getName());
                }

                for (XmlvmField field : resource.getFields()) {
                    // If the list doesn't contain a field named like the
                    // interface field add it
                    if (!fieldNames.contains(field.getName())) {
                        child.addInterfaceField(resource.getFullName(), field);
                    }
                }
            }
        }
    }

    /**
     * Mark all methods which are overriding a method from a parent class with a
     * special isOverriding xml attribute so that the xmlvm2csharp stylesheet
     * can emit the special 'override' keyword
     * 
     * @param resource
     *            XmlvmResource of the class to process
     */
    private void markOverridingMethods(XmlvmResource resource) {
        List<XmlvmMethod> methods = resource.getMethodsSorted();
        for (XmlvmMethod method : methods) {
            if (method.isConstructor() || method.isStatic() || method.isPrivate()) {
                continue;
            }
            if (hierarchyHelper.isOverridding(resource.getFullName(), method)) {
                method.setOverriding(true);
            }
        }
    }

    /**
     * From the given XmlvmResource creates a cs-file.
     */
    public OutputFile genCSharp(XmlvmResource xmlvm) {
        Document doc = xmlvm.getXmlvmDocument();
        // The filename will be the name of the first class
        String namespaceName = xmlvm.getPackageName();
        String className = xmlvm.getName().replace('$', '_');
        String fileNameStem = (namespaceName + "." + className).replace('.', File.separatorChar);
        String csFileName = fileNameStem + CS_EXTENSION;

        Log.debug(TAG, "Processing " + xmlvm.getFullName());

        OutputFile csFile = XsltRunner.runXSLT("xmlvm2csharp.xsl", doc, new String[][] {
                { "gen-skeleton", "" + arguments.option_gen_native_skeletons() },
                { "interface-name-str", this.interfaceNameStr.toString() } });
        csFile.setFileName(csFileName);

        // Tag file extending Compatlib.System.Windows.Application so we can
        // identify it in the WP7 processes
        if (xmlvm.getSuperTypeName() != null && xmlvm.getSuperTypeName().equals(APPLICATION_CLASS)) {
            csFile.setTag(APPLICATION_TAG, xmlvm.getFullName());
        }

        if (csFile.isEmpty()) {
            return null;
        } else {
            return csFile;
        }
    }

}
