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

import java.io.ByteArrayInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.util.Date;
import java.util.Hashtable;

import org.jdom.Document;
import org.jdom.Element;
import org.jdom.Namespace;
import org.xmlvm.Log;
import org.xmlvm.main.Arguments;
import org.xmlvm.proc.BundlePhase1;
import org.xmlvm.proc.BundlePhase2;
import org.xmlvm.proc.XmlvmProcessImpl;
import org.xmlvm.proc.XmlvmResource;
import org.xmlvm.proc.XmlvmResource.Type;
import org.xmlvm.proc.in.InputProcess;
import org.xmlvm.proc.in.InputProcess.ExeInputProcess;
import org.xmlvm.util.universalfile.UniversalFile;

import edu.arizona.cs.mbel.instructions.ADD;
import edu.arizona.cs.mbel.instructions.ADD_OVF;
import edu.arizona.cs.mbel.instructions.BGE;
import edu.arizona.cs.mbel.instructions.BGT;
import edu.arizona.cs.mbel.instructions.BLE;
import edu.arizona.cs.mbel.instructions.BLT;
import edu.arizona.cs.mbel.instructions.BNE_UN;
import edu.arizona.cs.mbel.instructions.BOX;
import edu.arizona.cs.mbel.instructions.BR;
import edu.arizona.cs.mbel.instructions.BRFALSE;
import edu.arizona.cs.mbel.instructions.BRTRUE;
import edu.arizona.cs.mbel.instructions.BranchInstruction;
import edu.arizona.cs.mbel.instructions.CALL;
import edu.arizona.cs.mbel.instructions.CALLVIRT;
import edu.arizona.cs.mbel.instructions.CASTCLASS;
import edu.arizona.cs.mbel.instructions.CEQ;
import edu.arizona.cs.mbel.instructions.CGT;
import edu.arizona.cs.mbel.instructions.CLT;
import edu.arizona.cs.mbel.instructions.CONV;
import edu.arizona.cs.mbel.instructions.DIV;
import edu.arizona.cs.mbel.instructions.DUP;
import edu.arizona.cs.mbel.instructions.Instruction;
import edu.arizona.cs.mbel.instructions.InstructionHandle;
import edu.arizona.cs.mbel.instructions.LDARG;
import edu.arizona.cs.mbel.instructions.LDC;
import edu.arizona.cs.mbel.instructions.LDELEM;
import edu.arizona.cs.mbel.instructions.LDFLD;
import edu.arizona.cs.mbel.instructions.LDFTN;
import edu.arizona.cs.mbel.instructions.LDLEN;
import edu.arizona.cs.mbel.instructions.LDLOC;
import edu.arizona.cs.mbel.instructions.LDLOCA;
import edu.arizona.cs.mbel.instructions.LDNULL;
import edu.arizona.cs.mbel.instructions.LDSFLD;
import edu.arizona.cs.mbel.instructions.LDSTR;
import edu.arizona.cs.mbel.instructions.MUL;
import edu.arizona.cs.mbel.instructions.NEWARR;
import edu.arizona.cs.mbel.instructions.NEWOBJ;
import edu.arizona.cs.mbel.instructions.NOP;
import edu.arizona.cs.mbel.instructions.POP;
import edu.arizona.cs.mbel.instructions.REM;
import edu.arizona.cs.mbel.instructions.RET;
import edu.arizona.cs.mbel.instructions.STARG;
import edu.arizona.cs.mbel.instructions.STELEM;
import edu.arizona.cs.mbel.instructions.STFLD;
import edu.arizona.cs.mbel.instructions.STLOC;
import edu.arizona.cs.mbel.instructions.STSFLD;
import edu.arizona.cs.mbel.instructions.SUB;
import edu.arizona.cs.mbel.mbel.AbstractTypeReference;
import edu.arizona.cs.mbel.mbel.ClassParser;
import edu.arizona.cs.mbel.mbel.Field;
import edu.arizona.cs.mbel.mbel.FieldRef;
import edu.arizona.cs.mbel.mbel.Method;
import edu.arizona.cs.mbel.mbel.MethodBody;
import edu.arizona.cs.mbel.mbel.MethodDefOrRef;
import edu.arizona.cs.mbel.mbel.MethodRef;
import edu.arizona.cs.mbel.mbel.Module;
import edu.arizona.cs.mbel.mbel.NestedTypeRef;
import edu.arizona.cs.mbel.mbel.TypeDef;
import edu.arizona.cs.mbel.mbel.TypeRef;
import edu.arizona.cs.mbel.parse.MSILParseException;
import edu.arizona.cs.mbel.signature.ClassTypeSignature;
import edu.arizona.cs.mbel.signature.FieldAttributes;
import edu.arizona.cs.mbel.signature.LocalVar;
import edu.arizona.cs.mbel.signature.LocalVarList;
import edu.arizona.cs.mbel.signature.MethodAttributes;
import edu.arizona.cs.mbel.signature.MethodSignature;
import edu.arizona.cs.mbel.signature.ParameterSignature;
import edu.arizona.cs.mbel.signature.ReturnTypeSignature;
import edu.arizona.cs.mbel.signature.SZArrayTypeSignature;
import edu.arizona.cs.mbel.signature.SignatureConstants;
import edu.arizona.cs.mbel.signature.TypeAttributes;
import edu.arizona.cs.mbel.signature.TypeSignature;
import edu.arizona.cs.mbel.signature.ValueTypeSignature;

