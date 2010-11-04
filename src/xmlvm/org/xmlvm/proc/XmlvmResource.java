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

package org.xmlvm.proc;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

import org.jdom.Document;
import org.jdom.Element;
import org.jdom.Namespace;
import org.jdom.output.XMLOutputter;

/**
 * This class describes a XMLVM resource, that is e.g. produces by
 * InputProcesses.
 * 
 * TODO(Sascha): Some aspects in this class don't properly reflect the CLI input
 * type. E.g., a CLI resource can have multiple types and therefore multiple
 * super types.
 */
public class XmlvmResource {
    public static enum Type {
        JVM, CLI, CLI_DFA, DEX
    }


    /**
     * Wrapper for a <code>&lt;dex:invoke-*&gt;</code> element.
     */
    public class XmlvmInvokeInstruction {
        public Element invokeElement;


        /**
         * Wrapper for a <code>&lt;dex:invoke-*&gt;</code> element.
         * 
         * @param invokeElement
         *            DOM element representing a
         *            <code>&lt;dex:invoke-*&gt;</code>.
         */
        public XmlvmInvokeInstruction(Element invokeElement) {
            this.invokeElement = invokeElement;
        }

        /**
         * @return
         */
        public String getClassType() {
            return invokeElement.getAttributeValue("class-type");
        }

        /**
         * @return
         */
        public String getMethodName() {
            return invokeElement.getAttributeValue("method");
        }

        /**
         * @param vtableIndex
         */
        public void setVtableIndex(int vtableIndex) {
            invokeElement.setAttribute("vtable-index", "" + vtableIndex);
        }

        /**
         * @param type
         */
        public void setClassType(String type) {
            invokeElement.setAttribute("class-type", type);
        }
    }


    public class XmlvmMemberReadWrite {
        public Element memberReadWriteElement;


        /**
         * Wrapper for a <code>&lt;dex:iget-*&gt;</code> or a
         * <code>&lt;dex:iput-*&gt;</code> element.
         * 
         * @param invokeElement
         *            DOM element representing a <code>&lt;dex:iget-*&gt;</code>
         *            or a <code>&lt;dex:iput-*&gt;</code>.
         */
        public XmlvmMemberReadWrite(Element memberReadWriteElement) {
            this.memberReadWriteElement = memberReadWriteElement;
        }

        /**
         * @return
         */
        public String getMemberName() {
            return this.memberReadWriteElement.getAttributeValue("member-name");
        }

        /**
         * @param type
         */
        public void setClassType(String type) {
            this.memberReadWriteElement.setAttribute("class-type", type);
        }

        /**
         * @return
         */
        public String getClassType() {
            return this.memberReadWriteElement.getAttributeValue("class-type");
        }

    }


    /**
     * Wrapper for a <code>&lt;vm:method&gt;</code> element.
     */
    public class XmlvmMethod {
        public Element methodElement;


        /**
         * Wrapper for a <code>&lt;vm:method&gt;</code> element.
         * 
         * @param invokeElement
         *            DOM element representing a <code>&lt;vm:method&gt;</code>.
         */
        public XmlvmMethod(Element methodElement) {
            this.methodElement = methodElement;
        }

        @Override
        public int hashCode() {
            return toString().hashCode();
        }

        @Override
        public String toString() {
            return (new XMLOutputter()).outputString(methodElement);
        }

        public String getName() {
            return methodElement.getAttributeValue("name");
        }

        /**
         * Retrieve all invoke instructions that are handled via a vtable (i.e.,
         * <code>&lt;dex:invoke-virtual&gt;</code> and
         * <code>&lt;dex:invoke-interface&gt;</code> instructions).
         * 
         * @return All <code>&lt;dex:invoke-virtual&gt;</code> and
         *         <code>&lt;dex:invoke-interface&gt;</code> instructions of
         *         this method.
         */
        public List<XmlvmInvokeInstruction> getVtableInvokeInstructions() {
            List<XmlvmInvokeInstruction> invokeInstructions = new ArrayList<XmlvmInvokeInstruction>();
            searchForVtableInvokeInstructions(invokeInstructions, methodElement);
            return invokeInstructions;
        }

        @SuppressWarnings("unchecked")
        private void searchForVtableInvokeInstructions(
                List<XmlvmInvokeInstruction> invokeInstructions, Element element) {
            List<Element> children = element.getChildren("invoke-virtual", nsDEX);
            for (Element instruction : children) {
                XmlvmInvokeInstruction invoke = new XmlvmInvokeInstruction(instruction);
                invokeInstructions.add(invoke);
            }
            children = element.getChildren("invoke-interface", nsDEX);
            for (Element instruction : children) {
                XmlvmInvokeInstruction invoke = new XmlvmInvokeInstruction(instruction);
                invokeInstructions.add(invoke);
            }
            children = element.getChildren();
            for (Element node : children) {
                searchForVtableInvokeInstructions(invokeInstructions, node);
            }
        }

