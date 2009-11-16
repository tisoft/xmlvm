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

package org.xmlvm;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.List;

import org.apache.bcel.Constants;
import org.apache.bcel.generic.AALOAD;
import org.apache.bcel.generic.AASTORE;
import org.apache.bcel.generic.ACONST_NULL;
import org.apache.bcel.generic.ANEWARRAY;
import org.apache.bcel.generic.ARETURN;
import org.apache.bcel.generic.ARRAYLENGTH;
import org.apache.bcel.generic.ASTORE;
import org.apache.bcel.generic.ArrayType;
import org.apache.bcel.generic.BIPUSH;
import org.apache.bcel.generic.BranchInstruction;
import org.apache.bcel.generic.CHECKCAST;
import org.apache.bcel.generic.ClassGen;
import org.apache.bcel.generic.CompoundInstruction;
import org.apache.bcel.generic.ConstantPoolGen;
import org.apache.bcel.generic.D2F;
import org.apache.bcel.generic.D2I;
import org.apache.bcel.generic.DADD;
import org.apache.bcel.generic.DDIV;
import org.apache.bcel.generic.DLOAD;
import org.apache.bcel.generic.DMUL;
import org.apache.bcel.generic.DSTORE;
import org.apache.bcel.generic.DSUB;
import org.apache.bcel.generic.DUP;
import org.apache.bcel.generic.F2I;
import org.apache.bcel.generic.FADD;
import org.apache.bcel.generic.FCMPG;
import org.apache.bcel.generic.FCMPL;
import org.apache.bcel.generic.FLOAD;
import org.apache.bcel.generic.FMUL;
import org.apache.bcel.generic.FSTORE;
import org.apache.bcel.generic.FSUB;
import org.apache.bcel.generic.FieldGen;
import org.apache.bcel.generic.GOTO;
import org.apache.bcel.generic.I2B;
import org.apache.bcel.generic.I2F;
import org.apache.bcel.generic.I2L;
import org.apache.bcel.generic.IADD;
import org.apache.bcel.generic.ICONST;
import org.apache.bcel.generic.IDIV;
import org.apache.bcel.generic.IFEQ;
import org.apache.bcel.generic.IFNE;
import org.apache.bcel.generic.IF_ACMPNE;
import org.apache.bcel.generic.IF_ICMPGE;
import org.apache.bcel.generic.IF_ICMPGT;
import org.apache.bcel.generic.IF_ICMPLE;
import org.apache.bcel.generic.IF_ICMPLT;
import org.apache.bcel.generic.IF_ICMPNE;
import org.apache.bcel.generic.IINC;
import org.apache.bcel.generic.ILOAD;
import org.apache.bcel.generic.IMUL;
import org.apache.bcel.generic.IREM;
import org.apache.bcel.generic.ISTORE;
import org.apache.bcel.generic.ISUB;
import org.apache.bcel.generic.Instruction;
import org.apache.bcel.generic.InstructionFactory;
import org.apache.bcel.generic.InstructionHandle;
import org.apache.bcel.generic.InstructionList;
import org.apache.bcel.generic.L2I;
import org.apache.bcel.generic.LADD;
import org.apache.bcel.generic.LLOAD;
import org.apache.bcel.generic.LSTORE;
import org.apache.bcel.generic.MethodGen;
import org.apache.bcel.generic.NOP;
import org.apache.bcel.generic.ObjectType;
import org.apache.bcel.generic.POP;
import org.apache.bcel.generic.PUSH;
import org.apache.bcel.generic.Type;
import org.jdom.Document;
import org.jdom.Element;
import org.jdom.Namespace;

public class GenJava {

    private InstructionFactory        _factory;
    private InstructionList           il;
    private ConstantPoolGen           _cp;
    private ClassGen                  _cg;
    private InstructionHandlerManager instructionHandlerManager;
    private String                    fullQualifiedClassName;
    private Document                  xmlvm;
    private Namespace                 nsXMLVM;
    private Namespace                 nsJVM;

    public GenJava(Document xmlvm) {
        this.xmlvm = xmlvm;
        nsXMLVM = Namespace.getNamespace("vm", "http://xmlvm.org");
        nsJVM = Namespace.getNamespace("clr", "http://xmlvm.org/jvm");
        // nsXMLVM = Namespace.NO_NAMESPACE;
        // nsJVM = Namespace.NO_NAMESPACE;
    }