/**
 * This {@link InputProcess} parses EXE files that contain CIL (.NET) bytecode.
 */
public class ExeToXmlvmProcess extends XmlvmProcessImpl {

    public ExeToXmlvmProcess(Arguments arguments) {
        super(arguments);
        addSupportedInput(ExeInputProcess.class);
    }

    @Override
    public boolean processPhase1(BundlePhase1 bundle) {
        for (OutputFile file : bundle.getOutputFiles()) {
            XmlvmResource resource = (new ExeToXmlvmTask(file.getData())).parse();
            if (resource == null) {
                return false;
            }
            bundle.addResource(resource);
        }
        return true;
    }

    @Override
    public boolean processPhase2(BundlePhase2 bundle) {
        return true;
    }


    private static class ExeToXmlvmTask {

        private static final Namespace                nsXMLVM                 = Namespace
                                                                                      .getNamespace(
                                                                                              "vm",
                                                                                              "http://xmlvm.org");
        private static final Namespace                nsCLR                   = Namespace
                                                                                      .getNamespace(
                                                                                              "clr",
                                                                                              "http://xmlvm.org/clr");

        private Hashtable<InstructionHandle, Integer> map;
        private Hashtable<String, String>             nestedClassNamespaceMap = new Hashtable<String, String>();
        private String                                enumBaseType            = "";

        private UniversalFile                         exeFile;


        public ExeToXmlvmTask(UniversalFile exeFile) {
            this.exeFile = exeFile;
        }

        public XmlvmResource parse() {
            Log.debug("ExeInputProcess.process()");
            try {
                InputStream fin;
                fin = new ByteArrayInputStream(exeFile.getFileAsBytes());
                ClassParser parser = new ClassParser(fin);
                Module cilClass = parser.parseModule();
                Document xmlvmDoc = genXMLVM(cilClass);
                return new XmlvmResource(Type.CLI, xmlvmDoc);
            } catch (FileNotFoundException e) {
                Log.error("File not found: " + exeFile.getAbsolutePath());
            } catch (IOException e) {
                Log.error("Could not read: " + exeFile.getAbsolutePath());
            } catch (MSILParseException e) {
                Log.error("Not valid IL format: " + exeFile.getAbsolutePath());
            }
            return null;
        }

        public Document genXMLVM(Module module) {
            Element xml = new org.jdom.Element("xmlvm", nsXMLVM);
            xml.addNamespaceDeclaration(nsCLR);
            xml.addContent(new org.jdom.Comment("Generated: " + new Date()));
            TypeDef[] td = module.getTypeDefs();

            String namespace = "";
            String name;

            // For each class in the module, discover its true
            // namespace and store that information for later processing.
            for (int i = 0; i < td.length; i++) {
                long flags = td[i].getFlags();
                name = td[i].getName();

                // If the TypeDef is not the .module node for the .exe, so visit
                // it.
                if (flags != 0) {

                    // If the map contains this class name as a key, then
                    // this class is a nested class so we need to get its
                    // true namespace
                    if (this.nestedClassNamespaceMap.containsKey(name)) {
                        namespace = this.nestedClassNamespaceMap.get(name);
                    } else {
                        namespace = td[i].getNamespace();
                    }

                    String nestedNamespace = "";

                    if (namespace.equals("")) {
                        nestedNamespace = name;
                    } else {
                        nestedNamespace = namespace + "." + name;
                    }

                    TypeDef[] nestedClasses = td[i].getNestedClasses();

                    for (int j = 0; j < nestedClasses.length; j++) {
                        this.nestedClassNamespaceMap.put(nestedClasses[j].getName(),
                                nestedNamespace);
                    }
                }
            }

            // Process all the TypeDefs in the module to create
            // our XML document.
            for (int i = 0; i < td.length; i++) {
                long flags = td[i].getFlags();

                // If the TypeDef is not the .module node for the .exe, visit
                // it.
                if (flags != 0) {
                    xml.addContent(visitTypeDef(td[i]));
                }
            }
            org.jdom.Document doc = new Document(xml);
            return doc;
        }

