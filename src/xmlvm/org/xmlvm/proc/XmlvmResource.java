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
import java.util.HashSet;
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

    public class XmlvmInvokeVirtual {
        public Element invokeVirtualElement;

        /**
         * Wrapper for a <code>&lt;dex:invoke-virtual&gt;</code> element.
         * 
         * @param invokeVirtualElement
         *            DOM element representing a
         *            <code>&lt;dex:invoke-virtual&gt;</code>.
         */
        public XmlvmInvokeVirtual(Element invokeVirtualElement) {
            this.invokeVirtualElement = invokeVirtualElement;
        }

        /**
         * @return
         */
        public String getClassType() {
            return invokeVirtualElement.getAttributeValue("class-type");
        }

        /**
         * @return
         */
        public String getMethodName() {
            return invokeVirtualElement.getAttributeValue("method");
        }

        /**
         * @param vtableIndex
         */
        public void setVtableIndex(int vtableIndex) {
            invokeVirtualElement.setAttribute("vtable-index", "" + vtableIndex);
        }
    }

    /**
     * Wrapper for a <code>&lt;vm:method&gt;</code> element.
     * 
     * @param invokeVirtualElement
     *            DOM element representing a <code>&lt;vm:method&gt;</code>.
     */
    public class XmlvmMethod {
        public Element methodElement;

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

        public List<XmlvmInvokeVirtual> getInvokeVirtualInstructions() {
            List<XmlvmInvokeVirtual> invokeInstructions = new ArrayList<XmlvmInvokeVirtual>();
            searchForInvokeVirtualInstructions(invokeInstructions, methodElement);
            return invokeInstructions;
        }

        @SuppressWarnings("unchecked")
        private void searchForInvokeVirtualInstructions(
                List<XmlvmInvokeVirtual> invokeInstructions, Element element) {
            List<Element> children = element.getChildren("invoke-virtual", nsDEX);
            for (Element instruction : children) {
                XmlvmInvokeVirtual invoke = new XmlvmInvokeVirtual(instruction);
                invokeInstructions.add(invoke);
            }
            children = element.getChildren();
            for (Element node : children) {
                searchForInvokeVirtualInstructions(invokeInstructions, node);
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
        public boolean doesOverrideMethod(XmlvmMethod method) {
            return doesOverrideMethod(method.getName(), method.methodElement.getChild("signature",
                    nsXMLVM));
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
        public boolean doesOverrideMethod(XmlvmInvokeVirtual instruction) {
            return doesOverrideMethod(instruction.getMethodName(), instruction.invokeVirtualElement
                    .getChild("parameters", nsDEX));
        }

        @SuppressWarnings("unchecked")
        private boolean doesOverrideMethod(String methodName, Element signature) {
            if (!this.getName().equals(methodName)) {
                return false;
            }
            Element mySignature = methodElement.getChild("signature", nsXMLVM);
            List<Element> myParameters = mySignature.getChildren("parameter", nsXMLVM);
            List<Element> otherParameters = signature.getChildren("parameter", nsXMLVM);

            if (myParameters.size() != otherParameters.size()) {
                return false;
            }

            for (int i = 0; i < myParameters.size(); i++) {
                String myParameterType = myParameters.get(i).getAttributeValue("type");
                String otherParameterType = otherParameters.get(i).getAttributeValue("type");
                if (!myParameterType.equals(otherParameterType)) {
                    return false;
                }
            }
            return true;
        }

        public boolean isStatic() {
            String flag = methodElement.getAttributeValue("isStatic");
            return flag != null && flag.equals("true");
        }

        public boolean isPrivate() {
            String flag = methodElement.getAttributeValue("isPrivate");
            return flag != null && flag.equals("true");
        }

        public boolean isProtected() {
            String flag = methodElement.getAttributeValue("isProtected");
            return flag != null && flag.equals("true");
        }

        public boolean isPublic() {
            String flag = methodElement.getAttributeValue("isPublic");
            return flag != null && flag.equals("true");
        }

        public boolean isAbstract() {
            String flag = methodElement.getAttributeValue("isAbstract");
            return flag != null && flag.equals("true");
        }

        public boolean isNative() {
            String flag = methodElement.getAttributeValue("isNative");
            return flag != null && flag.equals("true");
        }

        public boolean isConstructor() {
            return methodElement.getAttributeValue("name").equals("<init>");
        }

        /**
         * @param idx
         */
        public void setVtableIndex(int idx) {
            methodElement.setAttribute("vtableIndex", "" + idx);
        }

    }

    public static Namespace   nsXMLVM = Namespace.getNamespace("vm", "http://xmlvm.org");
    public static Namespace   nsDEX   = Namespace.getNamespace("dex", "http://xmlvm.org/dex");
    public static Namespace   nsJVM   = Namespace.getNamespace("jvm", "http://xmlvm.org/jvm");

    private final String      name;
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

    public Set<XmlvmMethod> getMethods() {
        Set<XmlvmMethod> result = new HashSet<XmlvmMethod>();
        List<Element> methods = getMethodElements();
        for (Element method : methods) {
            result.add(new XmlvmMethod(method));
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

    /**
     * Removes the given method from the resource. TODO: Do not call this
     * method!
     */
    private void removeMethodXXX(XmlvmMethod method) {
        List<Element> methods = getMethodElements();
        for (Element methodElement : methods) {
            Element methodClone = (Element) methodElement.clone();
            methodClone.removeChild("code", nsDEX);
            methodClone.removeChild("code", nsJVM);
            if ((new XmlvmMethod(methodClone).equals(method))) {
                System.out.println("Found method, removing it...");
                methodElement.detach();
            }
        }
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
     * @param vtableSize
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
}