    /**
     * Creates Java binary files from the org.jdom.Document that is associated
     * with this object. The location for the binary files is determined by the
     * given string path.
     */
    public void create(String path) throws IllegalXMLVMException, IOException {
        Element root = xmlvm.getRootElement();
        if (!root.getName().equals("xmlvm"))
            throw new IllegalXMLVMException("Root element needs to be <xmlvm>");
        List<Element> clazzes = root.getChildren("class", nsXMLVM);

        for (Element clazz : clazzes) {
            if (clazz == null)
                throw new IllegalXMLVMException("XMLVM contains no class");
            createClass(clazz);
            for (Object o : clazz.getChildren()) {
                Element decl = (Element) o;
                String tag = decl.getName();
                if (tag.equals("method"))
                    createMethod(decl);
                else if (tag.equals("field"))
                    createField(decl);
                else
                    throw new IllegalXMLVMException("Unknown class declaration '" + tag + "'");
            }

            String packageName = clazz.getAttributeValue("package");

            // If there is a package name, then create necessary
            // folders for that package.
            if (packageName != null && packageName != "") {
                packageName = File.separatorChar + packageName.replace('.', File.separatorChar);
                new File(path + File.separatorChar + packageName).mkdirs();
            } else {
                packageName = "";
            }

            String className = clazz.getAttributeValue("name");
            String final_path = path + packageName + File.separatorChar + className + ".class";
            OutputStream out = new FileOutputStream(final_path);
            System.out.println("Creating java class: " + final_path);

            _cg.getJavaClass().dump(out);
        }
    }

    private void createClass(Element clazz) {
        String packageName = clazz.getAttributeValue("package");
        packageName = packageName == null ? "" : packageName;
        String clazzName = clazz.getAttributeValue("name");
        String fileName = clazzName + ".java";
        fullQualifiedClassName = packageName.equals("") ? clazzName : packageName + "." + clazzName;
        String baseClazz = clazz.getAttributeValue("extends");
        // TODO Read interfaces
        String[] interfaces = new String[] {};
        short accessFlags = getAccessFlags(clazz);
        _cg = new ClassGen(fullQualifiedClassName, baseClazz, fileName, accessFlags, interfaces);
        _cp = _cg.getConstantPool();
        _factory = new InstructionFactory(_cg, _cp);
    }

    private void createMethod(Element method) throws IllegalXMLVMException {
        il = new InstructionList();
        instructionHandlerManager = new InstructionHandlerManager(il);
        String methodName = method.getAttributeValue("name");

        Element signature = method.getChild("signature", nsXMLVM);
        Type retType = collectReturnType(signature);
        Type[] argTypes = collectArgumentTypes(signature);
        short accessFlags = getAccessFlags(method);

        if (methodName.equals(".cctor")) // Same concept, different names in
                                         // .net/JVM. Note we are doing init of
                                         // statics for a class
        {
            System.out.println("Changed name to clinit");
            methodName = "<clinit>";
            accessFlags = 0x8; // static
        }

        MethodGen m = new MethodGen(accessFlags, retType, argTypes, null, methodName,
                fullQualifiedClassName, il, _cp);
        Element code = method.getChild("code", nsXMLVM);
        createCode(code);
        instructionHandlerManager.checkConsistency();
        m.setMaxLocals();
        m.setMaxStack();
        _cg.addMethod(m.getMethod());
        il.dispose();
    }

    private void createField(Element field) throws IllegalXMLVMException {
        String name = field.getAttributeValue("name");
        Type t = parseTypeString(field.getAttributeValue("type"));
        short flags = getAccessFlags(field);
        FieldGen f = new FieldGen(flags, t, name, _cp);
        _cg.addField(f.getField());
    }

    private Type collectReturnType(Element signature) throws IllegalXMLVMException {
        Element ret = signature.getChild("return", nsXMLVM);
        String t = ret.getAttributeValue("type");
        if (t.equals("void"))
            return Type.VOID;
        return parseTypeString(t);
    }