        private Element visitTypeDef(TypeDef td) {
            Element xml = new Element("class", nsXMLVM);

            String name = td.getName();
            String namespace = td.getNamespace();
            TypeRef tr = td.getSuperClass();
            String base_class = "";

            if (tr.getNamespace() != "") {
                base_class = tr.getNamespace() + "." + tr.getName();
            } else {
                base_class = tr.getName();
            }

            boolean isEnum = base_class.equals("System.Enum");

            long flags = td.getFlags();

            // If the map contains this class name as a key, then
            // this class is a nested class so we need to get its
            // true namespace
            if (this.nestedClassNamespaceMap.containsKey(name)) {
                namespace = this.nestedClassNamespaceMap.get(name);
            }

            xml.setAttribute("name", name);

            if (((flags & TypeAttributes.Public) != 0)
                    || ((flags & TypeAttributes.NestedPublic) != 0)) {
                xml.setAttribute("isPublic", "true");
            }

            if (!namespace.equals(""))
                xml.setAttribute("package", namespace);
            xml.setAttribute("extends", base_class);

            // visit all fields
            Field[] f = td.getFields();
            for (int i = 0; i < f.length; i++) {
                xml.addContent(visitField(f[i], isEnum));
            }

            // visit all methods
            Method[] mt = td.getMethods();
            for (int i = 0; i < mt.length; i++)
                xml.addContent(visitMethod(mt[i]));
            return xml;
        }

        private Element visitField(Field f, boolean isEnum) {
            Element xml = new Element("field", nsXMLVM);
            addFieldModifiers(f, xml);
            xml.setAttribute("name", f.getName());
            TypeSignature ts = f.getSignature().getType();
            String type = addType(ts, xml);

            if (isEnum && f.getName().equals("value__")) {
                this.enumBaseType = type;
            }

            // get the default value for each of the Enum fields
            if (isEnum && !f.getName().equals("value__")) {
                if (this.enumBaseType.equals("int")) {
                    int value = byteArrayToInt(f.getDefaultValue());
                    xml.setAttribute("value", String.valueOf(value));
                } else if (this.enumBaseType.equals("byte")) {
                    byte value = f.getDefaultValue()[0];
                    xml.setAttribute("value", String.valueOf(value));
                } else if (this.enumBaseType.equals("short")) {
                    short value = (short) byteArrayToShort(f.getDefaultValue());
                    xml.setAttribute("value", String.valueOf(value));
                } else if (this.enumBaseType.equals("long")) {
                    long value = byteArrayToLong(f.getDefaultValue());
                    xml.setAttribute("value", String.valueOf(value));
                }
            }
            return xml;
        }

        private Element visitMethod(Method mt) {
            Element xml = new Element("method", nsXMLVM);
            String name = mt.getName();
            // TODO Shouldn't rename constructor
            if (name.equals(".ctor"))
                name = "<init>";
            xml.setAttribute("name", name);
            addMethodModifiers(mt, xml);
            addMethodSignature(mt.getSignature(), xml);
            MethodBody mb = mt.getMethodBody();
            if (mb != null) {
                xml.setAttribute("stack", "" + mb.getMaxStack());
                xml.setAttribute("locals", "" + computeLocals(mt));
                addMethodCode(mb, xml);
            }
            return xml;
        }

        private int computeLocals(Method mt) {
            /*
             * this method computes the number of locals we need. We use
             * "locals" here as defined in the JVM.
             */
            int locals = 0;

            // Add the number of local variables
            MethodBody mb = mt.getMethodBody();
            LocalVarList lv = mb.getLocalVarList();
            if (lv != null)
                locals += lv.getCount();

            // add the number of actual parameters for this method
            MethodSignature ms = mt.getSignature();
            locals += ms.getParameters().length;

            // add one more for the "this" pointer in case this is
            // not a static method
            if (ms.HasThis())
                locals++;

            return locals;
        }

        private void addMethodModifiers(Method mt, Element xml) {
            int attr = mt.getFlags();
            if ((attr & MethodAttributes.Static) != 0) {
                xml.setAttribute("isStatic", "true");
            }
            if ((attr & MethodAttributes.Public) != 0) {
                xml.setAttribute("isPublic", "true");
            }
            if ((attr & MethodAttributes.Private) != 0) {
                xml.setAttribute("isPrivate", "true");
            }
        }

        private void addFieldModifiers(Field f, Element xml) {
            int attr = f.getFlags();
            if ((attr & FieldAttributes.Static) != 0) {
                xml.setAttribute("isStatic", "true");
            }
            if ((attr & FieldAttributes.Public) != 0) {
                xml.setAttribute("isPublic", "true");
            }
            if ((attr & FieldAttributes.Private) != 0) {
                xml.setAttribute("isPrivate", "true");
            }
        }

        private void addMethodSignature(MethodSignature ms, Element xml) {
            Element xml_sig = new Element("signature", nsXMLVM);

            // add return type
            ReturnTypeSignature ret = ms.getReturnType();
            Element xml_ret = new Element("return", nsXMLVM);
            // addType(ret.getType(), xml_ret);
            addReturnType(ret, xml_ret);
            xml_sig.addContent(xml_ret);

            // add parameter types
            ParameterSignature[] ps = ms.getParameters();
            for (int i = 0; i < ps.length; i++) {
                Element xml_param = new Element("parameter", nsXMLVM);
                ParameterSignature p = ps[i];
                addType(p.getType(), xml_param);
                xml_sig.addContent(xml_param);
            }
            xml.addContent(xml_sig);
        }

