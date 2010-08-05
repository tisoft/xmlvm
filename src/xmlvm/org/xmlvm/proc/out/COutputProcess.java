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
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

import org.jdom.Attribute;
import org.jdom.Document;
import org.jdom.Element;
import org.xmlvm.main.Arguments;
import org.xmlvm.proc.JavaJDKLoader;
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
    private final static String        TAG          = COutputProcess.class.getSimpleName();

    private static final String        C_EXTENSION  = ".c";
    private static final String        H_EXTENSION  = ".h";
    private List<OutputFile>           result       = new ArrayList<OutputFile>();

    private Map<String, XmlvmResource> resourcePool = new HashMap<String, XmlvmResource>();

    /**
     * Class {@link Vtable} represents the Vtable for one class. It is basically
     * a list of {@link org.xmlvm.proc.XmlvmResource.XmlvmMethod} that includes
     * all methods of that class that have an entry in the Vtable. Note that
     * only public and protected methods have entries in the Vtable. Also note
     * that the Vtable includes all eligible methods from all base classes. The
     * Vtable index of a method corresponds to the list index.
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

        // Add empty class name that acts as a base class for java.lang.Object
        vtables.put("", new Vtable());

        // addAllXmlvmEmittingProcessesAsInput();
        // We need the special Vtable information in order to be able to produce
        // C code.
        addSupportedInput(XmlvmJavaRuntimeAnnotationProcess.class);
    }

    @Override
    public List<OutputFile> getOutputFiles() {
        return result;
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
        }

        computeVtables();
        annotateVtableInvokes();
        adjustTypes();

        // Process all collected resources.
        for (XmlvmResource xmlvm : resourcePool.values()) {
            OutputFile[] files = genC(xmlvm);
            for (OutputFile file : files) {
                file.setLocation(arguments.option_out());
                result.add(file);
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
        if (vtables.containsKey(resource.getFullName())) {
            return;
        }

        String baseClassName = resource.getSuperTypeName();
        if (!vtables.containsKey(baseClassName)) {
            XmlvmResource baseClass = getXmlvmResource(baseClassName);
            computeVtable(baseClass);
        }

        // Add all methods from base classes to vtable
        Vtable baseClassVtable = vtables.get(baseClassName);
        Vtable thisClassVtable = baseClassVtable.clone();
        Set<XmlvmMethod> methods = resource.getMethods();
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

        System.out.println("Size of vtable for class " + resource.getFullName() + ": "
                + thisClassVtable.virtualMethods.size());

        resource.setVtableSize(thisClassVtable.getVtableSize());
        vtables.put(resource.getFullName(), thisClassVtable);

        // Add vtable initialization for all interfaces that this class
        // implements
        if (!resource.isInterface()) {
            List<XmlvmResource> interfaces = getAllImplementedInterfaces(resource);
            System.out.println("Implemented interfaces: ");
            for (XmlvmResource iface : interfaces) {
                System.out.println("    " + iface.getFullName());
                Vtable ifaceVtable = vtables.get(iface.getFullName());
                XmlvmVtable vt = resource.createVtable("interface-vtable", iface.getFullName(),
                        ifaceVtable.getVtableSize());
                for (XmlvmMethod m : iface.getMethods()) {
                    vt.addMapping(ifaceVtable.getVtableIndex(m), thisClassVtable.getVtableIndex(m));
                    System.out.println("        " + m.getName() + ": "
                            + ifaceVtable.getVtableIndex(m) + " = "
                            + thisClassVtable.getVtableIndex(m));
                }
            }
        }
    }

    private void addAllBaseInterfaceVtables(Vtable vtable, XmlvmResource resource) {
        // TODO hack! We don't do this for OpenJDK classes. If we try, there is
        // a "severely truncated class file" exception.
        if (resource.getPackageName().startsWith("java")) {
            return;
        }

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

    private List<XmlvmResource> getAllImplementedInterfaces(XmlvmResource resource) {
        List<XmlvmResource> collectedInterfaces = new ArrayList<XmlvmResource>();

        // TODO hack! We don't do this for OpenJDK classes. If we try, there is
        // a "severely truncated class file" exception.
        if (resource.getPackageName().startsWith("java")) {
            return collectedInterfaces;
        }

        String interfaces = resource.getInterfaces();
        if (interfaces == null) {
            return collectedInterfaces;
        }
        for (String iface : interfaces.split(",")) {
            XmlvmResource ifaceResource = getXmlvmResource(iface);
            List<XmlvmResource> baseInterfaces = getAllImplementedInterfaces(ifaceResource);
            computeVtable(ifaceResource);
            collectedInterfaces.add(ifaceResource);
            collectedInterfaces.addAll(baseInterfaces);
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
            Set<XmlvmMethod> methods = resource.getMethods();
            for (XmlvmMethod method : methods) {
                for (XmlvmInvokeInstruction instruction : method.getVtableInvokeInstructions()) {
                    String className = instruction.getClassType();
                    if (!vtables.containsKey(className)) {
                        XmlvmResource clazz = getXmlvmResource(className);
                        computeVtable(clazz);
                    }
                    Vtable vtable = vtables.get(className);
                    instruction.setVtableIndex(vtable.getVtableIndex(instruction));
                    System.out.println("Vtable index for " + instruction.getClassType() + "."
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
     * class Derived extends Base {
     * }
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
     * {@link #adjustTypes()} performs this operation for all member variables
     * as well as static methods.
     */
    private void adjustTypes() {
        for (XmlvmResource resource : resourcePool.values()) {
            List<XmlvmInvokeInstruction> invokeStaticInstructions = new ArrayList<XmlvmInvokeInstruction>();
            List<XmlvmMemberReadWrite> memberReadWriteInstructions = new ArrayList<XmlvmMemberReadWrite>();
            resource.collectInstructions(invokeStaticInstructions, memberReadWriteInstructions);
            for (XmlvmInvokeInstruction instr : invokeStaticInstructions) {
                String classType = instr.getClassType();
                XmlvmResource classTypeResource = getXmlvmResource(classType);
                String type = searchDeclaringTypeInHierarchy(classTypeResource, instr);
                instr.setClassType(type);
            }
            for (XmlvmMemberReadWrite instr : memberReadWriteInstructions) {
                String classType = instr.getClassType();
                XmlvmResource classTypeResource = getXmlvmResource(classType);
                String type = searchDeclaringTypeInHierarchy(classTypeResource, instr);
                instr.setClassType(type);
            }
        }
    }

    private String searchDeclaringTypeInHierarchy(XmlvmResource resource,
            XmlvmInvokeInstruction instruction) {
        Set<XmlvmMethod> methods = resource.getMethods();
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

    private String searchDeclaringTypeInHierarchy(XmlvmResource resource,
            XmlvmMemberReadWrite instruction) {
        Set<XmlvmField> fields = resource.getFields();
        for (XmlvmField field : fields) {
            if (field.matchesName(instruction)) {
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

    private XmlvmResource getXmlvmResource(String className) {
        XmlvmResource resource = resourcePool.get(className);
        if (resource != null) {
            return resource;
        }
        System.out.println("Loading JDK class: " + className);
        return (new JavaJDKLoader(new Arguments(new String[] { "--in=foo" }))).load(className);
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
        String headerFileName = fileNameStem + H_EXTENSION;
        String mFileName = fileNameStem + C_EXTENSION;

        String headerProlog = "#ifndef __" + fileNameStem.toUpperCase() + "__\n";
        headerProlog += "#define __" + fileNameStem.toUpperCase() + "__\n\n";

        String headerEpilog = "\n#endif\n";

        StringBuffer headerBuffer = new StringBuffer();
        headerBuffer.append("#include \"xmlvm.h\"\n");
        for (String i : getTypesForHeader(doc)) {
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
        for (String i : getTypesForHeader(doc)) {
            headerBuffer.append("XMLVM_FORWARD_DECL(" + i + ")\n");
        }
        OutputFile headerFile = XsltRunner.runXSLT("xmlvm2c.xsl", doc, new String[][] {
                { "pass", "emitHeader" }, { "header", headerFileName } });
        headerFile.setData(headerProlog + headerBuffer.toString() + headerFile.getData()
                + headerEpilog);
        headerFile.setFileName(headerFileName);

        StringBuffer mBuffer = new StringBuffer();
        for (String i : getTypesForHeader(doc)) {
            String toIgnore = (namespaceName + "_" + className).replace('.', '_');
            if (!i.equals(inheritsFrom) && !i.equals(toIgnore)) {
                mBuffer.append("#include \"" + i + ".h\"\n");
            }
        }

        OutputFile mFile = XsltRunner.runXSLT("xmlvm2c.xsl", doc, new String[][] {
                { "pass", "emitImplementation" }, { "header", headerFileName } });
        mFile.setData(mBuffer.toString() + mFile.getData());
        mFile.setFileName(mFileName);

        return new OutputFile[] { headerFile, mFile };
    }

    private List<String> getTypesForHeader(Document doc) {
        HashSet<String> seen = new HashSet<String>();
        @SuppressWarnings("unchecked")
        Iterator<Object> i = doc.getDescendants();
        while (i.hasNext()) {
            Object cur = i.next();
            if (cur instanceof Element) {
                Attribute a = ((Element) cur).getAttribute("type");
                if (a != null) {
                    seen.add(a.getValue());
                }
                a = ((Element) cur).getAttribute("extends");
                if (a != null && !a.getValue().equals("")) {
                    seen.add(a.getValue());
                }
                a = ((Element) cur).getAttribute("interfaces");
                if (a != null) {
                    for (String iface : a.getValue().split(",")) {
                        seen.add(iface);
                    }
                }
                a = ((Element) cur).getAttribute("class-type");
                if (a != null) {
                    seen.add(a.getValue());
                }
                if (((Element) cur).getName().equals("const-class")) {
                    a = ((Element) cur).getAttribute("value");
                    if (a != null) {
                        seen.add(a.getValue());
                    }
                }
                a = ((Element) cur).getAttribute("kind");
                if (a != null && a.getValue().equals("type")) {
                    a = ((Element) cur).getAttribute("value");
                    if (a != null) {
                        seen.add(a.getValue());
                    }
                }
            } else {
                System.out.println(cur);
            }
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
}