    private Type[] collectArgumentTypes(Element signature) throws IllegalXMLVMException {
        List<Element> params = signature.getChildren("parameter", nsXMLVM);
        if (params.isEmpty())
            return Type.NO_ARGS;
        List<Type> argTypes = new ArrayList<Type>();
        for (Element p : params) {
            String type = p.getAttributeValue("type");
            argTypes.add(parseTypeString(type));
        }
        return argTypes.toArray(new Type[0]);
    }

    private Type parseTypeString(String type) throws IllegalXMLVMException {
        int arrayDimension = 0;
        while (type.endsWith("[]")) {
            arrayDimension++;
            type = type.substring(0, type.length() - 2);
        }
        Type baseType = null;
        if (type.equals("java.lang.String"))
            baseType = Type.STRING;
        if (type.equals("boolean"))
            baseType = Type.BOOLEAN;
        if (type.equals("byte"))
            baseType = Type.BYTE;
        if (type.equals("short"))
            baseType = Type.SHORT;
        if (type.equals("int"))
            baseType = Type.INT;
        if (type.equals("long"))
            baseType = Type.LONG;
        if (type.equals("float"))
            baseType = Type.FLOAT;
        if (type.equals("double"))
            baseType = Type.DOUBLE;
        if (type.equals("char"))
            baseType = Type.CHAR;
        if (type.equals("java.lang.Object"))
            baseType = Type.OBJECT;
        if (baseType == null)
            baseType = new ObjectType(type);
        if (arrayDimension == 0)
            return baseType;
        else
            return new ArrayType(baseType, arrayDimension);
    }

    private void createCode(Element code) throws IllegalXMLVMException {
        List<Element> instructions = code.getChildren();
        for (Element inst : instructions) {
            String name = inst.getName();
            String opcMethodName = "createInstruction" + name.substring(0, 1).toUpperCase()
                    + name.substring(1);
            Class appClazz;
            Method opcMeth;
            Class[] paramTypes = { Element.class };
            Object[] params = { inst };
            appClazz = this.getClass();
            Object newInstr = null;
            try {
                opcMeth = appClazz.getMethod(opcMethodName, paramTypes);
                newInstr = opcMeth.invoke(this, params);
            } catch (NoSuchMethodException ex) {
                throw new IllegalXMLVMException("Illegal instruction 1, unable to find method "
                        + opcMethodName + " for '" + name + "'");
            } catch (InvocationTargetException ex) {
                ex.printStackTrace();
                throw new IllegalXMLVMException("Illegal instruction 2 '" + name + "'");
            } catch (IllegalAccessException ex) {
                throw new IllegalXMLVMException("Illegal instruction 3 '" + name + "'");
            }
            if (newInstr != null) {
                InstructionHandle ih = null;
                if (newInstr instanceof BranchInstruction)
                    ih = il.append((BranchInstruction) newInstr);
                else if (newInstr instanceof CompoundInstruction)
                    ih = il.append((CompoundInstruction) newInstr);
                else if (newInstr instanceof Instruction)
                    ih = il.append((Instruction) newInstr);
                instructionHandlerManager.registerInstructionHandle(ih);

            }
        }
    }

    private short getAccessFlags(Element elem) {
        short af = 0;
        af |= checkAccessFlag(elem, "isPublic", Constants.ACC_PUBLIC);
        af |= checkAccessFlag(elem, "isPrivate", Constants.ACC_PRIVATE);
        af |= checkAccessFlag(elem, "isProtected", Constants.ACC_PROTECTED);
        af |= checkAccessFlag(elem, "isSynchronized", Constants.ACC_SYNCHRONIZED);
        af |= checkAccessFlag(elem, "isStatic", Constants.ACC_STATIC);
        return af;
    }

    private short checkAccessFlag(Element elem, String flag, short jvmFlag) {
        String val = elem.getAttributeValue(flag);
        if (val == null)
            return 0;
        return val.equals("true") ? jvmFlag : 0;
    }

    public Instruction createInstructionVar(Element inst) {
        return null;
    }

    public Instruction createInstructionCheckcast(Element inst) throws IllegalXMLVMException {
        String classType = inst.getAttributeValue("type");
        return new CHECKCAST(_cp.addClass(classType));
    }

    public Instruction createInstructionF2i(Element inst) {
        return new F2I();
    }