        private String genClassTypeName(TypeRef tr) {
            String name = tr.getName();
            if (tr instanceof NestedTypeRef) {
                tr = ((NestedTypeRef) tr).getEnclosingTypeRef();
                name = tr.getName() + "$" + name;
            }
            String ns = tr.getNamespace();
            if (!ns.equals("")) {
                ns += ".";
            }

            // If this class is in our nested class list,
            // then we need to get its true namespace
            if (this.nestedClassNamespaceMap.containsKey(name)) {
                ns = this.nestedClassNamespaceMap.get(name) + ".";
            }

            return ns + name;
        }

        private String addType(TypeSignature ts, Element xml) {
            String type = null;
            byte t = ts.getType();
            if (t == TypeSignature.ELEMENT_TYPE_STRING)
                type = "System.String";
            if (t == TypeSignature.ELEMENT_TYPE_VOID)
                type = "void";
            if (t == TypeSignature.ELEMENT_TYPE_U1)
                type = "ubyte";
            if (t == TypeSignature.ELEMENT_TYPE_I1)
                type = "byte";
            if (t == TypeSignature.ELEMENT_TYPE_I2)
                type = "short";
            if (t == TypeSignature.ELEMENT_TYPE_I8)
                type = "long";
            if (t == TypeSignature.ELEMENT_TYPE_U4)
                type = "uint";
            if (t == TypeSignature.ELEMENT_TYPE_I4 || t == TypeSignature.ELEMENT_TYPE_I)
                type = "int";
            if (t == TypeSignature.ELEMENT_TYPE_R4)
                type = "float";
            if (t == TypeSignature.ELEMENT_TYPE_R8)
                type = "double";
            if (t == TypeSignature.ELEMENT_TYPE_CLASS) {
                TypeRef tr = (TypeRef) ((ClassTypeSignature) ts).getClassType();
                type = genClassTypeName(tr);
            }
            if (t == TypeSignature.ELEMENT_TYPE_SZARRAY) {
                TypeSignature elem = ((SZArrayTypeSignature) ts).getElementType();
                addType(elem, xml);
                type = xml.getAttributeValue("type");
                type += "[]";
            }
            if (t == TypeSignature.ELEMENT_TYPE_OBJECT)
                type = "System.Object";
            if (t == TypeSignature.ELEMENT_TYPE_VALUETYPE) {
                xml.setAttribute("isValueType", "true");
                ValueTypeSignature vt = (ValueTypeSignature) ts;
                TypeRef tr = (TypeRef) vt.getValueType();

                type = "";

                // If this class is in our nested class list,
                // then we need to get its true namespace
                if (this.nestedClassNamespaceMap.containsKey(tr.getName())) {
                    type = this.nestedClassNamespaceMap.get(tr.getName());
                } else {
                    type = tr.getNamespace();
                }

                if (!type.equals(""))
                    type += ".";
                type += tr.getName();
            }
            if (t == TypeSignature.ELEMENT_TYPE_BOOLEAN)
                type = "boolean";
            if (t == TypeSignature.ELEMENT_TYPE_CHAR)
                type = "char";
            if (type == null) {
                System.err.println("Unknown type: " + ts + "(" + t + ")");
                type = "UNKNOWN";
            }
            xml.setAttribute("type", type);
            return type;
        }

        private void addReturnType(ReturnTypeSignature ts, Element xml) {
            if (ts == null)
                // can be null for constructor
                return;
            if (ts.getElementType() == SignatureConstants.ELEMENT_TYPE_VOID) {
                xml.setAttribute("type", "void");
                return;
            }
            TypeSignature t = ts.getType();
            if (t != null)
                addType(t, xml);
        }

        private void addMethodCode(MethodBody mb, Element xml) {
            Element xml_code = new Element("code", nsCLR);
            xml.addContent(xml_code);

            // Add local variables
            if (mb.getLocalVarList() != null) {
                int index = 0;
                for (LocalVar lv : mb.getLocalVarList().getLocalVars()) {
                    Element xml_lv = new Element("var", nsCLR);
                    xml_lv.setAttribute("id", "" + index++);
                    addType(lv.getType(), xml_lv);

                    xml_code.addContent(xml_lv);
                }
            }

            InstructionHandle[] ihl = mb.getInstructionList().getInstructionHandles();
            buildBranchTable(ihl);
            // Instruction[] il = mb.getInstructionList().getInstructions();
            for (int i = 0; i < ihl.length; i++) {
                InstructionHandle ih = ihl[i];
                Integer label = (Integer) map.get(ih);
                if (label != null) {
                    Element xml_label = new Element("label", nsCLR);
                    xml_label.setAttribute("id", "" + label);
                    xml_code.addContent(xml_label);
                }
                addInstruction(ihl[i].getInstruction(), xml_code);
            }
        }

