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

package org.xmlvm.plugins.c;

import java.io.BufferedReader;
import java.io.File;
import java.io.IOException;
import java.io.StringReader;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

import org.jdom.Document;
import org.xmlvm.Log;
import org.xmlvm.main.Arguments;
import org.xmlvm.main.Targets;
import org.xmlvm.proc.BundlePhase1;
import org.xmlvm.proc.BundlePhase2;
import org.xmlvm.proc.NativeResourceLoader;
import org.xmlvm.proc.XmlvmProcessImpl;
import org.xmlvm.proc.XmlvmResource;
import org.xmlvm.proc.XmlvmResource.Type;
import org.xmlvm.proc.XmlvmResource.XmlvmMethod;
import org.xmlvm.proc.XsltRunner;
import org.xmlvm.proc.out.OutputFile;
import org.xmlvm.proc.out.VtableOutputProcess;
import org.xmlvm.util.ClassListLoader;
import org.xmlvm.util.universalfile.UniversalFile;
import org.xmlvm.util.universalfile.UniversalFileCreator;

/**
 * This process takes XMLVM and generates C source code from it.
 */
public class COutputProcess extends XmlvmProcessImpl {
    private static final String              TAG                 = COutputProcess.class
                                                                         .getSimpleName();
    public static final String               TAG_CLASS_NAME      = "CLASS-NAME";
    private static final String              C_SOURCE_SUFFIX     = "c";
    private static final String              XSL_FILE_NAME       = "xmlvm2ios.xsl";

    private final String                     sourceExtension;
    private final String                     headerExtension     = ".h";

    private final Map<String, XmlvmResource> resourcePool        = new HashMap<String, XmlvmResource>();
    private final NativeResourceLoader       nativeResourceLoader;
    private Set<String>                      reflectionClassList = null;


    /**
     * Initializes the {@link COutputProcess} with the given arguments.
     */
    public COutputProcess(Arguments arguments) {
        super(arguments);
        sourceExtension = "." + arguments.option_c_source_extension();
        addSupportedInput(VtableOutputProcess.class);

        nativeResourceLoader = new NativeResourceLoader(UniversalFileCreator.createDirectory(
                "/lib/native-c-lib.jar", "src/xmlvm2c/lib/native"), C_SOURCE_SUFFIX);
        if (arguments.option_reflection_class_list() != null) {
            reflectionClassList = 
                    ClassListLoader.loadReflectionClassList(UniversalFileCreator.createFile(new File(arguments
                            .option_reflection_class_list())));                    
        }
    }


    @Override
    public boolean processPhase1(BundlePhase1 bundle) {
        return true;
    }

    @Override
    public boolean processPhase2(BundlePhase2 bundle) {
        for (XmlvmResource xmlvm : bundle.getResources()) {
            if (xmlvm != null) {
                resourcePool.put(xmlvm.getFullName(), xmlvm);
            }            
        }                

        List<OutputFile> xmlvmFiles = new ArrayList<OutputFile>();
        for (OutputFile outputFile : bundle.getOutputFiles()) {
            // Pass-through all non-xmlvm files.
            if (outputFile.getFileName().endsWith(".xmlvm")) {
                bundle.removeOutputFile(outputFile);
                xmlvmFiles.add(outputFile);
            }
        }

        if (arguments.option_gen_native_skeletons()) {
            for (XmlvmResource xmlvm : resourcePool.values()) {
                if (xmlvm.getType() == Type.CONST_POOL) {
                    continue;
                }
                OutputFile file = genNativeSkeletons(xmlvm);
                if (file != null) {
                    file.setLocation(arguments.option_out());
                    bundle.addOutputFile(file);
                }
            }
            return true;
        }

        // Process all collected resources.
        for (XmlvmResource xmlvm : resourcePool.values()) {
            OutputFile[] files = new OutputFile[0];
            if (xmlvm.getType() == Type.CONST_POOL) {
                if (arguments.option_target() != Targets.GENCWRAPPERS) {
                    files = genConstantPool(xmlvm);
                }
            } else {
                files = genC(xmlvm);
            }
            for (OutputFile file : files) {
                file.setLocation(arguments.option_out());
                bundle.addOutputFile(file);
            }
        }

        // Makes sure that for each type we create, the native parts, if
        // present, are added to the list of outputFiles.
        bundle.addOutputFiles(loadNativeResources(bundle.getOutputFiles()));
        return true;
    }