    public Instruction createInstructionFmul(Element inst) {
        return new FMUL();
    }

    public Instruction createInstructionFcmpl(Element inst) {
        return new FCMPL();
    }

    public Instruction createInstructionFcmpg(Element inst) {
        return new FCMPG();
    }

    public Instruction createInstructionFsub(Element inst) {
        return new FSUB();
    }

    public Instruction createInstructionDup(Element inst) {
        return new DUP();
    }

    public Instruction createInstructionLabel(Element inst) throws IllegalXMLVMException {
        int id = Integer.parseInt(inst.getAttributeValue("id"));
        instructionHandlerManager.setLabelID(id);
        return null;
    }

    public Instruction createInstructionGoto(Element inst) {
        int id = Integer.parseInt(inst.getAttributeValue("label"));
        BranchInstruction bi = new GOTO(null);
        instructionHandlerManager.registerBranchInstruction(bi, id);
        return bi;
    }

    public Instruction createInstructionD2f(Element inst) {
        return new D2F();
    }

    public Instruction createInstructionI2f(Element inst) {
        return new I2F();
    }

    public Instruction createInstructionD2i(Element inst) {
        return new D2I();
    }

    public Instruction createInstructionArraylength(Element inst) {
        return new ARRAYLENGTH();
    }

    public Instruction createInstructionIf_acmpne(Element inst) {
        int id = Integer.parseInt(inst.getAttributeValue("label"));
        BranchInstruction bi = new IF_ACMPNE(null);
        instructionHandlerManager.registerBranchInstruction(bi, id);
        return bi;
    }

    public Instruction createInstructionIf_icmplt(Element inst) {
        int id = Integer.parseInt(inst.getAttributeValue("label"));
        BranchInstruction bi = new IF_ICMPLT(null);
        instructionHandlerManager.registerBranchInstruction(bi, id);
        return bi;
    }

    public Instruction createInstructionIf_icmpgt(Element inst) {
        int id = Integer.parseInt(inst.getAttributeValue("label"));
        BranchInstruction bi = new IF_ICMPGT(null);
        instructionHandlerManager.registerBranchInstruction(bi, id);
        return bi;
    }

    public Instruction createInstructionIf_icmpge(Element inst) {
        int id = Integer.parseInt(inst.getAttributeValue("label"));
        BranchInstruction bi = new IF_ICMPGE(null);
        instructionHandlerManager.registerBranchInstruction(bi, id);
        return bi;
    }

    public Instruction createInstructionIf_icmple(Element inst) {
        int id = Integer.parseInt(inst.getAttributeValue("label"));
        BranchInstruction bi = new IF_ICMPLE(null);
        instructionHandlerManager.registerBranchInstruction(bi, id);
        return bi;
    }

    public Instruction createInstructionIf_icmpne(Element inst) {
        int id = Integer.parseInt(inst.getAttributeValue("label"));
        BranchInstruction bi = new IF_ICMPNE(null);
        instructionHandlerManager.registerBranchInstruction(bi, id);
        return bi;
    }

    public Instruction createInstructionIfeq(Element inst) {
        int id = Integer.parseInt(inst.getAttributeValue("label"));
        BranchInstruction bi = new IFEQ(null);
        instructionHandlerManager.registerBranchInstruction(bi, id);
        return bi;
    }

    public Instruction createInstructionIfne(Element inst) {
        int id = Integer.parseInt(inst.getAttributeValue("label"));
        BranchInstruction bi = new IFNE(null);
        instructionHandlerManager.registerBranchInstruction(bi, id);
        return bi;
    }

    public Instruction createInstructionAconst_null(Element inst) throws IllegalXMLVMException {
        return new ACONST_NULL();
    }

    public Instruction createInstructionAload(Element inst) throws IllegalXMLVMException {
        String t = inst.getAttributeValue("type");
        Type type = parseTypeString(t);
        int idx = Integer.parseInt(inst.getAttributeValue("index"));
        return _factory.createLoad(type, idx);
    }

    public Instruction createInstructionInvokespecial(Element inst) throws IllegalXMLVMException {
        return createInvokeInstruction(inst, Constants.INVOKESPECIAL);
    }