        private void buildBranchTable(InstructionHandle[] ihl) {
            int counter = 0;

            map = new Hashtable<InstructionHandle, Integer>();
            for (int i = 0; i < ihl.length; i++) {
                InstructionHandle ih = ihl[i];
                if (ih.getInstruction() instanceof BranchInstruction) {
                    BranchInstruction bi = (BranchInstruction) ih.getInstruction();
                    put(bi.getTargetHandle(), counter++);
                }
            }
        }

        private void put(InstructionHandle ih, int id) {
            if ((Integer) map.get(ih) == null)
                map.put(ih, new Integer(id));
        }

        /**
         * Convert the byte array to an int.
         * 
         * @param b
         *            The byte array
         * @return The integer
         */
        private static int byteArrayToInt(byte[] b) {
            int value = (((b[3] & 0xff) << 24) | ((b[2] & 0xff) << 16) | ((b[1] & 0xff) << 8) | (b[0] & 0xff));
            return value;
        }

        /**
         * Convert the byte array to an short
         * 
         * @param b
         *            The byte array
         * @return The short
         */
        private static short byteArrayToShort(byte[] b) {
            short value = (short) (((b[1] & 0xff) << 8) | (b[0] & 0xff));
            return value;
        }

        /**
         * Convert the byte array to an long.
         * 
         * @param b
         *            The byte array
         * @return The long
         */
        private static long byteArrayToLong(byte[] byteArray) {
            long value = 0;

            for (int i = 0; i < byteArray.length; i++) {
                value |= (((long) byteArray[i]) & 0xff) << (i * 8);
            }

            return value;
        }

        private void addInstruction(Instruction inst, Element xml) {
            Element xml_inst = null;
            if (inst instanceof BOX)
                xml_inst = visitInstructionBOX((BOX) inst);
            if (inst instanceof CASTCLASS)
                xml_inst = visitInstructionCASTCLASS((CASTCLASS) inst);
            if (inst instanceof LDARG)
                xml_inst = visitInstructionLDARG((LDARG) inst);
            if (inst instanceof STARG)
                xml_inst = visitInstructionSTARG((STARG) inst);
            if (inst instanceof RET)
                xml_inst = visitInstructionRET((RET) inst);
            if (inst instanceof LDSTR)
                xml_inst = visitInstructionLDSTR((LDSTR) inst);
            if (inst instanceof CALL)
                xml_inst = visitInstructionCALL((CALL) inst);
            if (inst instanceof CALLVIRT)
                xml_inst = visitInstructionCALLVIRT((CALLVIRT) inst);
            if (inst instanceof NEWOBJ)
                xml_inst = visitInstructionNEWOBJ((NEWOBJ) inst);
            if (inst instanceof DUP)
                xml_inst = visitInstructionDUP((DUP) inst);
            if (inst instanceof ADD)
                xml_inst = visitInstructionADD((ADD) inst);
            if (inst instanceof ADD_OVF)
                xml_inst = visitInstructionADD_OVF((ADD_OVF) inst);
            if (inst instanceof SUB)
                xml_inst = visitInstructionSUB((SUB) inst);
            if (inst instanceof MUL)
                xml_inst = visitInstructionMUL((MUL) inst);
            if (inst instanceof DIV)
                xml_inst = visitInstructionDIV((DIV) inst);
            if (inst instanceof REM)
                xml_inst = visitInstructionREM((REM) inst);
            if (inst instanceof CEQ)
                xml_inst = visitInstructionCEQ((CEQ) inst);
            if (inst instanceof CGT)
                xml_inst = visitInstructionCGT((CGT) inst);
            if (inst instanceof CLT)
                xml_inst = visitInstructionCLT((CLT) inst);
            if (inst instanceof LDC)
                xml_inst = visitInstructionLDC((LDC) inst);
            if (inst instanceof STLOC)
                xml_inst = visitInstructionSTLOC((STLOC) inst);
            if (inst instanceof LDLOC)
                xml_inst = visitInstructionLDLOC((LDLOC) inst);
            if (inst instanceof LDLOCA)
                xml_inst = visitInstructionLDLOCA((LDLOCA) inst);
            if (inst instanceof LDFTN)
                xml_inst = visitInstructionLDFTN((LDFTN) inst);
            if (inst instanceof POP)
                xml_inst = visitInstructionPOP((POP) inst);
            if (inst instanceof LDNULL)
                xml_inst = visitInstructionLDNULL((LDNULL) inst);
            if (inst instanceof CONV)
                xml_inst = visitInstructionCONV((CONV) inst);
            if (inst instanceof NOP)
                xml_inst = visitInstructionNOP((NOP) inst);
            if (inst instanceof BGE)
                xml_inst = visitBranchInstruction((BranchInstruction) inst, "bge");
            if (inst instanceof BLE)
                xml_inst = visitBranchInstruction((BranchInstruction) inst, "ble");
            if (inst instanceof BLT)
                xml_inst = visitBranchInstruction((BranchInstruction) inst, "blt");
            if (inst instanceof BR)
                xml_inst = visitBranchInstruction((BranchInstruction) inst, "br");
            if (inst instanceof BGT)
                xml_inst = visitBranchInstruction((BranchInstruction) inst, "bgt");
            if (inst instanceof BRFALSE)
                xml_inst = visitBranchInstruction((BranchInstruction) inst, "brfalse");
            if (inst instanceof BRTRUE)
                xml_inst = visitBranchInstruction((BranchInstruction) inst, "brtrue");
            if (inst instanceof BNE_UN)
                xml_inst = visitBranchInstruction((BranchInstruction) inst, "bne_un");
            if (inst instanceof LDFLD)
                xml_inst = visitAccessFieldInstruction(((LDFLD) inst).getField(), "ldfld");
            if (inst instanceof STFLD)
                xml_inst = visitAccessFieldInstruction(((STFLD) inst).getField(), "stfld");
            if (inst instanceof STSFLD)
                xml_inst = visitAccessFieldInstruction(((STSFLD) inst).getField(), "stsfld");
            if (inst instanceof NEWARR)
                xml_inst = visitInstructionNewarr((NEWARR) inst);

            if (inst instanceof STELEM)
                xml_inst = visitInstructionStElm((STELEM) inst);
            if (inst instanceof LDELEM)
                xml_inst = visitInstructionLdElm((LDELEM) inst);

            if (xml_inst == null) {

                String toGet = "visitInstruction" + inst.getName().toUpperCase();
                @SuppressWarnings("rawtypes")
                java.lang.reflect.Method foundMethod = null;
                try {
                    foundMethod = this.getClass().getDeclaredMethod(toGet,
                            new Class[] { inst.getClass() });
                } catch (Exception e) {

                }

                if (foundMethod != null) {
                    try {
                        xml_inst = (Element) foundMethod.invoke(this, inst);
                    } catch (Exception b) {
                    }
                }

                if (xml_inst == null) {
                    System.out
                            .println("Error: Cannot create instruction; Couldn't find processing method");
                    System.out.println("Looking for " + toGet + "(" + inst.getClass().getName()
                            + ")");

                }

            }
            if (xml_inst == null) {
                xml_inst = new Element("UNKNOWN");
                xml_inst.setAttribute("instruction", inst.toString());
                xml_inst.setAttribute("typename", inst.getClass().getName());
            }

            xml.addContent(xml_inst);
        }