        /**
         * Determines if two Java methods can override each other. Two methods
         * override each other, iff their names as well as all their input
         * parameter types are identical. Note that the return types need not be
         * identical since Java allows covariant returns.
         * <code>doesOverrideMethod()</code> does not check for subtype
         * relationship of the return type. The return type is essentially
         * ignored and therefore <code>doesOverrideMethod()</code> is
         * commutative.
         * 
         * @param method
         *            {@link #XmlvmResource} to be checked.
         * @return true, iff <code>method</code> overrides <code>this</code>.
         */
        @SuppressWarnings("unchecked")
        public boolean doesOverrideMethod(XmlvmMethod method) {
            return doesOverrideMethod(method.getName(), method.methodElement.getChild("signature",
                    nsXMLVM).getChildren("parameter", nsXMLVM));
        }

        /**
         * Determines if two Java methods can override each other. Two methods
         * override each other, iff their names as well as all their input
         * parameter types are identical. Note that the return types need not be
         * identical since Java allows covariant returns.
         * <code>doesOverrideMethod()</code> does not check for subtype
         * relationship of the return type. The return type is essentially
         * ignored and therefore <code>doesOverrideMethod()</code> is
         * commutative.
         * 
         * @param method
         *            {@link #XmlvmInvokeVirtual} to be checked.
         * @return true, iff <code>method</code> overrides <code>this</code>.
         */
        @SuppressWarnings("unchecked")
        public boolean doesOverrideMethod(XmlvmInvokeInstruction instruction) {
            return doesOverrideMethod(instruction.getMethodName(), instruction.invokeElement
                    .getChild("parameters", nsDEX).getChildren("parameter", nsDEX));
        }

        @SuppressWarnings("unchecked")
        private boolean doesOverrideMethod(String methodName, List<Element> parameters) {
            if (!this.getName().equals(methodName)) {
                return false;
            }
            Element mySignature = methodElement.getChild("signature", nsXMLVM);
            List<Element> myParameters = mySignature.getChildren("parameter", nsXMLVM);

            if (myParameters.size() != parameters.size()) {
                return false;
            }

            for (int i = 0; i < myParameters.size(); i++) {
                String myParameterType = myParameters.get(i).getAttributeValue("type");
                String otherParameterType = parameters.get(i).getAttributeValue("type");
                if (!myParameterType.equals(otherParameterType)) {
                    return false;
                }
            }
            return true;
        }

        /**
         * Returns true if this method is static.
         */
        public boolean isStatic() {
            String flag = methodElement.getAttributeValue("isStatic");
            return flag != null && flag.equals("true");
        }

        /**
         * Returns true if this method is private.
         */
        public boolean isPrivate() {
            String flag = methodElement.getAttributeValue("isPrivate");
            return flag != null && flag.equals("true");
        }

        /**
         * Returns true if this method is protected.
         */
        public boolean isProtected() {
            String flag = methodElement.getAttributeValue("isProtected");
            return flag != null && flag.equals("true");
        }

        /**
         * Returns true if this method is public.
         */
        public boolean isPublic() {
            String flag = methodElement.getAttributeValue("isPublic");
            return flag != null && flag.equals("true");
        }

        /**
         * Returns true if this method is abstract.
         */
        public boolean isAbstract() {
            String flag = methodElement.getAttributeValue("isAbstract");
            return flag != null && flag.equals("true");
        }

        /**
         * Returns true if this method is native.
         */
        public boolean isNative() {
            String flag = methodElement.getAttributeValue("isNative");
            return flag != null && flag.equals("true");
        }

        /**
         * Returns true if this method is a constructor.
         */
        public boolean isConstructor() {
            return methodElement.getAttributeValue("name").equals("<init>");
        }

        /**
         * Set a vtable index for this method (XML attribute
         * <code>vtableIndex</code>).
         */
        public void setVtableIndex(int idx) {
            methodElement.setAttribute("vtableIndex", "" + idx);
        }

    }


    /**
     * Wrapper for a <code>&lt;vm:field&gt;</code> element.
     */
    public class XmlvmField {
        public Element fieldElement;


        /**
         * Wrapper for a <code>&lt;vm:field&gt;</code> element.
         * 
         * @param fieldElement
         *            DOM element representing a <code>&lt;vm:field&gt;</code>.
         */
        public XmlvmField(Element fieldElement) {
            this.fieldElement = fieldElement;
        }

        /**
         * Returns the name of the field.
         */
        public String getName() {
            return fieldElement.getAttributeValue("name");
        }

