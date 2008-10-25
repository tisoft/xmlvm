/*
 * Created on Nov 26, 2005 by Arno
 */

package org.xmlvm.dep;

import java.util.*;

import org.jdom.*;



public class Import
{

    private String      omitRef;
    private Set<String> refs;



    public void genImport(Document xmlvm)
    {
        init();
        Element root = xmlvm.getRootElement();
        Element class_ = root.getChild("class");
        String name = class_.getAttributeValue("name");
        String pack = class_.getAttributeValue("package");
        omitRef = pack + "." + name;
        String base = class_.getAttributeValue("extends");
        addType(base);
        Iterator it = class_.getChildren().iterator();
        while (it.hasNext()) {
            Element elem = (Element) it.next();
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



    private void init()
    {
        refs = new HashSet<String>();
    }



    private void addRef(String ref)
    {
        if (!ref.equals(omitRef))
            refs.add(ref);
    }



    private void addType(String type)
    {
        final String[] primitiveTypes = {"void", "boolean", "char", "int",
            "byte", "short", "long", "double", "float"};
        type = type.replace("[]", "");
        for (String t : primitiveTypes)
            if (type.equals(t))
                return;
        addRef(type);
    }



    private void visitField(Element field)
    {
        String type = field.getAttributeValue("type");
        addType(type);
    }



    private void visitMethod(Element meth)
    {
        Element sig = meth.getChild("signature");
        visitSignature(sig);
        Element code = meth.getChild("code");
        visitCode(code);
    }



    private void visitSignature(Element sig)
    {
        Iterator it = sig.getChildren().iterator();
        while (it.hasNext()) {
            Element param = (Element) it.next();
            String type = param.getAttributeValue("type");
            addType(type);
        }
    }



    private void visitCode(Element code)
    {
        if (code == null)
            return;
        Iterator it = code.getDescendants();
        while (it.hasNext()) {
            Element inst = (Element) it.next();
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



    private void visitInvoke(Element inv)
    {
        Element sig = inv.getChild("signature");
        visitSignature(sig);
    }
}