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

import java.io.IOException;
import java.io.StringWriter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

import javax.management.RuntimeErrorException;

import org.jdom.DataConversionException;
import org.jdom.Document;
import org.jdom.Element;
import org.jdom.Namespace;
import org.jdom.output.Format;
import org.jdom.output.XMLOutputter;
import org.xmlvm.Log;
import org.xmlvm.main.Arguments;
import org.xmlvm.proc.XmlvmProcess;
import org.xmlvm.proc.XmlvmProcessImpl;
import org.xmlvm.proc.XmlvmResource;
import org.xmlvm.proc.XmlvmResourceProvider;
import org.xmlvm.proc.XmlvmResource.Type;
import org.xmlvm.proc.in.InputProcess.ClassInputProcess;
import org.xmlvm.refcount.ReferenceCounting;
import org.xmlvm.refcount.InstructionProcessor;
import org.xmlvm.refcount.ReferenceCountingException;

import com.android.dx.cf.code.ConcreteMethod;
import com.android.dx.cf.code.Ropper;
import com.android.dx.cf.direct.DirectClassFile;
import com.android.dx.cf.direct.StdAttributeFactory;
import com.android.dx.cf.iface.Field;
import com.android.dx.cf.iface.FieldList;
import com.android.dx.cf.iface.Method;
import com.android.dx.cf.iface.MethodList;
import com.android.dx.dex.cf.CfTranslator;
import com.android.dx.dex.code.ArrayData;
import com.android.dx.dex.code.CatchHandlerList;
import com.android.dx.dex.code.CatchTable;
import com.android.dx.dex.code.CodeAddress;
import com.android.dx.dex.code.CstInsn;
import com.android.dx.dex.code.DalvCode;
import com.android.dx.dex.code.DalvInsn;
import com.android.dx.dex.code.DalvInsnList;
import com.android.dx.dex.code.Dop;
import com.android.dx.dex.code.Dops;
import com.android.dx.dex.code.HighRegisterPrefix;
import com.android.dx.dex.code.LocalSnapshot;
import com.android.dx.dex.code.LocalStart;
import com.android.dx.dex.code.OddSpacer;
import com.android.dx.dex.code.PositionList;
import com.android.dx.dex.code.RopTranslator;
import com.android.dx.dex.code.SimpleInsn;
import com.android.dx.dex.code.SwitchData;
import com.android.dx.dex.code.TargetInsn;
import com.android.dx.dex.code.CatchTable.Entry;
import com.android.dx.rop.code.AccessFlags;
import com.android.dx.rop.code.DexTranslationAdvice;
import com.android.dx.rop.code.LocalVariableExtractor;
import com.android.dx.rop.code.LocalVariableInfo;
import com.android.dx.rop.code.RegisterSpec;
import com.android.dx.rop.code.RegisterSpecList;
import com.android.dx.rop.code.RopMethod;
import com.android.dx.rop.code.SourcePosition;
import com.android.dx.rop.code.TranslationAdvice;
import com.android.dx.rop.cst.Constant;
import com.android.dx.rop.cst.CstMemberRef;
import com.android.dx.rop.cst.CstMethodRef;
import com.android.dx.rop.cst.CstNat;
import com.android.dx.rop.cst.CstString;
import com.android.dx.rop.cst.CstType;
import com.android.dx.rop.cst.CstUtf8;
import com.android.dx.rop.cst.TypedConstant;
import com.android.dx.rop.type.Prototype;
import com.android.dx.rop.type.StdTypeList;
import com.android.dx.rop.type.TypeList;
import com.android.dx.ssa.Optimizer;
import com.android.dx.util.ExceptionWithContext;
import com.android.dx.util.IntList;

/**
 * This OutputProcess emits XMLVM code containing register-based DEX
 * instructions (XMLVM-DEX).
 * <p>
 * Android's own DX compiler tool is used to parse class files and to create the
 * register-based DEX code in-memory which is then converted to XML.
 */
