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

package org.xmlvm.dep;

import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

import org.jdom.Document;
import org.jdom.Element;

/**
 * Generates a list of imports for a given XMLVM document and adds it to the
 * document. This can be used to analyze upfront which imports are required for
 * a given XMLVM document.
 * <p>
 * TODO: Do we want to keep this? If so, integrate into new process.
 */
public class Import {

    private String      omitRef;
    private Set<String> refs;

    public void genImport(Document xmlvm) {
        init();
        Element root = xmlvm.getRootElement();
        Element class_ = root.getChild("class");
        String name = class_.getAttributeValue("name");
        String pack = class_.getAttributeValue("package");
        omitRef = pack + "." + name;
        String base = class_.getAttributeValue("extends");
        addType(base);
        Iterator<Element> it = class_.getChildren().iterator();
        while (it.hasNext()) {
            Element elem = it.next();
            String tag = elem.getName();
            if (tag.equals("field"))
                visitField(elem);
            if (tag.equals("method"))
                visitMethod(elem);
        }
        Element imp = new Element("import");
        for (String s : refs) {
            Element t = new Element("reference");
            t.setAttribute("class-type", s);
            imp.addContent(t);
        }
        // Insert after comment
        root.addContent(1, imp);
    }

    private void init() {
        refs = new HashSet<String>();
    }

    private void addRef(String ref) {
        if (!ref.equals(omitRef))
            refs.add(ref);
    }

    private void addType(String type) {
        final String[] primitiveTypes = { "void", "boolean", "char", "int", "byte", "short",
                "long", "double", "float" };
        type = type.replace("[]", "");
        for (String t : primitiveTypes)
            if (type.equals(t))
                return;
        addRef(type);
    }

    private void visitField(Element field) {
        String type = field.getAttributeValue("type");
        addType(type);
    }

    private void visitMethod(Element meth) {
        Element sig = meth.getChild("signature");
        visitSignature(sig);
        Element code = meth.getChild("code");
        visitCode(code);
    }

    private void visitSignature(Element sig) {
        Iterator<Element> it = sig.getChildren().iterator();
        while (it.hasNext()) {
            Element param = it.next();
            String type = param.getAttributeValue("type");
            addType(type);
        }
    }

    private void visitCode(Element code) {
        if (code == null)
            return;
        Iterator<Element> it = code.getDescendants();
        while (it.hasNext()) {
            Element inst = it.next();
            String type = inst.getAttributeValue("type");
            if (type != null)
                addType(type);
            type = inst.getAttributeValue("class-type");
            if (type != null)
                addType(type);
            if (inst.getName().startsWith("invoke"))
                visitInvoke(inst);
        }
    }

    private void visitInvoke(Element inv) {
        Element sig = inv.getChild("signature");
        visitSignature(sig);
    }
}