    public Instruction createInstructionInvokevirtual(Element inst) throws IllegalXMLVMException {
        return createInvokeInstruction(inst, Constants.INVOKEVIRTUAL);
    }

    public Instruction createInstructionInvokestatic(Element inst) throws IllegalXMLVMException {
        return createInvokeInstruction(inst, Constants.INVOKESTATIC);
    }

    private Instruction createInvokeInstruction(Element inst, short kind)
            throws IllegalXMLVMException {
        String classType = inst.getAttributeValue("class-type");
        String methodName = inst.getAttributeValue("method");
        Element signature = inst.getChild("signature", nsXMLVM);
        Type retType = collectReturnType(signature);
        Type[] argTypes = collectArgumentTypes(signature);
        return _factory.createInvoke(classType, methodName, retType, argTypes, kind);
    }

    public Instruction createInstructionReturn(Element inst) {
        return _factory.createReturn(Type.VOID);
    }

    public Instruction createInstructionIreturn(Element inst) {
        return _factory.createReturn(Type.INT);
    }

    public Instruction createInstructionDreturn(Element inst) {
        return _factory.createReturn(Type.DOUBLE);
    }

    public Instruction createInstructionFreturn(Element inst) {
        return _factory.createReturn(Type.FLOAT);
    }

    public Instruction createInstructionLreturn(Element inst) {
        return _factory.createReturn(Type.LONG);
    }

    public Instruction createInstructionGetstatic(Element inst) throws IllegalXMLVMException {
        String classType = inst.getAttributeValue("class-type");
        String field = inst.getAttributeValue("field");
        Type type = parseTypeString(inst.getAttributeValue("type"));
        return _factory.createFieldAccess(classType, field, type, Constants.GETSTATIC);
    }

    public CompoundInstruction createInstructionLdc(Element inst) throws IllegalXMLVMException {
        return createInstructionPush(inst);
    }

    public CompoundInstruction createInstructionLdc2_w(Element inst) throws IllegalXMLVMException {
        return createInstructionPush(inst);
    }

    private CompoundInstruction createInstructionPush(Element inst) throws IllegalXMLVMException {
        String t = inst.getAttributeValue("type");
        Type type = parseTypeString(t);
        String value = inst.getAttributeValue("value");
        if (type == Type.STRING)
            return new PUSH(_cp, value);
        else if (type == Type.INT)
            return new PUSH(_cp, Integer.parseInt(value));
        else if (type == Type.FLOAT)
            return new PUSH(_cp, Float.parseFloat(value));
        else if (type == Type.DOUBLE)
            return new PUSH(_cp, Double.parseDouble(value));
        else if (type == Type.LONG)
            return new PUSH(_cp, Long.parseLong(value));
        else
            throw new IllegalXMLVMException(inst.getName() + " with bad type '" + t + "'");
    }

    public Instruction createInstructionIconst(Element inst) {
        int value = Integer.parseInt(inst.getAttributeValue("value"));
        return new ICONST(value);
    }

    public Instruction createInstructionIinc(Element inst) {
        int index = Integer.parseInt(inst.getAttributeValue("index"));
        int incr = Integer.parseInt(inst.getAttributeValue("incr"));
        return new IINC(index, incr);
    }

    public Instruction createInstructionBipush(Element inst) {
        byte val = (byte) Integer.parseInt(inst.getAttributeValue("value"));
        return new BIPUSH(val);
    }

    public Instruction createInstructionIstore(Element inst) throws IllegalXMLVMException {
        int idx = Integer.parseInt(inst.getAttributeValue("index"));
        return new ISTORE(idx);
    }

    public Instruction createInstructionLstore(Element inst) throws IllegalXMLVMException {
        // BCEL's LSTORE creation instruction only takes an integer!!!
        int idx = Integer.parseInt(inst.getAttributeValue("index"));
        return new LSTORE(idx);
    }

    public Instruction createInstructionIload(Element inst) throws IllegalXMLVMException {
        int idx = Integer.parseInt(inst.getAttributeValue("index"));
        return new ILOAD(idx);
    }

    public Instruction createInstructionLload(Element inst) throws IllegalXMLVMException {
        int idx = Integer.parseInt(inst.getAttributeValue("index"));
        return new LLOAD(idx);
    }

