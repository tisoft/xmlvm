/*
 * Copyright (c) 2004-2009 XMLVM --- An XML-based Programming Language
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

package org.xmlvm.proc.out;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

import org.jdom.Attribute;
import org.jdom.Document;
import org.jdom.Element;
import org.xmlvm.Log;
import org.xmlvm.main.Arguments;
import org.xmlvm.proc.LibraryLoader;
import org.xmlvm.proc.XmlvmProcess;
import org.xmlvm.proc.XmlvmProcessImpl;
import org.xmlvm.proc.XmlvmResource;
import org.xmlvm.proc.XmlvmResource.XmlvmField;
import org.xmlvm.proc.XmlvmResource.XmlvmInvokeInstruction;
import org.xmlvm.proc.XmlvmResource.XmlvmMemberReadWrite;
import org.xmlvm.proc.XmlvmResource.XmlvmMethod;
import org.xmlvm.proc.XmlvmResource.XmlvmVtable;
import org.xmlvm.proc.XmlvmResourceProvider;
import org.xmlvm.proc.XsltRunner;

public class COutputProcess extends XmlvmProcessImpl<XmlvmResourceProvider> {
    private final static String        TAG             = COutputProcess.class.getSimpleName();

    private final String               sourceExtension;
    private final String               headerExtension = ".h";
    private List<OutputFile>           outputFiles     = new ArrayList<OutputFile>();

    private Map<String, XmlvmResource> resourcePool    = new HashMap<String, XmlvmResource>();


    /**
     * Class {@link Vtable} represents the Vtable for one class or interface. It
     * is basically a list of {@link org.xmlvm.proc.XmlvmResource.XmlvmMethod}
     * that includes all methods of that class that have an entry in the Vtable.
     * Note that only public and protected methods have entries in the Vtable.
     * Also note that the Vtable includes all eligible methods from all base
     * classes. The Vtable index of a method corresponds to the list index.
     * 
     */
    static class Vtable {

        private List<XmlvmMethod> virtualMethods;


        /**
         * Constructs an empty {@link Vtable}.
         */
        public Vtable() {
            virtualMethods = new ArrayList<XmlvmMethod>();
        }

        /**
         * Constructs a new {@link Vtable} based on an existing Vtable.
         * 
         * @param vtable
         *            Initial {@link Vtable}. A deep copy is performed on
         *            <code>vtable</code>.
         */
        public Vtable(Vtable vtable) {
            virtualMethods = new ArrayList<XmlvmMethod>(vtable.virtualMethods);
        }

        public Vtable clone() {
            return new Vtable(this);
        }

        /**
         * Determine the Vtable index of a method.
         * 
         * @param method
         *            Method for which the Vtable index is to be determined.
         * @return Vtable index (&gt;= 0) of this method or -1 if method has no
         *         entry in the Vtable.
         */
        public int getVtableIndex(XmlvmMethod method) {
            for (int i = 0; i < virtualMethods.size(); i++) {
                if (virtualMethods.get(i).doesOverrideMethod(method)) {
                    return i;
                }
            }
            return -1;
        }

        /**
         * Determines the Vtable index that an
         * <code>&lt;dex:invoke-virtual&gt;</code> instruction should use.
         * 
         * @param instruction
         *            <code>&lt;dex:invoke-virtual&gt;</code> instruction for
         *            which to determine the Vtable index.
         * @return Vtable index (&gt;= 0) for this instruction or -1 if
         *         instruction has no entry in the Vtable (which indicates an
         *         internal error).
         */
        public int getVtableIndex(XmlvmInvokeInstruction instruction) {
            for (int i = 0; i < virtualMethods.size(); i++) {
                if (virtualMethods.get(i).doesOverrideMethod(instruction)) {
                    return i;
                }
            }
            return -1;
        }

        /**
         * Adds a method to the Vtable.
         * 
         * @param method
         *            Method to be added.
         */
        public void addMethod(XmlvmMethod method) {
            int idx = virtualMethods.size();
            method.setVtableIndex(idx);
            virtualMethods.add(method);
        }

        /**
         * @param vtable
         */
        public void addVtable(Vtable vtable) {
            for (XmlvmMethod method : vtable.virtualMethods) {
                if (getVtableIndex(method) == -1) {
                    addMethod(method);
                }
            }
        }

        /**
         * Determines the size of the Vtable.
         * 
         * @return Size of Vtable.
         */
        public int getVtableSize() {
            return virtualMethods.size();
        }

    }


    private Map<String, Vtable> vtables = new HashMap<String, Vtable>();


    public COutputProcess(Arguments arguments) {
        super(arguments);
        sourceExtension = "." + arguments.option_c_source_extension();

        // Add empty class name that acts as a base class for java.lang.Object
        vtables.put("", new Vtable());

        // addAllXmlvmEmittingProcessesAsInput();
        // We need the special Vtable information in order to be able to produce
        // C code.
        addSupportedInput(XmlvmJavaRuntimeAnnotationProcess.class);
    }

    @Override
    public List<OutputFile> getOutputFiles() {
        return outputFiles;
    }

    @Override
    public boolean process() {
        List<XmlvmResourceProvider> preprocesses = preprocess();

        // Collect all XmlvmResource instances.
        for (XmlvmResourceProvider process : preprocesses) {
            List<XmlvmResource> xmlvmResources = process.getXmlvmResources();
            for (XmlvmResource xmlvm : xmlvmResources) {
                if (xmlvm != null) {
                    resourcePool.put(xmlvm.getFullName(), xmlvm);
                }
            }

            // Pass-through all non-xmlvm files.
            List<OutputFile> files = ((XmlvmProcess<?>) process).getOutputFiles();
            if (files != null) {
                for (OutputFile outputFile : files) {
                    if (!outputFile.getFileName().endsWith("xmlvm")) {
                        outputFiles.add(outputFile);
                    }
                }
            }
        }

        if (arguments.option_gen_native_skeletons()) {
            for (XmlvmResource xmlvm : resourcePool.values()) {
                OutputFile file = genNativeSkeletons(xmlvm);
                if (file != null) {
                    file.setLocation(arguments.option_out());
                    outputFiles.add(file);
                }
            }
            return true;
        }

        computeVtables();
        if (!arguments.option_gen_wrapper()) {
            annotateVtableInvokes();
            adjustTypes();
        }

        // Process all collected resources.
        for (XmlvmResource xmlvm : resourcePool.values()) {
            OutputFile[] files = genC(xmlvm);
            for (OutputFile file : files) {
                file.setLocation(arguments.option_out());
                outputFiles.add(file);
            }
        }
        return true;
    }

    /**
     * Compute Vtables for all {@link org.xmlvm.proc.XmlvmResource}s.
     */
    private void computeVtables() {
        for (XmlvmResource resource : resourcePool.values()) {
            computeVtable(resource);
        }
    }

    /**
     * Compute the Vtable for one {@link org.xmlvm.proc.XmlvmResource}.
     * 
     * @param resource
     *            {@link #XmlvmResource} for which to compute the Vtable.
     */
    private void computeVtable(XmlvmResource resource) {
        if (resource == null || vtables.containsKey(resource.getFullName())) {
            return;
        }

        String baseClassName = resource.getSuperTypeName();
        if (!vtables.containsKey(baseClassName)) {
            XmlvmResource baseClass = getXmlvmResource(baseClassName);
            if (baseClass == null) {
                // When we don't have the base class, we cannot calculate the
                // vtable for this class.
                return;
            }
            computeVtable(baseClass);
        }

        // Add all methods from base classes to vtable
        Vtable baseClassVtable = vtables.get(baseClassName);
        Vtable thisClassVtable = baseClassVtable.clone();
        List<XmlvmMethod> methods = resource.getMethods();
        for (XmlvmMethod method : methods) {
            if (method.isConstructor() || method.isStatic() || method.isPrivate()) {
                continue;
            }
            int idx = baseClassVtable.getVtableIndex(method);
            if (idx == -1) {
                thisClassVtable.addMethod(method);
            } else {
                method.setVtableIndex(idx);
            }
        }

        // If this is an interface, add vtable of all base interfaces
        if (resource.isInterface()) {
            addAllBaseInterfaceVtables(thisClassVtable, resource);
        }

        Log.debug("Size of vtable for class " + resource.getFullName() + ": "
                + thisClassVtable.virtualMethods.size());

        resource.setVtableSize(thisClassVtable.getVtableSize());
        vtables.put(resource.getFullName(), thisClassVtable);

        // Add vtable initialization for all interfaces that this class
        // implements
        if (!resource.isInterface()) {
            Set<XmlvmResource> interfaces = getAllImplementedInterfaces(resource);
            Log.debug("Implemented interfaces: ");
            for (XmlvmResource iface : interfaces) {
                Log.debug("    " + iface.getFullName());
                Vtable ifaceVtable = vtables.get(iface.getFullName());
                XmlvmVtable vt = resource.createVtable("interface-vtable", iface.getFullName(),
                        ifaceVtable.getVtableSize());
                for (XmlvmMethod m : iface.getMethods()) {
                    vt.addMapping(ifaceVtable.getVtableIndex(m), thisClassVtable.getVtableIndex(m));
                    Log.debug("        " + m.getName() + ": " + ifaceVtable.getVtableIndex(m)
                            + " = " + thisClassVtable.getVtableIndex(m));
                }
            }
        }
    }

    /**
     * The vtable of an interface also includes the vtables of all base
     * interfaces due to multiple inheritance of Java interfaces. This means
     * that the vtable of an interface contains all methods inherited directly
     * or indirectly from all base interfaces.
     * 
     * @param vtable
     *            vtable to which the base interface's vtables is to be added.
     * @param resource
     *            The interface whose base interfaces's vtables are to be
     *            included.
     */
    private void addAllBaseInterfaceVtables(Vtable vtable, XmlvmResource resource) {
        String interfaces = resource.getInterfaces();
        if (interfaces == null) {
            return;
        }
        for (String iface : interfaces.split(",")) {
            XmlvmResource ifaceResource = getXmlvmResource(iface);
            computeVtable(ifaceResource);
            Vtable ifaceVtable = vtables.get(ifaceResource.getFullName());
            vtable.addVtable(ifaceVtable);
        }
    }

    /**
     * Retrieves a list of all (directly or indirectly) implemented interfaces
     * of a class. XMLVM will associate this list with a class when generating
     * code. Having a complete list of all implemented interfaces allows for a
     * more efficient implementation of invoke-interface.
     * 
     * @param resource
     *            Class for which all implemented interfaces are to be
     *            retrieved.
     * @return List of interfaces (either directly or indirectly through
     *         inheritance) that this class implements.
     */
    private Set<XmlvmResource> getAllImplementedInterfaces(XmlvmResource resource) {
        Set<XmlvmResource> collectedInterfaces = new HashSet<XmlvmResource>();
        String interfaces = resource.getInterfaces();
        // Collect immediate implemented interfaces
        if (interfaces != null) {
            for (String iface : interfaces.split(",")) {
                XmlvmResource ifaceResource = getXmlvmResource(iface);
                if (ifaceResource == null) {
                    continue;
                }
                Set<XmlvmResource> baseInterfaces = getAllImplementedInterfaces(ifaceResource);
                computeVtable(ifaceResource);
                collectedInterfaces.add(ifaceResource);
                collectedInterfaces.addAll(baseInterfaces);
            }
        }
        // Collect interfaces of base classes
        String baseClass = resource.getSuperTypeName();
        if (!baseClass.equals("")) {
            Set<XmlvmResource> baseClassInterfaces = getAllImplementedInterfaces(getXmlvmResource(baseClass));
            collectedInterfaces.addAll(baseClassInterfaces);
        }
        return collectedInterfaces;
    }

    /**
     * Annotate all <code>&lt;dex:invoke-virtual&gt;</code> and
     * <code>&lt;dex:invoke-interface&gt;</code> instructions by adding the XML
     * attribute <code>vtable-index</code>.
     */
    private void annotateVtableInvokes() {
        for (XmlvmResource resource : resourcePool.values()) {
            List<XmlvmMethod> methods = resource.getMethods();
            for (XmlvmMethod method : methods) {
                for (XmlvmInvokeInstruction instruction : method.getVtableInvokeInstructions()) {
                    String className = instruction.getClassType();
                    if (className.indexOf("[]") != -1) {
                        className = "java.lang.Object";
                    }
                    if (!vtables.containsKey(className)) {
                        XmlvmResource clazz = getXmlvmResource(className);
                        computeVtable(clazz);
                    }
                    Vtable vtable = vtables.get(className);
                    if (vtable == null) {
                        Log.warn("Couldn't find vtable for " + className);
                        continue;
                    }
                    instruction.setVtableIndex(vtable.getVtableIndex(instruction));
                    Log.debug("Vtable index for " + instruction.getClassType() + "."
                            + instruction.getMethodName() + ": "
                            + vtable.getVtableIndex(instruction));
                }
            }
        }
    }

    /**
     * Given the following classes:
     * 
     * <pre>
     * class Base {
     *     public int member;
     * }
     * 
     * 
     * class Derived extends Base {
     * }
     * 
     * 
     * Derived d = new Derived();
     * </pre>
     * 
     * When accessing <code>d.member</code>, the JVM/DEX byte code instruction
     * generated will be:
     * 
     * <pre>
     * &lt;dex:iget class-type="Derived" member-type="int" member-name="member" ... /&gt;
     * </pre>
     * 
     * The <code>class-type</code> refers to the actual type of the object, not
     * the type where <code>member</code> is declared. This method adjusts the
     * <code>class-type</code> to the class, where it is defined. Method
     * {@link #adjustTypes()} performs this operation for the following
     * instructions: invoke-static, invoke-super, iput, iget, sput, sget.
     */
    private void adjustTypes() {
        for (XmlvmResource resource : resourcePool.values()) {
            List<XmlvmInvokeInstruction> invokeInstructions = new ArrayList<XmlvmInvokeInstruction>();
            List<XmlvmMemberReadWrite> memberReadWriteInstructions = new ArrayList<XmlvmMemberReadWrite>();
            resource.collectInstructions(invokeInstructions, memberReadWriteInstructions);
            for (XmlvmInvokeInstruction instr : invokeInstructions) {
                String classType = instr.getClassType();
                XmlvmResource classTypeResource = getXmlvmResource(classType);
                if (classTypeResource == null) {
                    continue;
                }
                String type = searchDeclaringTypeInHierarchy(classTypeResource, instr);
                if (type == null) {
                    Log.warn(TAG, "Problem with adjusting type for " + classType);
                    continue;
                }
                instr.setClassType(type);
            }
            for (XmlvmMemberReadWrite instr : memberReadWriteInstructions) {
                String classType = instr.getClassType();
                XmlvmResource classTypeResource = getXmlvmResource(classType);
                if (classTypeResource == null) {
                    continue;
                }
                String type = searchDeclaringTypeInHierarchy(classTypeResource, instr);
                if (type == null) {
                    Log.warn(TAG, "Problem with adjusting type for " + classType);
                    continue;
                }
                instr.setClassType(type);
            }
        }
    }

    /**
     * Searches for the class along an inheritance hierarchy where a certain
     * method is being declared.
     * 
     * @param resource
     *            The class where the search for the method should begin.
     * @param instruction
     *            An invoke-static or invoke-super instruction for which a
     *            matching method is to be searched.
     * @return Full qualified class name of the class where a matching method
     *         was found.
     */
    private String searchDeclaringTypeInHierarchy(XmlvmResource resource,
            XmlvmInvokeInstruction instruction) {
        List<XmlvmMethod> methods = resource.getMethods();
        for (XmlvmMethod method : methods) {
            if (method.doesOverrideMethod(instruction)) {
                return resource.getFullName();
            }
        }
        String baseClass = resource.getSuperTypeName();
        if (!baseClass.equals("")) {
            XmlvmResource baseResource = getXmlvmResource(baseClass);
            return searchDeclaringTypeInHierarchy(baseResource, instruction);
        }
        return null;
    }

    /**
     * Searches for a class or interface along an inheritance hierarchy where a
     * certain field is being declared. Note that interfaces can only contain
     * final static fields, so searching interfaces only applies for sget and
     * sput instructions (note that sput instructions can be generated for final
     * static field by the Java compiler in places such as &lt;clinit&gt;). The
     * search order is governed by section 5.4.3.2 (Field Resolution) of the
     * Java specs.
     * 
     * @param resource
     *            The class where the search for the field should begin.
     * @param instruction
     *            An iget, iput, sget, or sput instruction for which a matching
     *            field is to be searched.
     * @return Full qualified class name of the class or interface where a
     *         matching field was found.
     */
    private String searchDeclaringTypeInHierarchy(XmlvmResource resource,
            XmlvmMemberReadWrite instruction) {
        // Search this class
        List<XmlvmField> fields = resource.getFields();
        for (XmlvmField field : fields) {
            if (field.matchesName(instruction)) {
                return resource.getFullName();
            }
        }
        // Search all immediate implemented interfaces
        String interfaces = resource.getInterfaces();
        if (interfaces != null) {
            for (String iface : interfaces.split(",")) {
                XmlvmResource ifaceResource = getXmlvmResource(iface);
                fields = ifaceResource.getFields();
                for (XmlvmField field : fields) {
                    if (field.matchesName(instruction)) {
                        return ifaceResource.getFullName();
                    }
                }
            }
        }
        // Search base class
        String baseClass = resource.getSuperTypeName();
        if (!baseClass.equals("")) {
            XmlvmResource baseResource = getXmlvmResource(baseClass);
            if (baseResource != null) {
                return searchDeclaringTypeInHierarchy(baseResource, instruction);
            }
        }
        return null;
    }


    private XmlvmResource              object;
    /**
     * This variable caches already loaded resources. I would have expected the
     * JavaJDKLoader to do this. Trying to load a resource a second time via
     * JavaJDKLoader will yield in a runtime exception.
     */
    private Map<String, XmlvmResource> alreadyLoadedResources = new HashMap<String, XmlvmResource>();


    private XmlvmResource getXmlvmResource(String className) {
        if (alreadyLoadedResources.containsKey(className)) {
            return alreadyLoadedResources.get(className);
        }
        XmlvmResource resource = resourcePool.get(className);
        if (className.equals("java.lang.Object")) {
            object = resource;
        }
        if (resource != null) {
            return resource;
        }

        Log.debug(TAG, "Loading JDK class: " + className);
        resource = (new LibraryLoader(new Arguments(new String[] { "--in=foo", "--out=bar" })))
                .load(className);
        alreadyLoadedResources.put(className, resource);
        return resource;
    }

    /**
     * From the given XmlvmResource creates a header as well as C-file.
     */
    public OutputFile[] genC(XmlvmResource xmlvm) {
        Document doc = xmlvm.getXmlvmDocument();
        // The filename will be the name of the first class
        String namespaceName = xmlvm.getPackageName();
        String inheritsFrom = xmlvm.getSuperTypeName().replace('.', '_').replace('$', '_');
        String className = xmlvm.getName().replace('$', '_');
        String fileNameStem = (namespaceName + "." + className).replace('.', '_');
        String headerFileName = fileNameStem + headerExtension;
        String mFileName = fileNameStem + sourceExtension;

        String headerProlog = "#ifndef __" + fileNameStem.toUpperCase() + "__\n";
        headerProlog += "#define __" + fileNameStem.toUpperCase() + "__\n\n";

        String headerEpilog = "\n#endif\n";

        StringBuilder headerBuffer = new StringBuilder();
        headerBuffer.append("#include \"xmlvm.h\"\n");
        List<String> typesForHeader = getTypesForHeader(doc.getRootElement());
        for (String i : typesForHeader) {
            if (i.equals(inheritsFrom)) {
                headerBuffer.append("#include \"" + i + ".h\"\n");
            }
        }
        String interfaces = xmlvm.getInterfaces();
        if (interfaces != null) {
            for (String i : interfaces.split(",")) {
                headerBuffer.append("#include \"" + i.replace('.', '_').replace('$', '_')
                        + ".h\"\n");
            }
        }
        headerBuffer.append("\n// Circular references:\n");
        for (String i : typesForHeader) {
            headerBuffer.append("#ifndef XMLVM_FORWARD_DECL_" + i + "\n");
            headerBuffer.append("#define XMLVM_FORWARD_DECL_" + i + "\n");
            headerBuffer.append("XMLVM_FORWARD_DECL(" + i + ")\n");
            headerBuffer.append("#endif\n");
        }
        OutputFile headerFile = XsltRunner.runXSLT("xmlvm2c.xsl", doc, new String[][] {
                { "pass", "emitHeader" }, { "header", headerFileName },
                { "genWrapper", "" + arguments.option_gen_wrapper() } });
        headerFile.setData(headerProlog + headerBuffer.toString() + headerFile.getData()
                + headerEpilog);
        headerFile.setFileName(headerFileName);

        StringBuilder mBuffer = new StringBuilder();
        for (String i : typesForHeader) {
            String toIgnore = (namespaceName + "_" + className).replace('.', '_');
            if (!i.equals(inheritsFrom) && !i.equals(toIgnore)) {
                mBuffer.append("#include \"" + i + ".h\"\n");
            }
        }

        OutputFile mFile = XsltRunner.runXSLT("xmlvm2c.xsl", doc, new String[][] {
                { "pass", "emitImplementation" }, { "header", headerFileName },
                { "genWrapper", "" + arguments.option_gen_wrapper() } });
        mFile.setData(mBuffer.toString() + mFile.getData());
        mFile.setFileName(mFileName);

        return new OutputFile[] { headerFile, mFile };
    }

    private List<String> getTypesForHeader(Element node) {
        HashSet<String> seen = new HashSet<String>();
        for (Object o : node.getChildren()) {
            if (!(o instanceof Element)) {
                continue;
            }
            Element cur = (Element) o;

            // Ignore assertions.
            if (cur.getName().equals("assert-red-class")) {
                continue;
            }

            // If we generate a wrapper, do not collect types for private
            // fields, private methods or the code-segment of public methods
            if (arguments.option_gen_wrapper()) {
                String name = cur.getName();
                if (name.equals("code")) {
                    continue;
                }
                String isPrivate = cur.getAttributeValue("isPrivate");
                if ((name.equals("method") || name.equals("field")) && isPrivate != null) {
                    continue;
                }
            }
            Attribute a = cur.getAttribute("type");
            if (a != null) {
                seen.add(a.getValue());
            }
            a = cur.getAttribute("extends");
            if (a != null && !a.getValue().equals("")) {
                seen.add(a.getValue());
            }
            a = cur.getAttribute("interfaces");
            if (a != null) {
                for (String iface : a.getValue().split(",")) {
                    seen.add(iface);
                }
            }
            a = cur.getAttribute("class-type");
            if (a != null) {
                seen.add(a.getValue());
            }
            if (cur.getName().equals("const-class")) {
                a = cur.getAttribute("value");
                if (a != null) {
                    seen.add(a.getValue());
                }
            }
            a = cur.getAttribute("kind");
            if (a != null && a.getValue().equals("type")) {
                a = cur.getAttribute("value");
                if (a != null) {
                    seen.add(a.getValue());
                }
            }
            seen.addAll(getTypesForHeader(cur));
        }
        HashSet<String> bad = new HashSet<String>();
        for (String t : new String[] { "char", "float", "double", "int", "void", "boolean",
                "short", "byte", "float", "long" }) {
            bad.add(t);
        }
        List<String> toRet = new ArrayList<String>();
        for (String t : seen) {
            if (!bad.contains(t) && t.indexOf("[]") == -1) {
                toRet.add(t.replace('.', '_').replace('$', '_'));
            }
        }
        return toRet;
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
    public OutputFile genNativeSkeletons(XmlvmResource resource) {
        Document doc = resource.getXmlvmDocument();
        // The filename will be the name of the first class
        String namespaceName = resource.getPackageName();
        String className = resource.getName().replace('$', '_');
        String fileNameStem = (namespaceName + "." + className).replace('.', '_');
        String headerFileName = fileNameStem + headerExtension;
        String mFileName = "native_" + fileNameStem + sourceExtension;

        StringBuilder mBuffer = new StringBuilder();
        mBuffer.append("\n#include \"" + headerFileName + "\"\n\n");

        OutputFile mFile = XsltRunner.runXSLT("xmlvm2c.xsl", doc, new String[][] {
                { "pass", "emitNativeSkeletons" }, { "header", headerFileName },
                { "genWrapper", "" + arguments.option_gen_wrapper() } });

        if (mFile.isEmpty()) {
            return null;
        }

        mFile.setData(mBuffer.toString() + mFile.getData());
        mFile.setFileName(mFileName);

        return mFile;
    }
}