        /**
         * Returns the type of the field.
         */
        public String getType() {
            return fieldElement.getAttributeValue("type");
        }

        /**
         * Returns true if this field is private.
         */
        public boolean isPrivate() {
            String flag = fieldElement.getAttributeValue("isPrivate");
            return flag != null && flag.equals("true");
        }

        /**
         * Returns true if this field is protected.
         */
        public boolean isProtected() {
            String flag = fieldElement.getAttributeValue("isProtected");
            return flag != null && flag.equals("true");
        }

        /**
         * Returns true if this field is public.
         */
        public boolean isPublic() {
            String flag = fieldElement.getAttributeValue("isPublic");
            return flag != null && flag.equals("true");
        }

        /**
         * Returns true if the field the <code>instruction</code> is accessing
         * has the same name as this field.
         */
        public boolean matchesName(XmlvmMemberReadWrite instruction) {
            return getName().equals(instruction.getMemberName());
        }

        /**
         * Returns true if the given <code>field</code> has the same name and
         * type as this field.
         */
        public boolean matchesDeclaration(XmlvmField field) {
            return getName().equals(field.getName()) && getType().equals(field.getType());
        }
    }


    public class XmlvmVtable {
        private Element vtableElement;


        public XmlvmVtable(Element vtableElement) {
            this.vtableElement = vtableElement;
        }

        /**
         * Create a new mapping between a vtable of an interface and a vtable of
         * an implementing class. See
         * {@link XmlvmResource#createVtable(String, String, int)}.
         * 
         * @param vtableIndexInterface
         *            vtable index of a method defined in an interface.
         * @param vtableIndexClass
         *            Corresponding vtable index of an implementing method in a
         *            class.
         */
        public void addMapping(int vtableIndexInterface, int vtableIndexClass) {
            Element map = new Element("map", nsXMLVM);
            map.setAttribute("vtableIndexInterface", "" + vtableIndexInterface);
            map.setAttribute("vtableIndexClass", "" + vtableIndexClass);
            vtableElement.addContent(map);
        }
    }


    public static Namespace   nsXMLVM = Namespace.getNamespace("vm", "http://xmlvm.org");
    public static Namespace   nsDEX   = Namespace.getNamespace("dex", "http://xmlvm.org/dex");
    public static Namespace   nsJVM   = Namespace.getNamespace("jvm", "http://xmlvm.org/jvm");

    private String            name;
    private final String      superTypeName;
    private final Type        type;
    private final Document    xmlvmDocument;
    private final Set<String> referencedTypes;


    public XmlvmResource(String name, String superTypeName, Type type, Document xmlvmDocument,
            Set<String> referencedTypes) {
        this.name = name;
        this.superTypeName = superTypeName;
        this.type = type;
        this.xmlvmDocument = xmlvmDocument;
        this.referencedTypes = referencedTypes;
    }

    /**
     * Returns the XMLVM document of this resource.
     */
    public Document getXmlvmDocument() {
        return xmlvmDocument;
    }

    /**
     * Returns the type of this XMLVM resource.
     */
    public Type getType() {
        return type;
    }

    /**
     * Returns the name of this XMLVM resource.
     */
    public String getName() {
        return name;
    }

    /**
     * Returns the full name, which is the normal name prefixed by the package.
     */
    public String getFullName() {
        String fullResourceName = getPackageName();
        if (!fullResourceName.isEmpty()) {
            fullResourceName += ".";
        }
        fullResourceName += getName();
        return fullResourceName;
    }

    /**
     * Returns the names of all types that are referenced in this resource.
     */
    public Set<String> getReferencedTypes() {
        return referencedTypes;
    }

    /**
     * Returns the name of the super class type.
     */
    public String getSuperTypeName() {
        return superTypeName;
    }

    /**
     * Returns the name of the package, this resource is in.
     * <p>
     * E.g. "java.lang"
     */
    public String getPackageName() {
        Element clazz = xmlvmDocument.getRootElement().getChild("class", nsXMLVM);
        return clazz.getAttributeValue("package");
    }

    /**
     * Returns a comma-separated list of interfaces this resources implements.
     */
    public String getInterfaces() {
        Element clazz = xmlvmDocument.getRootElement().getChild("class", nsXMLVM);
        return clazz.getAttributeValue("interfaces");
    }

    /**
     * Returns all methods defined in this resource.
     */
    public List<XmlvmMethod> getMethods() {
        List<XmlvmMethod> result = new ArrayList<XmlvmMethod>();
        List<Element> methods = getMethodElements();
        for (Element method : methods) {
            result.add(new XmlvmMethod(method));
        }
        return result;
    }