    public Instruction createInstructionAstore(Element inst) {
        int idx = Integer.parseInt(inst.getAttributeValue("index"));
        return new ASTORE(idx);
    }

    public Instruction createInstructionFstore(Element inst) throws IllegalXMLVMException {
        int idx = Integer.parseInt(inst.getAttributeValue("index"));
        return new FSTORE(idx);
    }

    public Instruction createInstructionFload(Element inst) throws IllegalXMLVMException {
        int idx = Integer.parseInt(inst.getAttributeValue("index"));
        return new FLOAD(idx);
    }

    public Instruction createInstructionDstore(Element inst) throws IllegalXMLVMException {
        int idx = Integer.parseInt(inst.getAttributeValue("index"));
        return new DSTORE(idx);
    }

    public Instruction createInstructionDload(Element inst) throws IllegalXMLVMException {
        int idx = Integer.parseInt(inst.getAttributeValue("index"));
        return new DLOAD(idx);
    }

    public Instruction createInstructionIadd(Element inst) throws IllegalXMLVMException {
        return new IADD();
    }

    public Instruction createInstructionLadd(Element inst) throws IllegalXMLVMException {
        return new LADD();
    }

    public Instruction createInstructionIsub(Element inst) throws IllegalXMLVMException {
        return new ISUB();
    }

    public Instruction createInstructionDsub(Element inst) throws IllegalXMLVMException {
        return new DSUB();
    }

    public Instruction createInstructionAaload(Element inst) throws IllegalXMLVMException {
        return new AALOAD();

    }

    public Instruction createInstructionDadd(Element inst) throws IllegalXMLVMException {
        return new DADD();
    }

    public Instruction createInstructionFadd(Element inst) throws IllegalXMLVMException {
        return new FADD();
    }

    public Instruction createInstructionImul(Element inst) throws IllegalXMLVMException {
        return new IMUL();
    }

    public Instruction createInstructionDmul(Element inst) throws IllegalXMLVMException {
        return new DMUL();
    }

    public Instruction createInstructionIdiv(Element inst) throws IllegalXMLVMException {
        return new IDIV();
    }

    public Instruction createInstructionDdiv(Element inst) throws IllegalXMLVMException {
        return new DDIV();
    }

    public Instruction createInstructionIrem(Element inst) throws IllegalXMLVMException {
        return new IREM();
    }

    public Instruction createInstructionNew(Element inst) {
        String t = inst.getAttributeValue("type");
        return _factory.createNew(t);
    }

    public Instruction createInstructionPutfield(Element inst) throws IllegalXMLVMException {
        String classType = inst.getAttributeValue("class-type");
        String field = inst.getAttributeValue("field");
        String type = inst.getAttributeValue("type");
        Type t = parseTypeString(type);
        return _factory.createPutField(classType, field, t);
    }

    public Instruction createInstructionPutstatic(Element inst) throws IllegalXMLVMException {
        String classType = inst.getAttributeValue("class-type");
        String field = inst.getAttributeValue("field");
        String type = inst.getAttributeValue("type");
        Type t = parseTypeString(type);
        return _factory.createPutStatic(classType, field, t);
    }

    public Instruction createInstructionPop(Element inst) throws IllegalXMLVMException {
        return new POP();
    }

    public Instruction createInstructionGetfield(Element inst) throws IllegalXMLVMException {
        String classType = inst.getAttributeValue("class-type");
        String field = inst.getAttributeValue("field");
        String type = inst.getAttributeValue("type");
        Type t = parseTypeString(type);
        return _factory.createGetField(classType, field, t);
    }

    public Instruction createInstructionAreturn(Element inst) {
        return new ARETURN();
    }

    public Instruction createInstructionAnewarray(Element inst) {
        String classType = inst.getAttributeValue("elementType");
        return new ANEWARRAY(_cp.addClass(classType));
    }

    public Instruction createInstructionAastore(Element inst) {
        return new AASTORE();
    }

    public Instruction createInstructionNop(Element inst) {
        return new NOP();
    }

    public Instruction createInstructionI2b(Element inst) {
        return new I2B();
    }

    public Instruction createInstructionI2l(Element inst) {
        return new I2L();
    }

    public Instruction createInstructionL2i(Element inst) {
        return new L2I();
    }
}