        @SuppressWarnings("unused")
        // Called using reflection.
        private Element visitInstructionLDLEN(LDLEN inst) {
            Element xml = new Element(inst.getName(), nsCLR);
            return xml;
        }

        @SuppressWarnings("unused")
        // Called using reflection.
        private Element visitInstructionLDSFLD(LDSFLD inst) {
            FieldRef ref = inst.getField();
            String opc = inst.getName();

            return visitAccessFieldInstruction(ref, opc);

        }

        private Element visitAccessFieldInstruction(FieldRef ref, String opc) {
            Element xml = new Element(opc, nsCLR);
            AbstractTypeReference pt = ref.getParent();
            TypeRef tr = (TypeRef) pt;
            String name = tr.getNamespace();

            // If this class is in our nested class list,
            // then we need to get its true namespace
            if (this.nestedClassNamespaceMap.containsKey(tr.getName())) {
                name = this.nestedClassNamespaceMap.get(tr.getName());
            } else {
                name = tr.getNamespace();
            }

            if (!name.equals(""))
                name += ".";
            name += tr.getName();
            xml.setAttribute("class-type", name);
            TypeSignature ts = ref.getSignature().getType();
            addType(ts, xml);
            xml.setAttribute("field", ref.getName());
            return xml;
        }

        private Element visitInstructionBOX(BOX inst) {
            Element xml = new Element("box", nsCLR);
            AbstractTypeReference pt = inst.getValueType();
            TypeRef tr = (TypeRef) pt;
            String name = tr.getNamespace();

            // If this class is in our nested class list,
            // then we need to get its true namespace
            if (this.nestedClassNamespaceMap.containsKey(tr.getName())) {
                name = this.nestedClassNamespaceMap.get(tr.getName());
            } else {
                name = tr.getNamespace();
            }

            if (!name.equals(""))
                name += ".";
            name += tr.getName();
            xml.setAttribute("type", name);
            return xml;
        }

        private Element visitInstructionStElm(STELEM inst) {
            // Don't care about subtype at the moment
            Element xml = new Element("stelem", nsCLR);
            return xml;
        }

        private Element visitInstructionLdElm(LDELEM inst) {
            // Don't care about subtype at the moment
            Element xml = new Element("ldelem", nsCLR);
            return xml;
        }

        private Element visitInstructionNewarr(NEWARR inst) {
            Element xml = new Element("newarr", nsCLR);
            // xml.setAttribute("name", inst.getName());
            // xml.setAttribute("length", inst.getLength() + "");
            AbstractTypeReference tr = inst.getType();
            xml.setAttribute("type", genClassTypeName((TypeRef) tr) + "[]");
            xml.setAttribute("elementType", genClassTypeName((TypeRef) tr));
            return xml;

        }