    /**
     * Returns all fields defined in this resource.
     */
    @SuppressWarnings("unchecked")
    public List<XmlvmField> getFields() {
        List<XmlvmField> result = new ArrayList<XmlvmField>();
        List<Element> classes = xmlvmDocument.getRootElement().getChildren("class", nsXMLVM);
        for (Element clazz : classes) {
            List<Element> fields = clazz.getChildren("field", nsXMLVM);
            for (Element field : fields) {
                result.add(new XmlvmField(field));
            }
        }
        return result;
    }

    /**
     * Returns whether this resource represents an interface.
     */
    public boolean isInterface() {
        return Boolean.parseBoolean(xmlvmDocument.getRootElement().getChild("class", nsXMLVM)
                .getAttributeValue("isInterface"));
    }

    @SuppressWarnings("unchecked")
    // JDOM's non-generic API.
    private List<Element> getMethodElements() {
        List<Element> result = new ArrayList<Element>();
        List<Element> classes = xmlvmDocument.getRootElement().getChildren("class", nsXMLVM);
        for (Element clazz : classes) {
            result.addAll(clazz.getChildren("method", nsXMLVM));
        }
        return result;
    }

    /**
     * Set the XML attribute <code>vtableSize</code> that designates the number
     * of vtable entries for this class.
     * 
     * @param vtableSize
     *            Size of the vtable.
     */
    @SuppressWarnings("unchecked")
    // JDOM's non-generic API.
    public void setVtableSize(int vtableSize) {
        List<Element> classes = xmlvmDocument.getRootElement().getChildren("class", nsXMLVM);
        if (classes.size() != 1) {
            System.err.println("XmlvmResource.setVtableSize(): cannot deal with multiple classes");
            System.exit(-1);
        }
        classes.get(0).setAttribute("vtableSize", "" + vtableSize);
    }

    /**
     * Creates an additional vtable for this class. These additional vtables are
     * created for all implemented interfaces of this class. This means, if
     * interface I is implemented by classes A and B, both classes A and B will
     * contain separate vtables for I. This is because A and B will most likely
     * implement methods of I in different order so their methods cannot be
     * mapped via one vtable. The created vtable is essentially a mapping of
     * methods defined in an interface to methods defined in the class. The XML
     * markup of the vtable is as follows:
     * 
     * <pre>
     * &lt;vtable kind="..." name="..." size="..."&gt;
     *     &lt;map vtableIndexInterface="..." vtableIndexClass="..."/&gt;
     *     &lt;map vtableIndexInterface="..." vtableIndexClass="..."/&gt;
     *     ...
     * &lt/vtable&gt;
     * </pre>
     * 
     * @param kind
     *            The kind of vtable to be created. The only legal value
     *            currently is <code>interface-vtable</code>.
     * @param name
     *            Fully qualified name of the interface for which vtable is to
     *            be created.
     * @param size
     *            Size of the vtable required for the interface.
     * @return A newly created vtable.
     */
    public XmlvmVtable createVtable(String kind, String name, int size) {
        Element vtableElement = new Element("vtable", nsXMLVM);
        vtableElement.setAttribute("kind", kind);
        vtableElement.setAttribute("name", name);
        vtableElement.setAttribute("size", "" + size);
        xmlvmDocument.getRootElement().getChild("class", nsXMLVM).addContent(vtableElement);
        return new XmlvmVtable(vtableElement);

    }

    /**
     * Collects a list of all instructions whose type may need to be adjusted
     * for a specific set of classes that comprise the application being
     * cross-compiled (see
     * {@link org.xmlvm.proc.out.COutputProcess#adjustTypes()}). Instructions
     * that need to be considered are invoke-static, invoke-super, iput, iget,
     * sput, and sget.
     * 
     * @param invokeInstructions
     *            Will be filled with all invoke-static and invoke-super
     *            instructions upon return.
     * @param readWriteInstructions
     *            Will be filled with all iput, iget, sput, and sget
     *            instructions upon return.
     */
    @SuppressWarnings("unchecked")
    public void collectInstructions(List<XmlvmInvokeInstruction> invokeInstructions,
            List<XmlvmMemberReadWrite> readWriteInstructions) {
        Element root = xmlvmDocument.getRootElement().getChild("class", nsXMLVM);
        Iterator iter = root.getDescendants();
        while (iter.hasNext()) {
            Object o = iter.next();
            if (o instanceof Element) {
                Element elem = (Element) o;
                String name = elem.getName();
                if (name.startsWith("invoke-static") || name.startsWith("invoke-super")) {
                    invokeInstructions.add(new XmlvmInvokeInstruction(elem));
                }
                if (name.startsWith("iput") || name.startsWith("iget") || name.startsWith("sput")
                        || name.startsWith("sget")) {
                    readWriteInstructions.add(new XmlvmMemberReadWrite(elem));
                }
            }
        }
    }
}