    /**
     * For the given set of outputFiles, this methods loads all native parts.
     */
    private Collection<OutputFile> loadNativeResources(Collection<OutputFile> outputFiles) {
        Log.debug(TAG, "Loading native resources");

        List<OutputFile> result = new ArrayList<OutputFile>();
        Set<String> types = new HashSet<String>();
        for (OutputFile outputFile : outputFiles) {
            String fileName = outputFile.getFileName();
            if (fileName.endsWith(sourceExtension)) {
                String typeName = fileName.substring(0,
                        fileName.length() - sourceExtension.length());
                types.add(typeName);
            }
        }
        for (UniversalFile nativeFile : nativeResourceLoader.load(types)) {
            OutputFile outputFile = new OutputFile(nativeFile);
            outputFile.setLocation(arguments.option_out());
            String nativeFileName = nativeFile.getName();
            outputFile.setFileName(nativeFileName.substring(0, nativeFileName.length()
                    - (C_SOURCE_SUFFIX.length() + 1))
                    + sourceExtension);
            result.add(outputFile);
        }
        return result;
    }

    /**
     * From the given XmlvmResource creates a header as well as C-file.
     */
    private OutputFile[] genC(XmlvmResource xmlvm) {
        Document doc = xmlvm.getXmlvmDocument();
        // By default, generate reflection data
        boolean genReflectionData = true;
        if (reflectionClassList != null) {
            genReflectionData = reflectionClassList.contains(xmlvm.getFullName());
        }
        // The filename will be the name of the first class
        String namespaceName = xmlvm.getPackageName();
        String className = xmlvm.getName().replace('$', '_');
        String fileNameStem = (namespaceName + "." + className).replace('.', '_');
        String headerFileName = fileNameStem + headerExtension;
        String mFileName = fileNameStem + sourceExtension;

        OutputFile headerFile = XsltRunner.runXSLT(XSL_FILE_NAME, doc, new String[][] {
                { "packageName", getIosPackageName() }, { "pass", "emitHeader" },
                { "header", headerFileName } });
        headerFile.setFileName(headerFileName);

        OutputFile mFile = XsltRunner.runXSLT(XSL_FILE_NAME, doc, new String[][] {
                { "packageName", getIosPackageName() }, { "pass", "emitImplementation" },
                { "header", headerFileName }, { "genReflectionData", "" + genReflectionData } });
        mFile.setFileName(mFileName);

        String clazz = xmlvm.getFullName().replace('.', '_').replace('$', '_');
        mFile.setTag(TAG_CLASS_NAME, clazz);

        return new OutputFile[] { headerFile, mFile };
    }

    private String getIosPackageName() {
        return arguments.option_xmlvm_new_ios_api() ? "org_xmlvm_ios" : "org_xmlvm_iphone";
    }

    /**
     * Generates the string constant pool for this application. The constant
     * pool is also generated by the xmlvm2c.xsl stylesheet. The generated C
     * code is essentially a <code>const char*</code> array of the individual
     * strings that occur in the application. The index of a string into this
     * array represents the constant pool ID.
     * 
     * @param xmlvm
     *            An XmlvmResource of type CONST_POOL.
     * @return An OutputFile containing the constant pool.
     */
    private OutputFile[] genConstantPool(XmlvmResource xmlvm) {
        Document doc = xmlvm.getXmlvmDocument();

        OutputFile constPoolFile = XsltRunner.runXSLT(XSL_FILE_NAME, doc);
        constPoolFile.setFileName("constant_pool" + sourceExtension);

        return new OutputFile[] { constPoolFile };
    }

    /**
     * Generates C-source code skeletons for all native methods of a class. This
     * method will be triggered by the --gen-native-skeletons option. vtable
     * indices are correctly initialized for non-static native methods.
     * 
     * @param resource
     *            Class for which skeletons are to be generated.
     * @return Generated C-source code. If class contains no native methods,
     *         null is returned.
     */
    private OutputFile genNativeSkeletons(XmlvmResource resource) {
        Document doc = resource.getXmlvmDocument();
        // The filename will be the name of the first class
        String namespaceName = resource.getPackageName();
        String className = resource.getName().replace('$', '_');
        String fileNameStem = (namespaceName + "." + className).replace('.', '_');
        String headerFileName = fileNameStem + headerExtension;
        String mFileName = "native_" + fileNameStem + sourceExtension;

        StringBuilder mBuffer = new StringBuilder();
        mBuffer.append("\n#include \"xmlvm.h\"\n");
        mBuffer.append("#include \"" + headerFileName + "\"\n\n");

        OutputFile mFile = XsltRunner.runXSLT(XSL_FILE_NAME, doc, new String[][] {
                { "packageName", getIosPackageName() }, { "pass", "emitNativeSkeletons" },
                { "header", headerFileName } });

        if (mFile.isEmpty()) {
            return null;
        }

        mFile.setData(mBuffer.toString() + mFile.getDataAsString());
        mFile.setFileName(mFileName);

        return mFile;
    }

}