        private Element visitInstructionCASTCLASS(CASTCLASS inst) {
            Element xml = new Element("castclass", nsCLR);
            AbstractTypeReference tr = inst.getType();
            xml.setAttribute("type", genClassTypeName((TypeRef) tr));
            return xml;
        }

        private Element visitBranchInstruction(BranchInstruction inst, String cmd) {
            Element xml = new Element(cmd, nsCLR);
            InstructionHandle target = inst.getTargetHandle();
            Integer label = (Integer) map.get(target);
            xml.setAttribute("label", "" + label);
            return xml;
        }

        private Element visitInstructionLDC(LDC inst) {
            String type = null;
            switch (inst.getOpcode()) {
            case LDC.LDC_I4:
            case LDC.LDC_I4_S:
            case LDC.LDC_I4_0:
            case LDC.LDC_I4_1:
            case LDC.LDC_I4_2:
            case LDC.LDC_I4_3:
            case LDC.LDC_I4_4:
            case LDC.LDC_I4_5:
            case LDC.LDC_I4_6:
            case LDC.LDC_I4_7:
            case LDC.LDC_I4_8:
                type = "int";
                break;
            case LDC.LDC_R4:
                type = "float";
                break;
            case LDC.LDC_R8:
                type = "double";
                break;
            case LDC.LDC_I8:
                type = "long";
                break;
            case LDC.LDC_I4_M1:
                type = "uint";
                break;
            }
            if (type == null) {
                System.err.println("Unknown LDC opcode: " + inst.getOpcode());
            }
            Element xml = new Element("ldc", nsCLR);
            xml.setAttribute("type", type);
            xml.setAttribute("value", "" + inst.getConstantValue());
            return xml;
        }

        private Element visitInstructionSTLOC(STLOC inst) {
            Element xml = new Element("stloc", nsCLR);
            xml.setAttribute("index", "" + inst.getIndexValue());
            return xml;
        }

        private Element visitInstructionLDLOC(LDLOC inst) {
            Element xml = new Element("ldloc", nsCLR);
            xml.setAttribute("index", "" + inst.getIndexValue());
            return xml;
        }

        private Element visitInstructionLDLOCA(LDLOCA inst) {
            Element xml = new Element("ldloca", nsCLR);
            xml.setAttribute("index", "" + inst.getIndexValue());
            return xml;
        }

        private Element visitInstructionLDFTN(LDFTN inst) {
            Element xml = new Element("ldftn", nsCLR);
            MethodDefOrRef m = inst.getMethod();
            AbstractTypeReference pt = m.getParent();
            TypeRef tr = (TypeRef) pt;
            String name = tr.getNamespace();

            // If this class is in our nested class list,
            // then we need to get its true namespace
            if (this.nestedClassNamespaceMap.containsKey(tr.getName())) {
                name = this.nestedClassNamespaceMap.get(tr.getName());
            } else {
                name = tr.getNamespace();
            }

            if (!name.equals(""))
                name += ".";
            name += tr.getName();
            xml.setAttribute("class-type", name);
            xml.setAttribute("method", m.getName());
            MethodSignature ms = null;
            if (m instanceof MethodRef)
                ms = ((MethodRef) m).getCallsiteSignature();
            if (m instanceof Method)
                ms = ((Method) m).getSignature();
            addMethodSignature(ms, xml);
            return xml;
        }

        private Element visitInstructionPOP(POP inst) {
            Element xml = new Element("pop", nsCLR);
            return xml;
        }

        private Element visitInstructionDUP(DUP inst) {
            Element xml = new Element("dup", nsCLR);
            return xml;
        }

        private Element visitInstructionADD(ADD inst) {
            Element xml = new Element("add", nsCLR);
            return xml;
        }

        private Element visitInstructionADD_OVF(ADD_OVF inst) {
            Element xml = new Element("add_ovf", nsCLR);
            return xml;
        }

        private Element visitInstructionSUB(SUB inst) {
            Element xml = new Element("sub", nsCLR);
            return xml;
        }

        private Element visitInstructionMUL(MUL inst) {
            Element xml = new Element("mul", nsCLR);
            return xml;
        }

        private Element visitInstructionDIV(DIV inst) {
            Element xml = new Element("div", nsCLR);
            return xml;
        }

        private Element visitInstructionREM(REM inst) {
            Element xml = new Element("rem", nsCLR);
            return xml;
        }

        private Element visitInstructionCEQ(CEQ inst) {
            Element xml = new Element("ceq", nsCLR);
            return xml;
        }

        private Element visitInstructionCGT(CGT inst) {
            Element xml = new Element("cgt", nsCLR);
            return xml;
        }

        private Element visitInstructionCLT(CLT inst) {
            Element xml = new Element("clt", nsCLR);
            return xml;
        }