public class DEXmlvmOutputProcess extends XmlvmProcessImpl<XmlvmProcess<?>> implements
        XmlvmResourceProvider {
    /**
     * A little helper class that contains package- and class name.
     */
    private static class PackagePlusClassName {
        public String packageName = "";
        public String className   = "";

        public PackagePlusClassName(String className) {
            this.className = className;
        }

        public PackagePlusClassName(String packageName, String className) {
            this.packageName = packageName;
            this.className = className;
        }

        @Override
        public String toString() {
            if (packageName.isEmpty()) {
                return className;
            } else {
                return packageName + "." + className;
            }
        }
    }

    /**
     * Little helper class for keeping a target address and the info about
     * whether this target should split a try-catch block.
     */
    private static class Target {
        int     address;
        boolean requiresSplit;

        public Target(int address, boolean requiresSplit) {
            this.address = address;
            this.requiresSplit = requiresSplit;
        }

        @Override
        public boolean equals(Object obj) {
            if (obj instanceof Target) {
                Target otherTarget = (Target) obj;
                return this.address == otherTarget.address;
            } else {
                return false;
            }
        }

        @Override
        public int hashCode() {
            return address;
        }
    }

    private static final boolean   LOTS_OF_DEBUG      = false;
    private static final boolean   REF_LOGGING        = false;

    private static final String    DEXMLVM_ENDING     = ".dexmlvm";
    private static final Namespace NS_XMLVM           = XmlvmResource.xmlvmNamespace;
    private static final Namespace NS_DEX             = Namespace.getNamespace("dex",
                                                              "http://xmlvm.org/dex");

    private List<OutputFile>       outputFiles        = new ArrayList<OutputFile>();
    private List<XmlvmResource>    generatedResources = new ArrayList<XmlvmResource>();

    private static Element         lastDexInstruction = null;

    public DEXmlvmOutputProcess(Arguments arguments) {
        super(arguments);

        // We can either read class files directly or use the
        // JavaByteCodeOutputProcess to use generated bytecode as the input.
        addSupportedInput(ClassInputProcess.class);
        addSupportedInput(JavaByteCodeOutputProcess.class);
    }

    @Override
    public List<OutputFile> getOutputFiles() {
        return outputFiles;
    }

    @Override
    public boolean process() {
        generatedResources.clear();
        List<XmlvmProcess<?>> preprocesses = preprocess();
        for (XmlvmProcess<?> process : preprocesses) {
            for (OutputFile preOutputFile : process.getOutputFiles()) {
                OutputFile outputFile = generateDEXmlvmFile(preOutputFile);
                if (outputFile == null) {
                    return false;
                }
                outputFiles.add(outputFile);
            }
        }
        return true;
    }

    @Override
    public List<XmlvmResource> getXmlvmResources() {
        return generatedResources;
    }

    @SuppressWarnings("unchecked")
    private OutputFile generateDEXmlvmFile(OutputFile classFile) {
        Log.debug("DExing:" + classFile.getFileName());

        DirectClassFile directClassFile = new DirectClassFile(classFile.getDataAsBytes(), classFile
                .getFileName(), false);

        Document document = createDocument();

        // This is for auxiliary analysis. We record all the types that are
        // referenced.
        Set<String> referencedTypes = new HashSet<String>();
        String className = process(directClassFile, document.getRootElement(), referencedTypes)
                .replace('.', '_');

        // We now need to mark up the code with retains/releases.
        ReferenceCounting refC = new ReferenceCounting();

        String jClassName = document.getRootElement().getChild("class", InstructionProcessor.vm)
                .getAttributeValue("name");
        if (REF_LOGGING) {
            Log.debug("ref", "Processing class: " + jClassName);
        }

        List<Element> methods = (List<Element>) document.getRootElement().getChild("class",
                InstructionProcessor.vm).getChildren("method", InstructionProcessor.vm);
        for (Element e : methods) {
            if (REF_LOGGING) {
                Log.debug("ref", "Processing method: " + e.getAttributeValue("name"));
            }

            try {
                refC.process(e);
            } catch (ReferenceCountingException ex) {
                Log.error("ref", "Processing method: " + e.getAttributeValue("name"));
                Log.error("ref", "Failed while processing: " + ex.getMessage() + " in "
                        + jClassName);
                return null;
            } catch (DataConversionException ex) {
                Log.error("ref", "Processing method: " + e.getAttributeValue("name"));
                Log.error("ref", "Failed while processing: " + ex.getMessage() + " in "
                        + jClassName);
                return null;
            }
            if (REF_LOGGING) {
                Log.debug("ref", "Done with " + e.getAttributeValue("name"));
            }
        }
        if (REF_LOGGING) {
            Log.debug("ref", "Done processing methods!");
        }

        generatedResources.add(new XmlvmResource(className, Type.DEX, document, referencedTypes));

        String fileName = className + DEXMLVM_ENDING;
        OutputFile result = new OutputFile();
        result.setLocation(arguments.option_out());
        result.setFileName(fileName);
        result.setData(documentToString(document));

        return result;
    }

    /**
     * Converts a class name in the form of a/b/C into a
     * {@link PackagePlusClassName} object.
     * 
     */
    private static PackagePlusClassName parseClassName(String packagePlusClassName) {
        int lastSlash = packagePlusClassName.lastIndexOf('/');
        if (lastSlash == -1) {
            return new PackagePlusClassName(packagePlusClassName);
        }

        String className = packagePlusClassName.substring(lastSlash + 1);
        String packageName = packagePlusClassName.substring(0, lastSlash).replace('/', '.');

        return new PackagePlusClassName(packageName, className);
    }

    /**
     * Creates a basic XMLVM document.
     */
    private static Document createDocument() {
        Element root = new Element("xmlvm", NS_XMLVM);
        root.addNamespaceDeclaration(NS_DEX);
        Document document = new Document();
        document.addContent(root);
        return document;
    }

    /**
     * Process the given Java Class file and add the classes to the given root.
     * 
     * @param cf
     *            the class file to process
     * @param root
     *            the root element to append the classes to
     * @param referencedTypes
     *            will be filled with the types references in this class file
     * @return the class name for the DEXMLVM file
     */
    private String process(DirectClassFile cf, Element root, Set<String> referencedTypes) {
        cf.setAttributeFactory(StdAttributeFactory.THE_ONE);
        cf.getMagic();
        Element classElement = processClass(cf, root, referencedTypes);
        processFields(cf.getFields(), classElement, referencedTypes);

        MethodList methods = cf.getMethods();
        int sz = methods.size();

        for (int i = 0; i < sz; i++) {
            Method one = methods.get(i);
            try {
                processMethod(one, cf, classElement, referencedTypes);
            } catch (RuntimeException ex) {
                String msg = "...while processing " + one.getName().toHuman() + " "
                        + one.getDescriptor().toHuman();
                throw ExceptionWithContext.withContext(ex, msg);
            }
        }
        CstType thisClass = cf.getThisClass();
        return thisClass.getClassType().toHuman();
    }

    /**
     * Creates an XMLVM element for the given type and appends it to the given
     * root element.
     * 
     * @param cf
     *            the {@link DirectClassFile} instance of this class
     * @param root
     *            the root element to append the generated element to
     * @param referencedTypes
     *            will be filled with the types references in this class file
     * @return the generated element
     */
    private static Element processClass(DirectClassFile cf, Element root,
            Set<String> referencedTypes) {
        Element classElement = new Element("class", NS_XMLVM);
        CstType type = cf.getThisClass();
        PackagePlusClassName parsedClassName = parseClassName(type.getClassType().getClassName());
        classElement.setAttribute("name", parsedClassName.className);
        classElement.setAttribute("package", parsedClassName.packageName);
        String superClassName = parseClassName(cf.getSuperclass().getClassType().getClassName())
                .toString();
        classElement.setAttribute("extends", superClassName);
        referencedTypes.add(superClassName);

        processAccessFlags(cf.getAccessFlags(), classElement);

        TypeList interfaces = cf.getInterfaces();
        if (interfaces.size() > 0) {
            String interfaceList = "";
            for (int i = 0; i < interfaces.size(); ++i) {
                if (i > 0) {
                    interfaceList += ",";
                }
                String interfaceName = parseClassName(interfaces.getType(i).getClassName())
                        .toString();
                interfaceList += interfaceName;
                referencedTypes.add(interfaceName);
            }
            classElement.setAttribute("interfaces", interfaceList);
        }

        root.addContent(classElement);
        return classElement;
    }

    /**
     * Processes the fields and adds corresponding elements to the class
     * element.
     */
    private static void processFields(FieldList fieldList, Element classElement,
            Set<String> referencedTypes) {
        for (int i = 0; i < fieldList.size(); ++i) {
            Field field = fieldList.get(i);
            Element fieldElement = new Element("field", NS_XMLVM);
            fieldElement.setAttribute("name", field.getName().toHuman());
            String fieldType = field.getNat().getFieldType().toHuman();
            fieldElement.setAttribute("type", fieldType);
            referencedTypes.add(fieldType);
            TypedConstant value = field.getConstantValue();
            if (value != null) {
                fieldElement.setAttribute("value", value.toHuman());
            }
            processAccessFlags(field.getAccessFlags(), fieldElement);
            classElement.addContent(fieldElement);
        }
    }

    /**
     * Debugging use: Builds a catch-table in XML.
     */
    private static void processCatchTable(CatchTable catchTable, Element codeElement,
            Set<String> referencedTypes) {
        if (catchTable.size() == 0) {
            return;
        }

        Element catchTableElement = new Element("catches", NS_DEX);

        for (int i = 0; i < catchTable.size(); ++i) {
            Entry entry = catchTable.get(i);
            Element entryElement = new Element("entry", NS_DEX);
            entryElement.setAttribute("start", String.valueOf(entry.getStart()));
            entryElement.setAttribute("end", String.valueOf(entry.getEnd()));

            CatchHandlerList catchHandlers = entry.getHandlers();
            for (int j = 0; j < catchHandlers.size(); ++j) {
                com.android.dx.dex.code.CatchHandlerList.Entry handlerEntry = catchHandlers.get(j);
                Element handlerElement = new Element("handler", NS_DEX);
                String exceptionType = handlerEntry.getExceptionType().toHuman();
                handlerElement.setAttribute("type", exceptionType);
                referencedTypes.add(exceptionType);
                handlerElement.setAttribute("target", String.valueOf(handlerEntry.getHandler()));
                entryElement.addContent(handlerElement);
            }
            catchTableElement.addContent(entryElement);
        }

        codeElement.addContent(catchTableElement);
    }

    /**
     * Creates an XMLVM element for the given method and appends it to the given
     * class element.
     * <p>
     * This method is roughly based on
     * {@link CfTranslator#translate(String, byte[], com.android.dx.dex.cf.CfOptions)}
     * 
     * @param method
     *            the method to create the element for
     * @param classElement
     *            the class element to append the generated element to
     * @param cf
     *            the class file where this method was originally defined in
     * @param referencedTypes
     *            will be filled with the types references in this class file
     */
    private static void processMethod(Method method, DirectClassFile cf, Element classElement,
            Set<String> referencedTypes) {
        final boolean localInfo = true;
        final int positionInfo = PositionList.LINES;

        CstMethodRef meth = new CstMethodRef(method.getDefiningClass(), method.getNat());

        // Extract flags for this method.
        int accessFlags = method.getAccessFlags();
        boolean isNative = AccessFlags.isNative(accessFlags);
        boolean isStatic = AccessFlags.isStatic(accessFlags);
        boolean isAbstract = AccessFlags.isAbstract(accessFlags);

        // Create XMLVM element for this method
        Element methodElement = new Element("method", NS_XMLVM);
        methodElement.setAttribute("name", method.getName().getString());
        classElement.addContent(methodElement);

        // Set the access flag attrobutes for this method.
        processAccessFlags(accessFlags, methodElement);

        // Create signature element.
        methodElement.addContent(processSignature(meth, referencedTypes));

        // Create code element.
        Element codeElement = new Element("code", NS_DEX);
        methodElement.addContent(codeElement);

        if (isNative || isAbstract) {
            // There's no code for native or abstract methods.
        } else {
            ConcreteMethod concrete = new ConcreteMethod(method, cf,
                    (positionInfo != PositionList.NONE), localInfo);

            TranslationAdvice advice = DexTranslationAdvice.THE_ONE;

            RopMethod rmeth = Ropper.convert(concrete, advice);
            int paramSize = meth.getParameterWordCount(isStatic);

            String canonicalName = method.getDefiningClass().getClassType().getDescriptor() + "."
                    + method.getName().getString();
            if (LOTS_OF_DEBUG) {
                System.out.println("\n\nMethod: " + canonicalName);
            }

            // Optimize
            rmeth = Optimizer.optimize(rmeth, paramSize, isStatic, localInfo, advice);

            LocalVariableInfo locals = null;

            if (localInfo) {
                locals = LocalVariableExtractor.extract(rmeth);
            }

            DalvCode code = RopTranslator.translate(rmeth, positionInfo, locals, paramSize);
            DalvCode.AssignIndicesCallback callback = new DalvCode.AssignIndicesCallback() {
                public int getIndex(Constant cst) {
                    // Everything is at index 0!
                    return 0;
                }
            };
            code.assignIndices(callback);

            DalvInsnList instructions = code.getInsns();
            codeElement.setAttribute("register-size", String.valueOf(instructions
                    .getRegistersSize()));
            processLocals(instructions.getRegistersSize(), isStatic, parseClassName(
                    cf.getThisClass().getClassType().getClassName()).toString(), meth
                    .getPrototype().getParameterTypes(), codeElement, referencedTypes);
            Map<Integer, SwitchData> switchDataBlocks = extractSwitchData(instructions);
            Map<Integer, ArrayData> arrayData = extractArrayData(instructions);
            CatchTable catches = code.getCatches();
            processCatchTable(catches, codeElement, referencedTypes);
            Map<Integer, Target> targets = extractTargets(instructions, catches);

            // For each entry in the catch table, we create a try-catch element,
            // including the try and all the catch children and append it to the
            // code element. We store the try elements in a list, in order to
            // append the matching instructions to them as they are processed.
            List<Element> tryElements = new ArrayList<Element>();
            Map<Integer, Element> tryCatchElements = new HashMap<Integer, Element>();
            for (int i = 0; i < catches.size(); ++i) {
                Element tryCatchElement = new Element("try-catch", NS_DEX);
                Element tryElement = new Element("try", NS_DEX);
                tryCatchElement.addContent(tryElement);
                tryElements.add(tryElement);

                // For each handler create a catch element as the child of the
                // try-catch element.
                CatchHandlerList handlers = catches.get(i).getHandlers();
                for (int j = 0; j < handlers.size(); ++j) {
                    Element catchElement = new Element("catch", NS_DEX);
                    catchElement.setAttribute("exception-type", handlers.get(j).getExceptionType()
                            .toHuman());
                    catchElement.setAttribute("target", String
                            .valueOf(handlers.get(j).getHandler()));
                    tryCatchElement.addContent(catchElement);
                }
                tryCatchElements.put(catches.get(i).getStart(), tryCatchElement);
            }

            Element lastTryCatchElement = null;

            // Used inside processInstruction to mark source file lines as
            // already added, so they don't get added twice.
            List<Integer> sourceLinesAlreadyPut = new ArrayList<Integer>();
            // Process every single instruction of this method. Either add it do
            // the main code element, or to a try-catch block.
            for (int i = 0; i < instructions.size(); ++i) {
                Element instructionParent = codeElement;
                DalvInsn instruction = instructions.get(i);
                int address = instruction.getAddress();

                // Determine whether to add the next instruction to the
                // codeElement or to a try block.
                Entry currentCatch = null;
                int tryElementIndex = 0;
                for (tryElementIndex = 0; tryElementIndex < catches.size(); ++tryElementIndex) {
                    if (isInstructionInCatchRange(instruction, catches.get(tryElementIndex))) {
                        instructionParent = tryElements.get(tryElementIndex);
                        currentCatch = catches.get(tryElementIndex);
                        break;
                    }
                }

                // Adds a label element for each target we extracted earlier.
                if (targets.containsKey(address)) {
                    Element labelElement = new Element("label", NS_DEX);
                    labelElement.setAttribute("id", String.valueOf(address));

                    if (currentCatch != null) {
                        // Labels at the beginning of a try block need to be
                        // moved in front of it.
                        if (currentCatch.getStart() == address) {
                            codeElement.addContent(labelElement);
                        } else if (targets.get(address).requiresSplit) {
                            // If we got here, it means that there is a target,
                            // that is a catch-handler target and it is inside a
                            // try block. We have to avoid this. So the way we
                            // solve it is by splitting up the try block into
                            // two, and adding the label in between.

                            // First, add the label to the codeElement, so that
                            // it is outside the try-catch block.
                            codeElement.addContent(labelElement);

                            // Then, make a copy of the previous try-catch
                            // block, make sure its try block is empty and add
                            // it. Then replace the previous try element in the
                            // list so the next instructions can be added to it
                            // instead of the previous one.
                            Element secondTryCatchElement = (Element) lastTryCatchElement.clone();
                            Element secondTry = secondTryCatchElement.getChild("try", NS_DEX);
                            secondTry.removeContent();
                            codeElement.addContent(secondTryCatchElement);
                            tryElements.set(tryElementIndex, secondTry);
                        } else {
                            instructionParent.addContent(labelElement);
                        }
                    } else {
                        instructionParent.addContent(labelElement);
                    }
                    targets.remove(address);
                }

                // Position the try-catch elements correctly inside the
                // codeElement.
                if (tryCatchElements.containsKey(address)) {
                    Element tryCatchElement = tryCatchElements.get(address);
                    codeElement.addContent(tryCatchElement);
                    tryCatchElements.remove(address);
                    lastTryCatchElement = tryCatchElement;
                }

                processInstruction(instruction, instructionParent, switchDataBlocks, arrayData,
                        sourceLinesAlreadyPut, referencedTypes);
            }
        }
    }

    /**
     * Returns whether the given instruction is part of the given catch block.
     */
    private static boolean isInstructionInCatchRange(DalvInsn instruction, Entry catchEntry) {
        return instruction.getAddress() >= catchEntry.getStart()
                && instruction.getAddress() < catchEntry.getEnd();
    }

    /**
     * Sets attributes in the element according to the access flags given.
     */
    private static void processAccessFlags(int accessFlags, Element element) {
        boolean isStatic = AccessFlags.isStatic(accessFlags);
        boolean isPrivate = AccessFlags.isPrivate(accessFlags);
        boolean isPublic = AccessFlags.isPublic(accessFlags);
        boolean isNative = AccessFlags.isNative(accessFlags);
        boolean isAbstract = AccessFlags.isAbstract(accessFlags);
        boolean isSynthetic = AccessFlags.isSynthetic(accessFlags);
        boolean isInterface = AccessFlags.isInterface(accessFlags);

        setAttributeIfTrue(element, "isStatic", isStatic);
        setAttributeIfTrue(element, "isPrivate", isPrivate);
        setAttributeIfTrue(element, "isPublic", isPublic);
        setAttributeIfTrue(element, "isNative", isNative);
        setAttributeIfTrue(element, "isAbstract", isAbstract);
        setAttributeIfTrue(element, "isSynthetic", isSynthetic);
        setAttributeIfTrue(element, "isInterface", isInterface);
    }

    /**
     * Adds local {@code var} elements to the {@code code} element for each
     * parameter and the {@code this} reference, if applicable.
     */
    private static void processLocals(int registerSize, boolean isStatic, String classType,
            StdTypeList parameterTypes, Element codeElement, Set<String> referencedTypes) {

        // The parameters are stored in the last N registers.
        // If the method is not static, the reference to "this" is stored right
        // before the parameters.

        List<Element> varElements = new ArrayList<Element>();

        // We go through the list of parameters backwards, as we need to change
        // the indexes, depending on whether we find category 2 types. In the
        // end, the list is reverted.
        int j = 0;
        for (int i = parameterTypes.size() - 1; i >= 0; --i, ++j) {
            com.android.dx.rop.type.Type paramType = parameterTypes.get(i);
            Element varElement = new Element("var", NS_DEX);
            if (paramType.isCategory2()) {
                j++;
            }
            varElement.setAttribute("name", "var-register-" + (registerSize - 1 - j));
            varElement.setAttribute("register", String.valueOf(registerSize - 1 - j));
            String localsType = paramType.getType().toHuman();
            varElement.setAttribute("type", localsType);
            referencedTypes.add(localsType);
            varElements.add(varElement);
        }

        // Add the 'this' reference right before the parameters, if the method
        // is not static.
        if (!isStatic) {
            Element thisVarElement = new Element("var", NS_DEX);
            thisVarElement.setAttribute("name", "this");
            thisVarElement.setAttribute("register", String.valueOf(registerSize - j - 1));
            thisVarElement.setAttribute("type", classType);
            varElements.add(thisVarElement);
        }

        // Reverse the list and append it to the code element.
        Collections.reverse(varElements);
        for (Element varElement : varElements) {
            codeElement.addContent(varElement);
        }
    }

    /**
     * Extracts targets that are being jumped to, so we can later add labels at
     * the corresponding positions when generating the code.
     * 
     * @return a set containing the addresses of all jump targets
     */
    private static Map<Integer, Target> extractTargets(DalvInsnList instructions, CatchTable catches) {
        Map<Integer, Target> targets = new HashMap<Integer, Target>();

        // First, add non-catch targets.
        for (int i = 0; i < instructions.size(); ++i) {
            // If the target is generic, we have to assume it might jump into a
            // catch block, so we require splitting.
            if (instructions.get(i) instanceof TargetInsn) {
                TargetInsn targetInsn = (TargetInsn) instructions.get(i);
                targets.put(targetInsn.getTargetAddress(), new Target(
                        targetInsn.getTargetAddress(), true));
            } else if (instructions.get(i) instanceof SwitchData) {
                // Switches should always be within the same block, no no
                // splitting should be required.
                SwitchData switchData = (SwitchData) instructions.get(i);
                CodeAddress[] caseTargets = switchData.getTargets();
                for (CodeAddress caseTarget : caseTargets) {
                    targets
                            .put(caseTarget.getAddress(),
                                    new Target(caseTarget.getAddress(), false));
                }
            }
        }

        // Then, add all catch-handler targets. We need this info, so using
        // Map.put will potentially override an existing target, so the
        // information about a potential catch-handler target is not lost.
        for (int i = 0; i < catches.size(); ++i) {
            CatchHandlerList handlers = catches.get(i).getHandlers();
            for (int j = 0; j < handlers.size(); ++j) {
                int handlerAddress = handlers.get(j).getHandler();
                targets.put(handlerAddress, new Target(handlerAddress, true));
            }
        }

        return targets;
    }

    /**
     * Extracts all {@link SwitchData} pseudo-instructions from the given list
     * of instructions.
     * 
     * @param instructions
     *            the list of instructions from where to extract
     * @return a map containing all found {@link SwitchData} instructions,
     *         indexed by address.
     */
    private static Map<Integer, SwitchData> extractSwitchData(DalvInsnList instructions) {
        Map<Integer, SwitchData> result = new HashMap<Integer, SwitchData>();
        for (int i = 0; i < instructions.size(); ++i) {
            if (instructions.get(i) instanceof SwitchData) {
                SwitchData switchData = (SwitchData) instructions.get(i);
                result.put(switchData.getAddress(), switchData);
            }
        }
        return result;
    }

    /**
     * Extracts all {@link ArrayData} pseudo-instructions from the given list of
     * instructions.
     * 
     * @param instructions
     *            the list of instructions from where to extract
     * @return a map containing all found {@link ArrayData} instructions,
     *         indexed by address.
     */
    private static Map<Integer, ArrayData> extractArrayData(DalvInsnList instructions) {
        Map<Integer, ArrayData> result = new HashMap<Integer, ArrayData>();
        for (int i = 0; i < instructions.size(); ++i) {
            if (instructions.get(i) instanceof ArrayData) {
                ArrayData arrayData = (ArrayData) instructions.get(i);
                result.put(arrayData.getAddress(), arrayData);
            }
        }
        return result;
    }

    /**
     * Creates an element for the given instruction and puts it into the given
     * code element. It is possible that no element is added for the given
     * instruction.
     * 
     * @param instruction
     *            the instruction to process
     * @param parentElement
     *            the element to add the instruction element to
     * @param switchDataBlocks
     *            the switch data blocks
     * @param arrayData
     *            the array data
     * @param sourceLinesAlreadyPut
     *            a bin for putting used source lines number in.
     * @param referencedTypes
     *            will be filled with the types references in this class file
     */
    private static void processInstruction(DalvInsn instruction, Element parentElement,
            Map<Integer, SwitchData> switchDataBlocks, Map<Integer, ArrayData> arrayData,
            List<Integer> sourceLinesAlreadyPut, Set<String> referencedTypes) {
        Element dexInstruction = null;

        RegisterSpecList registers = instruction.getRegisters();
        for (int i = 0; i < registers.size(); ++i) {
            RegisterSpec register = registers.get(i);
            String descriptor = register.getType().getDescriptor();
            String registerType = register.getType().toHuman();
            // Sometimes a register type name starts with some info about the
            // register. We need to cut this out.
            if (descriptor.startsWith("N")) {
                referencedTypes.add(registerType.substring(registerType.indexOf('L') + 1));
            } else {
                referencedTypes.add(registerType);
            }
        }

        if (instruction instanceof CodeAddress) {
            // We put debug information about source code positions into the
            // code so that we can control the debugger.
            SourcePosition sourcePosition = instruction.getPosition();
            CstUtf8 sourceFile = sourcePosition.getSourceFile();
            int sourceLine = sourcePosition.getLine();
            if (sourceFile != null && !sourceLinesAlreadyPut.contains(sourceLine)) {
                dexInstruction = new Element("source-position", NS_XMLVM);
                dexInstruction.setAttribute("file", sourceFile.toHuman());
                dexInstruction.setAttribute("line", String.valueOf(sourceLine));
                sourceLinesAlreadyPut.add(sourceLine);
            }
        } else if (instruction instanceof LocalSnapshot) {
            // Ignore.
        } else if (instruction instanceof OddSpacer) {
            // Ignore NOPs.
        } else if (instruction instanceof SwitchData) {
            // Ignore here because we already processes these and they were
            // given to this method as an argument.
        } else if (instruction instanceof LocalStart) {
            // As we extract the locals information up-front we don't need to
            // handle local-start.
        } else if (instruction instanceof ArrayData) {
            // Ignore here because we already processed these and they were
            // given to this method as an argument.
        } else if (instruction instanceof SimpleInsn) {
            SimpleInsn simpleInsn = (SimpleInsn) instruction;
            String instructionName = simpleInsn.getOpcode().getName();

            // If this is a move-result instruction, we don't add it
            // explicitly, but instead add the result register to the previous
            // invoke instruction's return.
            if (instructionName.startsWith("move-result")) {
                // Sanity Check
                if (simpleInsn.getRegisters().size() != 1) {
                    Log.error("DEXmlvmOutputProcess: Register Size doesn't fit 'move-result'.");
                    System.exit(-1);
                }
                Element moveInstruction = new Element("move-result", NS_DEX);
                addRegistersAsAttributes(registers, moveInstruction);
                lastDexInstruction.addContent(moveInstruction);
            } else {
                dexInstruction = new Element(sanitizeInstructionName(instructionName), NS_DEX);
                addRegistersAsAttributes(registers, dexInstruction);

                // For simple instructions with only one register, we also add
                // the type of the register. This includes the return
                // instructions.
                if (registers.size() == 1) {
                    dexInstruction.setAttribute("class-type", registers.get(0).getType().toHuman());
                }
            }
        } else if (instruction instanceof CstInsn) {
            CstInsn cstInsn = (CstInsn) instruction;
            if (isInvokeInstruction(cstInsn)) {
                dexInstruction = processInvokeInstruction(cstInsn);
            } else {
                dexInstruction = new Element(
                        sanitizeInstructionName(cstInsn.getOpcode().getName()), NS_DEX);
                Constant constant = cstInsn.getConstant();
                // TODO hack
                String type = constant.typeName();
                String name = "kind";
                if (!type.equals("field") && !type.equals("known-null") && !type.equals("type")
                        && !type.equals("string")) {
                    name = "type";
                }
                dexInstruction.setAttribute(name, constant.typeName());
                if (constant instanceof CstMemberRef) {
                    CstMemberRef memberRef = (CstMemberRef) constant;
                    String definingClassType = memberRef.getDefiningClass().getClassType()
                            .toHuman();
                    dexInstruction.setAttribute("class-type", definingClassType);
                    referencedTypes.add(definingClassType);
                    CstNat nameAndType = memberRef.getNat();
                    String memberType = nameAndType.getFieldType().getType().toHuman();
                    dexInstruction.setAttribute("member-type", memberType);
                    referencedTypes.add(memberType);
                    dexInstruction.setAttribute("member-name", nameAndType.getName().toHuman());
                } else if (constant instanceof CstString) {
                    CstString cstString = (CstString) constant;
                    String valueOriginal = cstString.getString().getString();
                    String value = "";
                    // Convert special characters in string to octal notation
                    for (int i = 0; i < valueOriginal.length(); i++) {
                        char ch = valueOriginal.charAt(i);
                        value += (ch < ' ' || ch > 'z') ? String.format("\\%03o", new Integer(ch))
                                : ch;
                    }
                    dexInstruction.setAttribute("value", value);
                } else {
                    dexInstruction.setAttribute("value", constant.toHuman());
                }
                if (cstInsn.getOpcode().getName().startsWith("filled-new-array")) {
                    addRegistersAsChildren(cstInsn.getRegisters(), dexInstruction);
                } else {
                    addRegistersAsAttributes(cstInsn.getRegisters(), dexInstruction);
                }
            }
        } else if (instruction instanceof TargetInsn) {
            TargetInsn targetInsn = (TargetInsn) instruction;
            String instructionName = targetInsn.getOpcode().getName();
            dexInstruction = new Element(sanitizeInstructionName(instructionName), NS_DEX);
            addRegistersAsAttributes(targetInsn.getRegisters(), dexInstruction);

            if (instructionName.equals("packed-switch") || instructionName.equals("sparse-switch")) {
                SwitchData switchData = switchDataBlocks.get(targetInsn.getTargetAddress());
                if (switchData == null) {
                    Log.error("DEXmlvmOutputProcess: Couldn't find SwitchData block.");
                    System.exit(-1);
                }
                IntList cases = switchData.getCases();
                CodeAddress[] caseTargets = switchData.getTargets();

                // Sanity check.
                if (cases.size() != caseTargets.length) {
                    Log.error("DEXmlvmOutputProcess: SwitchData size mismatch: cases vs targets.");
                    System.exit(-1);
                }

                for (int i = 0; i < cases.size(); ++i) {
                    Element caseElement = new Element("case", NS_DEX);
                    caseElement.setAttribute("key", String.valueOf(cases.get(i)));
                    caseElement.setAttribute("label", String.valueOf(caseTargets[i].getAddress()));
                    dexInstruction.addContent(caseElement);
                }
            } else if (instructionName.equals("fill-array-data")) {
                ArrayList<Constant> data = arrayData.get(targetInsn.getTargetAddress()).getValues();
                for (Constant c : data) {
                    Element constant = new Element("constant", NS_DEX);
                    constant.setAttribute("value", c.toHuman());
                    dexInstruction.addContent(constant);
                }
            } else {
                dexInstruction
                        .setAttribute("target", String.valueOf(targetInsn.getTargetAddress()));
            }
        } else if (instruction instanceof HighRegisterPrefix) {
            HighRegisterPrefix highRegisterPrefix = (HighRegisterPrefix) instruction;
            SimpleInsn[] moveInstructions = highRegisterPrefix.getMoveInstructions();
            for (SimpleInsn moveInstruction : moveInstructions) {
                processInstruction(moveInstruction, parentElement, switchDataBlocks, arrayData,
                        sourceLinesAlreadyPut, referencedTypes);
            }
        } else {
            System.err.print(">>> Unknown instruction: ");
            System.err.print("(" + instruction.getClass().getName() + ") ");
            System.err.print(instruction.listingString("", 0, true));
            System.exit(-1);
        }
        if (LOTS_OF_DEBUG) {
            System.out.print("(" + instruction.getClass().getName() + ") ");
            System.out.print(instruction.listingString("", 0, true));
        }
        if (dexInstruction != null) {
            // if (instruction.hasAddress()) {
            // dexInstruction.setAttribute("DEBUG-ADDRESS",
            // String.valueOf(instruction.getAddress()));
            // }
            parentElement.addContent(dexInstruction);
            lastDexInstruction = dexInstruction;
        }
    }

    /**
     * Takes the registers given and appends corresponding attributes to the
     * given element.
     */
    private static void addRegistersAsAttributes(RegisterSpecList registers, Element element) {
        final String[] REGISTER_NAMES = { "vx", "vy", "vz" };

        // Sanity check.
        if (registers.size() > 3) {
            Log.error("DEXmlvmOutputProcess.processRegisters: Too many registers.");
            System.exit(-1);
        }
        for (int i = 0; i < registers.size(); ++i) {
            element.setAttribute(REGISTER_NAMES[i], String.valueOf(registerNumber(registers.get(i)
                    .regString())));
            element.setAttribute(REGISTER_NAMES[i] + "-type", registers.get(i).getType().toHuman());
        }
    }

    /**
     * Takes the registers given and appends corresponding child tags to the
     * given element.
     */
    private static void addRegistersAsChildren(RegisterSpecList registers, Element element) {
        for (int i = 0; i < registers.size(); ++i) {
            Element reg = new Element("value", NS_DEX);
            reg.setAttribute("register", "" + registerNumber(registers.get(i).regString()));
            reg.setAttribute("type", registers.get(i).getType().toHuman());
            element.addContent(reg);
        }
    }

    /**
     * Returns whether the given instruction is an invoke instruction that can
     * be handled by {@link #processInvokeInstruction(CstInsn)}.
     */
    private static boolean isInvokeInstruction(CstInsn cstInsn) {
        final Dop[] invokeInstructions = { Dops.INVOKE_VIRTUAL, Dops.INVOKE_VIRTUAL_RANGE,
                Dops.INVOKE_STATIC, Dops.INVOKE_STATIC_RANGE, Dops.INVOKE_DIRECT,
                Dops.INVOKE_DIRECT_RANGE, Dops.INVOKE_INTERFACE, Dops.INVOKE_INTERFACE_RANGE,
                Dops.INVOKE_SUPER, Dops.INVOKE_SUPER_RANGE };
        for (Dop dop : invokeInstructions) {
            if (dop.equals(cstInsn.getOpcode())) {
                return true;
            }
        }
        return false;
    }

    /**
     * Returns whether the given instruction is an invoke-static instruction.
     */
    private static boolean isInvokeStaticInstruction(CstInsn cstInsn) {
        final Dop[] staticInvokeInstructions = { Dops.INVOKE_STATIC, Dops.INVOKE_STATIC_RANGE };
        for (Dop dop : staticInvokeInstructions) {
            if (dop.equals(cstInsn.getOpcode())) {
                return true;
            }
        }
        return false;
    }

    /**
     * Returns an element representing the given invoke instruction.
     */
    private static Element processInvokeInstruction(CstInsn cstInsn) {
        Element result = new Element(sanitizeInstructionName(cstInsn.getOpcode().getName()), NS_DEX);
        CstMethodRef methodRef = (CstMethodRef) cstInsn.getConstant();
        result.setAttribute("class-type", methodRef.getDefiningClass().toHuman());
        result.setAttribute("method", methodRef.getNat().getName().toHuman());
        RegisterSpecList registerList = cstInsn.getRegisters();
        List<RegisterSpec> registers = new ArrayList<RegisterSpec>();
        if (isInvokeStaticInstruction(cstInsn)) {
            if (registerList.size() > 0) {
                registers.add(registerList.get(0));
            }
        } else {
            // For non-static invoke instruction, the first register is the
            // instance the method is called on.
            result.setAttribute("register", String.valueOf(registerNumber(registerList.get(0)
                    .regString())));
        }

        // Adds the rest of the registers, if any.
        for (int i = 1; i < registerList.size(); ++i) {
            registers.add(registerList.get(i));
        }

        result.addContent(processParameterList(methodRef, registers));
        return result;
    }

    /**
     * Processes the signature of the given method reference and returns a
     * corresponding element.
     */
    private static Element processParameterList(CstMethodRef methodRef, List<RegisterSpec> registers) {
        Element result = new Element("parameters", NS_DEX);
        Prototype prototype = methodRef.getPrototype();
        StdTypeList parameters = prototype.getParameterTypes();

        // Sanity check.
        if (parameters.size() != registers.size()) {
            Log.error("DEXmlvmOutputProcess.processParameterList: Size mismatch: "
                    + "registers vs parameters");
            System.exit(-1);
        }

        for (int i = 0; i < parameters.size(); ++i) {
            Element parameterElement = new Element("parameter", NS_DEX);
            parameterElement.setAttribute("type", parameters.get(i).toHuman());
            parameterElement.setAttribute("register", String.valueOf(registerNumber(registers
                    .get(i).regString())));
            result.addContent(parameterElement);
        }
        Element returnElement = new Element("return", NS_DEX);
        returnElement.setAttribute("type", prototype.getReturnType().getType().toHuman());
        result.addContent(returnElement);
        return result;
    }

    /**
     * Processes the signature of the given method reference and returns a
     * corresponding element. It uses 'registers' to add register
     */
    private static Element processSignature(CstMethodRef methodRef, Set<String> referencedTypes) {
        Prototype prototype = methodRef.getPrototype();
        StdTypeList parameters = prototype.getParameterTypes();

        Element result = new Element("signature", NS_XMLVM);
        for (int i = 0; i < parameters.size(); ++i) {
            Element parameterElement = new Element("parameter", NS_XMLVM);
            String parameterType = parameters.get(i).toHuman();
            parameterElement.setAttribute("type", parameterType);
            referencedTypes.add(parameterType);
            result.addContent(parameterElement);
        }
        Element returnElement = new Element("return", NS_XMLVM);
        String returnType = prototype.getReturnType().getType().toHuman();
        returnElement.setAttribute("type", returnType);
        referencedTypes.add(returnType);
        result.addContent(returnElement);
        return result;
    }

    /**
     * Makes sure the instruction name is valid as an XML tag name.
     */
    private static String sanitizeInstructionName(String rawName) {
        return rawName.replaceAll("/", "-");
    }

    /**
     * Sets the given attribute in the given element if the value is true only.
     * Otherwise, nothing changes.
     */
    private static void setAttributeIfTrue(Element element, String attributeName, boolean value) {
        if (value) {
            element.setAttribute(attributeName, Boolean.toString(value));
        }
    }

    /**
     * Extracts the number out of the register name of the format (v0, v1, v2,
     * etc).
     * 
     * @param vFormat
     *            the register name in v-format
     * @return the extracted register number
     */
    private static int registerNumber(String vFormat) throws RuntimeException {
        if (!vFormat.startsWith("v")) {
            throw new RuntimeErrorException(new Error(
                    "Register name doesn't start with 'v' prefix: " + vFormat));
        }
        try {
            int registerNumber = Integer.parseInt(vFormat.substring(1));
            return registerNumber;
        } catch (NumberFormatException ex) {
            throw new RuntimeErrorException(new Error(
                    "Couldn't extract register number from register name: " + vFormat, ex));
        }
    }

    /**
     * Converts a {@link Document} into XML text.
     */
    private String documentToString(Document document) {
        XMLOutputter outputter = new XMLOutputter(Format.getPrettyFormat());
        StringWriter writer = new StringWriter();
        try {
            outputter.output(document, writer);
        } catch (IOException e) {
            e.printStackTrace();
            return "";
        }
        return writer.toString();
    }
}
