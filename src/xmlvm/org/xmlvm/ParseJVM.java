/*
 * XMLVM --- An XML-based Programming Language Copyright (c) 2004-2005 by Arno
 * Puder
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
 * For more information, visit the XMLVM Home Page at
 * http://www.xml11.org/xmlvm/
 */



package org.xmlvm;

/*
 * Created on Jul 3, 2004
 */



import java.util.Date;
import java.util.Hashtable;
import java.util.List;

import org.apache.bcel.classfile.*;
import org.apache.bcel.generic.*;
import org.jdom.*;



public class ParseJVM
    extends org.apache.bcel.classfile.EmptyVisitor
{

    private JavaClass        clazz;

    private org.jdom.Element xml_root;

    private org.jdom.Element xml_class;

    private org.jdom.Element xml_method;

    private String           class_name;

    private Namespace        nsXMLVM;

    private Namespace        nsJVM;

    private ConstantPoolGen  cp;

    private Hashtable        map;

    private Method           method;



    public ParseJVM(JavaClass clazz)
    {
        this.clazz = clazz;
        class_name = clazz.getClassName();
        cp = new ConstantPoolGen(clazz.getConstantPool());
        nsXMLVM = Namespace.getNamespace("vm", "http://xmlvm.org");
        nsJVM = Namespace.getNamespace("jvm", "http://xmlvm.org/jvm");
        xml_root = new org.jdom.Element("xmlvm", nsXMLVM);
        xml_root.addNamespaceDeclaration(nsJVM);
        xml_root.addContent(new org.jdom.Comment("Generated: " + new Date()));
    }



    /**
     * Start traversal using DefaultVisitor pattern.
     */
    public Document genXMLVM()
    {
        new DescendingVisitor(clazz, this).visit();
        org.jdom.Document doc = new Document(xml_root);
        return doc;
    }



    public void visitJavaClass(JavaClass clazz)
    {
        xml_class = new org.jdom.Element("class", nsXMLVM);
        String class_name = clazz.getClassName();
        String package_name = "";
        int i = class_name.lastIndexOf('.');
        if (i != -1) {
            package_name = class_name.substring(0, i);
            class_name = class_name.substring(i + 1);
        }
        xml_class.setAttribute("name", class_name);
        if (!package_name.equals(""))
            xml_class.setAttribute("package", package_name);
        addAccessModifiers(xml_class, clazz.getAccessFlags());
        xml_class.setAttribute("extends", clazz.getSuperclassName());
        String[] interfaces = clazz.getInterfaceNames();
        if (interfaces.length != 0) {
            String allInterfaces = "";
            for (i = 0; i < interfaces.length; i++) {
                if (!allInterfaces.equals(""))
                    allInterfaces += ",";
                allInterfaces += interfaces[i];
            }
            xml_class.setAttribute("interfaces", allInterfaces);
        }
        xml_root.addContent(xml_class);
    }



    public void visitField(Field field)
    {
        Element f = new Element("field", nsXMLVM);
        xml_class.addContent(f);
        addAccessModifiers(f, field.getAccessFlags());
        f.setAttribute("name", field.getName());
        Type t = field.getType();
        f.setAttribute("type", t.toString());
        ConstantValue val = field.getConstantValue();
        if (val != null) {
        	f.setAttribute("value", val.toString());
        }
    }



    public void visitConstantValue(ConstantValue cv)
    {
        // System.out.println("**************** = " + cv);
    }



    public void visitDeprecated(org.apache.bcel.classfile.Deprecated attribute)
    {
        // printEndMethod(attribute);
    }



    public void visitSynthetic(Synthetic attribute)
    {
        // printEndMethod(attribute);
    }



    private Element parseSignature(String signature)
    {
        org.jdom.Element sgn = new Element("signature", nsXMLVM);
        String[] params = Utility
                .methodSignatureArgumentTypes(signature, false);

        Element ret = new Element("return", nsXMLVM);
        ret.setAttribute("type", Utility.methodSignatureReturnType(signature,
                false));
        sgn.addContent(ret);

        for (int i = 0; i < params.length; i++) {
            Element param = new Element("parameter", nsXMLVM);
            param.setAttribute("type", params[i]);
            sgn.addContent(param);
        }
        return sgn;
    }



    public void visitMethod(Method method)
    {
        xml_method = new Element("method", nsXMLVM);
        xml_method.setAttribute("name", method.getName());
        addAccessModifiers(xml_method, method.getAccessFlags());
        if (!method.isAbstract() && !method.isNative()) {
            // Abstract methods don't have an implementation
            Code code = method.getCode();
            String maxStack = java.lang.String.valueOf(code.getMaxStack());
            String maxLocals = java.lang.String.valueOf(code.getMaxLocals());
            xml_method.setAttribute("stack", maxStack);
            xml_method.setAttribute("locals", maxLocals);
        }
        Element sgn = parseSignature(method.getSignature());
        xml_method.addContent(sgn);

        // Look for NativeInterface annotation
        for (AnnotationEntry annotation : method.getAnnotationEntries()) {
            String type = annotation.getAnnotationType();
            if (type.equals("Lorg/xmlvm/NativeInterface;")) {
                ElementValuePair[] value = annotation.getElementValuePairs();
                String nativeMethodName = value[0].getValue().toString();
                xml_method.setAttribute("nativeInterface", nativeMethodName);
                break;
            }
        }

        xml_class.addContent(xml_method);
        this.method = method;
    }



    private void addAccessModifiers(Element node, int flags)
    {
        String[] modifiers = Utility.accessToString(flags).split(" ");
        for (int i = 0; i < modifiers.length; i++) {
            String modifier = modifiers[i];
            if (modifier.equals(""))
                continue;
            String first = modifier.substring(0, 1).toUpperCase();
            String last = modifier.substring(1);
            node.setAttribute("is" + first + last, "true");
        }

    }



    public void visitExceptionTable(ExceptionTable e)
    {
        /*
         * String[] names = e.getExceptionNames(); for (int i = 0; i <
         * names.length; i++) out.println(".throws " + names[i].replace('.',
         * '/'));
         * 
         * printEndMethod(e);
         */
    }



    private void addConstant(Element node, int idx)
    {
        Constant c = cp.getConstant(idx);
        if (c instanceof ConstantString) {
            node.setAttribute("type", "java.lang.String");
            String val = ((ConstantString) c).getBytes(cp.getConstantPool());
            val = val.replaceAll("\\n", "\\\\n");
            node.setAttribute("value", val);
            // node.setText(val);
        }
        else if (c instanceof ConstantClass) {
            ConstantClass cc = (ConstantClass) c;
            String s = (String) cc.getConstantValue(cp.getConstantPool());
            s = s.replace("/", ".");
            node.setAttribute("type", s);
        }
        else if (c instanceof ConstantDouble) {
            node.setAttribute("type", "double");
            node.setAttribute("value", java.lang.String
                    .valueOf(((ConstantDouble) c).getBytes()));
        }
        else if (c instanceof ConstantLong) {
            node.setAttribute("type", "long");
            node.setAttribute("value", java.lang.String
                    .valueOf(((ConstantLong) c).getBytes()));
        }
        else if (c instanceof ConstantFloat) {
            node.setAttribute("type", "float");
            node.setAttribute("value", java.lang.String
                    .valueOf(((ConstantFloat) c).getBytes()));
        }
        else if (c instanceof ConstantInteger) {
            node.setAttribute("type", "int");
            node.setAttribute("value", String.valueOf(((ConstantInteger) c)
                    .getBytes()));
        }
        else {
            node.setAttribute("type", "unknown");
            node.setAttribute("value", c.toString());
        }
    }



    public void visitCode(Code code)
    {
        int label_counter = 0;

        MethodGen mg = new MethodGen(method, class_name, cp);
        InstructionList il = mg.getInstructionList();
        InstructionHandle[] ihs = il.getInstructionHandles();

        /*
         * Pass 1: Give all referenced instruction handles a symbolic name, i.e.
         * a label.
         */
        map = new Hashtable();

        for (int i = 0; i < ihs.length; i++) {
            if (ihs[i] instanceof BranchHandle) {
                BranchInstruction bi = (BranchInstruction) ihs[i]
                        .getInstruction();

                if (bi instanceof Select) { // Special cases LOOKUPSWITCH and
                    // TABLESWITCH
                    InstructionHandle[] targets = ((Select) bi).getTargets();

                    for (int j = 0; j < targets.length; j++)
                        put(targets[j], label_counter++);
                }

                InstructionHandle ih = bi.getTarget();
                put(ih, label_counter++);
            }
        }

        LocalVariableGen[] lvs = mg.getLocalVariables();
        for (int i = 0; i < lvs.length; i++) {
            InstructionHandle ih = lvs[i].getStart();
            put(ih, label_counter++);
            ih = lvs[i].getEnd();
            put(ih, label_counter++);
        }

        CodeExceptionGen[] ehs = mg.getExceptionHandlers();
        for (int i = 0; i < ehs.length; i++) {
            CodeExceptionGen c = ehs[i];
            InstructionHandle ih = c.getHandlerPC();
            put(ih, label_counter++);
        }

        /*
         * Pass 2: Output code.
         */

        org.jdom.Element xml_code = new Element("code", nsXMLVM);
        xml_code.setAttribute("language", "ByteCode");
        xml_method.addContent(xml_code);
        boolean isConstructor = method.getName().equals("<init>");
        int lastID = -1;
        Element var = null;
        for (int i = 0; i < lvs.length; i++) {
            LocalVariableGen l = lvs[i];
            int id = l.getIndex();
            if (isConstructor && lastID == 0 && id == 2)
                /*
                 * There is a gap in the variable IDs. This indicates a missing
                 * <var> declaration for a hidden parameter.
                 */
                addHiddenVarDecl(xml_code, 1);
            var = new Element("var", nsJVM);
            var.setAttribute("name", l.getName());
            var.setAttribute("id", String.valueOf(id));
            var.setAttribute("type", l.getType().toString());
            xml_code.addContent(var);
            lastID = id;
        }
        /*
         * There is only one <var> (for 'this'), but there is also one
         * parameter. This indicates a missing <var> declaration for a hidden
         * parameter.
         */
        if (isConstructor && lvs.length == 1
                && method.getArgumentTypes().length == 1)
            addHiddenVarDecl(xml_code, 1);


        if (method.isSynthetic()) {
            /*
             * For a synthetic method, all arguments are hidden.
             */
            int id = 0;
            if (!method.isStatic())
                addHiddenVarDecl(xml_code, id++);
            for (int i = 0; i < method.getArgumentTypes().length; i++) {
                addHiddenVarDecl(xml_code, id++);
            }
        }

        for (int i = 0; i < ihs.length; i++) {
            InstructionHandle ih = ihs[i];
            Instruction inst = ih.getInstruction();
            Integer id = (Integer) map.get(ih);

            for (int j = 0; j < ehs.length; j++) {
                CodeExceptionGen ex = ehs[j];
                if (ex.getStartPC().equals(ih)) {
                    ObjectType caught = ex.getCatchType();
                    Element nested_xml_code;
                    if (caught == null) {
                        nested_xml_code = new Element("catch-finally", nsJVM);
                    }
                    else {
                        nested_xml_code = new Element("catch", nsJVM);
                        nested_xml_code.setAttribute("type", caught
                                .getClassName());
                    }
                    nested_xml_code.setAttribute("using",
                            get(ex.getHandlerPC()), nsJVM);
                    xml_code.addContent(nested_xml_code);
                    xml_code = nested_xml_code;
                }
            }

            if (id != null) {
                // we have a label at this position
                Element label = new Element("label", nsJVM);
                label.setAttribute("id", id.toString());
                xml_code.addContent(label);
            }

            Element xml_inst = new Element(inst.getName(), nsJVM);
            xml_code.addContent(xml_inst);

            if (inst instanceof BranchInstruction) {
                emitBranchInstruction(xml_inst, ih);
            }
            else if (inst instanceof FieldInstruction) {
                emitFieldInstruction(xml_inst, (FieldInstruction) inst);
            }
            else if (inst instanceof InvokeInstruction) {
                emitInvokeInstruction(xml_inst, (InvokeInstruction) inst);
            }
            else if (inst instanceof ReturnInstruction) {
                // this method does not need to do anything
                // emitReturnInstruction(xml_inst, (ReturnInstruction) inst);
            }
            else if (inst instanceof CPInstruction) {
                emitCPInstruction(xml_inst, (CPInstruction) inst);
            }
            else if (inst instanceof IINC) {
                emitIINC(xml_inst, (IINC) inst);
            }
            else if (inst instanceof LocalVariableInstruction) {
                emitLocalVariableInstruction(xml_inst,
                        (LocalVariableInstruction) inst);
            }
            else if (inst instanceof ConstantPushInstruction) {
                emitConstantPushInstruction(xml_inst,
                        (ConstantPushInstruction) inst);
            }
            else if (inst instanceof ATHROW) {
                emitATHROW(xml_inst, (ATHROW) inst);
            }
            else if (inst instanceof NEWARRAY) {
                emitNEWARRAY(xml_inst, (NEWARRAY) inst);
            }
            else if (inst instanceof ANEWARRAY) {
                emitANEWARRAY(xml_inst, (ANEWARRAY) inst);
            }
            else {
                // do nothing
            }

            // Close any try-blocks that end here
            for (int j = 0; j < ehs.length; j++) {
                if (ehs[j].getEndPC().equals(ih)) {
                    xml_code = (Element) xml_code.getParent();
                }
            }
        }
    }



    /**
     * The Java compiler sometimes generates additional arguments or methods
     * that are not in the original source code (called <em>synthetic</em>
     * arguments or methods. For those the compiler does not generate local
     * variable declarations (&lt;var&gt;). For symmetry reasons, we generate
     * those missing &lt;var&gt; declarations in XMLVM.
     * 
     * @param xml_code
     * @param id
     */
    private void addHiddenVarDecl(Element xml_code, int id)
    {
        String type = null;
        if (method.isStatic()) {
            Type t = method.getArgumentTypes()[id];
            type = t.toString();
        }
        else {
            if (id == 0) {
                type = this.class_name;
            }
            else {
                Type t = method.getArgumentTypes()[id - 1];
                type = t.toString();
            }
        }
        /*
         * Should there be a computational type 2 argument, we need to re-think
         * the numbering of the <var> declarations.
         */
        assert !type.equals("long") && !type.equals("double");
        
        Element var = new Element("var", nsJVM);
        var.setAttribute("name", "__HIDDEN_" + id);
        var.setAttribute("id", "" + id);
        var.setAttribute("type", type);
        var.setAttribute("isSynthetic", "true");
        xml_code.addContent(var);
    }



    private void emitBranchInstruction(Element xml_inst, InstructionHandle ih)
    {
        Instruction inst = ih.getInstruction();

        if (inst instanceof Select) { // Special cases LOOKUPSWITCH and
            // TABLESWITCH
            Select s = (Select) inst;
            int[] matchs = s.getMatchs();
            InstructionHandle[] targets = s.getTargets();

            if (s instanceof TABLESWITCH) {
                xml_inst.setAttribute("min", "" + matchs[0]);
                xml_inst.setAttribute("max", "" + matchs[matchs.length - 1]);

                for (int j = 0; j < targets.length; j++) {
                    org.jdom.Element case_label = new Element("case", nsJVM);
                    case_label.setAttribute("label", get(targets[j]));
                    xml_inst.addContent(case_label);
                }
            }
            else { // LOOKUPSWITCH
                for (int j = 0; j < targets.length; j++) {
                    org.jdom.Element case_label = new Element("case", nsJVM);
                    case_label.setAttribute("key", "" + matchs[j]);
                    case_label.setAttribute("label", get(targets[j]));
                    xml_inst.addContent(case_label);
                }
            }

            // Applies to both
            org.jdom.Element default_label = new Element("default", nsJVM);
            default_label.setAttribute("label", get(s.getTarget()));
            xml_inst.addContent(default_label);
        }
        else {
            BranchInstruction bi = (BranchInstruction) inst;
            ih = bi.getTarget();
            String label = get(ih);
            xml_inst.setAttribute("label", label);
            /*
             * out.println("\t" + Constants.OPCODE_NAMES[bi.getOpcode()] + " " +
             * label);
             */
        }
    }



    private void emitFieldInstruction(Element xml_inst, FieldInstruction inst)
    {
        Type type = inst.getFieldType(cp);
        xml_inst.setAttribute("class-type", inst.getClassName(cp));
        xml_inst.setAttribute("type", type.toString());
        String name = inst.getName(cp);
        xml_inst.setAttribute("field", name);
    }



    private void emitInvokeInstruction(Element xml_inst, InvokeInstruction inst)
    {
        Type type = inst.getClassType(cp);
        xml_inst.setAttribute("class-type", type.toString());
        xml_inst.setAttribute("method", inst.getMethodName(cp));
        String sgn = inst.getSignature(cp);
        xml_inst.addContent(parseSignature(sgn));
    }



    private final String get(InstructionHandle ih)
    {
        return map.get(ih).toString();
    }



    private void emitCPInstruction(Element xml_inst, CPInstruction inst)
    {
        addConstant(xml_inst, inst.getIndex());
    }



    private void emitIINC(Element xml_inst, IINC inst)
    {
        xml_inst.setAttribute("index", java.lang.String
                .valueOf(inst.getIndex()));
        xml_inst.setAttribute("incr", java.lang.String.valueOf(inst
                .getIncrement()));
    }



    private void emitLocalVariableInstruction(Element xml_inst,
            LocalVariableInstruction inst)
    {
        Type type = inst.getType(cp);
        xml_inst.setAttribute("type", type.toString());
        xml_inst.setAttribute("index", java.lang.String
                .valueOf(inst.getIndex()));
        String op = inst.toString();
        int i;
        for (i = 0; i < op.length(); i++) {
            char ch = op.toUpperCase().charAt(i);
            if (ch < 'A' || ch > 'Z')
                break;
        }
        op = op.substring(0, i);
        xml_inst.setName(op);
    }



    private void emitConstantPushInstruction(Element xml_inst,
            ConstantPushInstruction inst)
    {
        Type type = inst.getType(cp);
        xml_inst.setAttribute("type", type.toString());
        xml_inst.setAttribute("value", java.lang.String
                .valueOf(inst.getValue()));
        String op = xml_inst.getName();
        op = op.split("_")[0];
        xml_inst.setName(op);
    }



    private void emitATHROW(Element xml_inst, ATHROW inst)
    {
        // The purpose of this method is to attempt to determine
        // the type of the Exception to be thrown. We do this by
        // searching backwards through the instructions preceeding
        // the current athrow. We look for a <new/> where we
        // assume that this instantiates the exception object.
        // If we encounter a <label/> while searching for <new/>,
        // we stop the search because flow control makes it unlikely
        // that we get the right <new/>. In that case we assume
        // java.lang.Throwable as the type.
        List list = ((Element) xml_inst.getParent()).getChildren();
        Element[] siblings = (Element[]) list.toArray(new Element[0]);
        // java.lang.Throwable is the default type if we don't
        // find the proper type
        String type = "java.lang.Throwable";
        for (int i = siblings.length - 1; i >= 0; i--) {
            Element elem = siblings[i];
            String name = elem.getName();
            if (name.equals("label"))
                break;
            if (name.equals("new")) {
                // We found the <new> that instantiates the exception object
                // Now we need to copy the type
                type = elem.getAttributeValue("type");
                break;
            }
        }
        xml_inst.setAttribute("type", type);
    }



    private void emitNEWARRAY(Element xml_inst, NEWARRAY inst)
    {

        xml_inst.setAttribute("type", inst.getType().toString());

    }



    private void emitANEWARRAY(Element xml_inst, ANEWARRAY inst)
    {

        xml_inst.setAttribute("type", inst.getType(cp).toString());

    }



    private final void put(InstructionHandle ih, int id)
    {
        if ((Integer) map.get(ih) == null)
            map.put(ih, new Integer(id));
    }



}