        private Element visitInstructionNEWOBJ(NEWOBJ inst) {
            Element xml = new Element("newobj", nsCLR);
            MethodDefOrRef m = inst.getMethod();
            AbstractTypeReference pt = m.getParent();
            TypeRef tr = (TypeRef) pt;
            String name = tr.getNamespace();

            // If this class is in our nested class list,
            // then we need to get its true namespace
            if (this.nestedClassNamespaceMap.containsKey(tr.getName())) {
                name = this.nestedClassNamespaceMap.get(tr.getName());
            } else {
                name = tr.getNamespace();
            }

            if (!name.equals(""))
                name += ".";
            name += tr.getName();
            xml.setAttribute("type", name);
            MethodSignature ms = null;
            if (m instanceof MethodRef)
                ms = ((MethodRef) m).getCallsiteSignature();
            if (m instanceof Method)
                ms = ((Method) m).getSignature();
            addMethodSignature(ms, xml);
            return xml;
        }

        private Element visitInstructionLDARG(LDARG inst) {
            Element xml = new Element("ldarg", nsCLR);
            xml.setAttribute("index", "" + inst.getArgumentNumber());
            return xml;
        }

        private Element visitInstructionSTARG(STARG inst) {
            Element xml = new Element("starg", nsCLR);
            xml.setAttribute("index", "" + inst.getArgumentNumber());
            return xml;
        }

        private Element visitInstructionCALL(CALL inst) {
            MethodDefOrRef m = inst.getMethod();
            MethodSignature ms = null;
            if (m instanceof MethodRef) {
                ms = ((MethodRef) m).getCallsiteSignature();
            }
            if (m instanceof Method) {
                ms = ((Method) m).getSignature();
            }
            Element xml = new Element("call", nsCLR);
            xml.setAttribute("has-this", "" + ms.HasThis());
            AbstractTypeReference pt = m.getParent();
            TypeRef tr = (TypeRef) pt;
            String name = genClassTypeName(tr);
            xml.setAttribute("class-type", name);
            name = m.getName();
            // TODO Shouldn't rename constructor
            if (name.equals(".ctor"))
                name = "<init>";
            xml.setAttribute("method", name);
            addMethodSignature(ms, xml);
            return xml;
        }

        private Element visitInstructionCALLVIRT(CALLVIRT inst) {
            MethodDefOrRef m = inst.getMethod();
            MethodSignature ms = null;
            if (m instanceof MethodRef)
                ms = ((MethodRef) m).getCallsiteSignature();
            if (m instanceof Method)
                ms = ((Method) m).getSignature();
            Element xml = new Element("callvirt", nsCLR);
            xml.setAttribute("has-this", "" + ms.HasThis());
            AbstractTypeReference pt = m.getParent();
            TypeRef tr = (TypeRef) pt;
            String name = genClassTypeName(tr);
            xml.setAttribute("class-type", name);
            name = m.getName();
            // TODO Shouldn't rename constructor
            if (name.equals(".ctor"))
                name = "<init>";
            xml.setAttribute("method", name);
            addMethodSignature(ms, xml);
            return xml;
        }

        private Element visitInstructionRET(RET inst) {
            return new Element("return", nsCLR);
        }

        private Element visitInstructionLDSTR(LDSTR inst) {
            Element xml = new Element("ldc", nsCLR);
            xml.setAttribute("type", "System.String");
            xml.setAttribute("value", inst.getString());
            return xml;
        }

        private Element visitInstructionLDNULL(LDNULL inst) {
            Element xml = new Element("ldnull", nsCLR);
            return xml;
        }

        private Element visitInstructionNOP(NOP inst) {
            Element xml = new Element("nop", nsCLR);
            return xml;
        }

        private Element visitInstructionCONV(CONV inst) {
            Element xml = null;
            int optcode = inst.getOpcode();

            switch (optcode) {
            case CONV.CONV_I8:
                xml = new Element("conv.i8", nsCLR);
                break;
            case CONV.CONV_I4:
                xml = new Element("conv.i4", nsCLR);
                break;
            case CONV.CONV_I2:
                xml = new Element("conv.i2", nsCLR);
                break;
            case CONV.CONV_I1:
                xml = new Element("conv.i1", nsCLR);
                break;
            case CONV.CONV_R4:
                xml = new Element("conv.r4", nsCLR);
                break;
            case CONV.CONV_R8:
                xml = new Element("conv.r8", nsCLR);
                break;
            case CONV.CONV_U8:
                xml = new Element("conv.u8", nsCLR);
                break;
            case CONV.CONV_U4:
                xml = new Element("conv.u4", nsCLR);
                break;
            case CONV.CONV_U2:
                xml = new Element("conv.u2", nsCLR);
                break;
            case CONV.CONV_U1:
                xml = new Element("conv.u1", nsCLR);
                break;
            case CONV.CONV_U:
                xml = new Element("conv.u", nsCLR);
                break;
            case CONV.CONV_I:
                xml = new Element("conv.i", nsCLR);
                break;
            case CONV.CONV_R_UN:
                xml = new Element("conv.r.un", nsCLR);
                break;
            }

            return xml;
        }
    }
}
