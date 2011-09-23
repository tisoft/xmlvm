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

import java.util.ArrayList;
import java.util.Collection;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.TreeSet;

import org.xmlvm.Log;
import org.xmlvm.main.Arguments;
import org.xmlvm.main.Targets;
import org.xmlvm.proc.BundlePhase1;
import org.xmlvm.proc.BundlePhase2;
import org.xmlvm.proc.DelayedXmlvmSerializationProvider;
import org.xmlvm.proc.XmlvmProcessImpl;
import org.xmlvm.proc.XmlvmResource;
import org.xmlvm.proc.XmlvmResource.Type;
import org.xmlvm.proc.XmlvmResource.XmlvmField;
import org.xmlvm.proc.XmlvmResource.XmlvmInvokeInstruction;
import org.xmlvm.proc.XmlvmResource.XmlvmItable;
import org.xmlvm.proc.XmlvmResource.XmlvmMemberReadWrite;
import org.xmlvm.proc.XmlvmResource.XmlvmMethod;
import org.xmlvm.util.ObjectHierarchyHelper;
import org.xmlvm.util.Vtable;

/**
 * This process takes XMLVM resources and modifies them by adding table
 * information. This stage is e.g. required by the {@link COutputProcess} which
 * emits C and can be useful for any target language that doesn't support
 * classes or similar OOP concepts.
 */
public class VtableOutputProcess extends XmlvmProcessImpl {
    private final static String   TAG                  = VtableOutputProcess.class.getSimpleName();
    private final static String   VTABLE_ENDING        = ".vtable.xmlvm";
    private Map<String, Vtable>   vtables              = new HashMap<String, Vtable>();
    private final Arguments       arguments;

    /**
     * Set containing all methods which are not overridden in super classes or
     * child classes with the following format className:methodName
     */
    private Map<String, String>   nonOverriddenMethods = new HashMap<String, String>();

    private ObjectHierarchyHelper hierarchyHelper;

    /**
     * Contains Strings of the form package.Class.methodName for methods where a
     * vtable entry should always be generated
     */
    private Set<String>           forcedVtable         = new HashSet<String>();


    /**
     * Instantiates a new {@link VtableOutputProcess}.
     */
    public VtableOutputProcess(Arguments arguments) {
        super(arguments);
        this.arguments = arguments;
        addSupportedInput(RemoveDuplicateMethodsOutputProcess.class);

        // Add empty class name that acts as a base class for java.lang.Object
        vtables.put("", new Vtable());

        forcedVtable.add("java.lang.Class.newInstance");
        forcedVtable.add("java.lang.Object.getClass");
        forcedVtable.add("java.lang.Class.getMethod");
        forcedVtable.add("java.lang.reflect.Method.invoke");
        forcedVtable.add("java.lang.Object.hashCode");
        forcedVtable.add("java.lang.Object.equals");
        forcedVtable.add("java.lang.Object.finalize");
        forcedVtable.add("java.lang.Object.clone");
        forcedVtable.add("java.lang.Object.toString");
    }

    @Override
    public boolean processPhase1(BundlePhase1 bundle) {
        // This needs a global view in order to modify the resource set.
        // Therefore all processing is done in the second phase.
        return true;
    }

    @Override
    public boolean processPhase2(BundlePhase2 bundle) {
        this.hierarchyHelper = new ObjectHierarchyHelper(bundle.getResourceMap());
        hierarchyHelper.redeclareInterfaceMethodsInAbstractClasses();
        hierarchyHelper.calculateInterfaceIndices();
        computeInvocationTables(bundle.getResources());
        Log.debug(TAG, "Done computing vtables/itables");

        processVtableInvokes(bundle.getResources());
        Log.debug(TAG, "Done annotating invokes");
        adjustTypes(bundle.getResources());
        Log.debug(TAG, "Done adjusting types");

        if (!isTargetProcess && arguments.option_target() != Targets.GENCWRAPPERS) {
            hierarchyHelper.computeInterfaceTableInformation();
        }

        if (isTargetProcess) {
            for (XmlvmResource resource : bundle.getResources()) {
                OutputFile file = new OutputFile(new DelayedXmlvmSerializationProvider(resource
                        .getXmlvmDocument()));
                file.setLocation(arguments.option_out());
                file.setFileName(resource.getFullName() + VTABLE_ENDING);
                bundle.addOutputFile(file);
            }
        }
        return true;
    }

    /**
     * Compute Vtables and Itables for all {@link org.xmlvm.proc.XmlvmResource}
     * s.
     * 
     * @param resources
     *            the resources for which to compute the invocation tables
     */
    private void computeInvocationTables(Collection<XmlvmResource> resources) {
        // Compute vtables and memorize non-overridden methods for which
        // no vtable entry will be generated
        for (XmlvmResource resource : resources) {
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
        // Don't recompute vtables and don't compute them for interfaces
        if (resource == null || resource.getType() == Type.CONST_POOL
                || vtables.containsKey(resource.getFullName()) || resource.isInterface()) {
            return;
        }

        String baseClassName = resource.getSuperTypeName();
        if (!vtables.containsKey(baseClassName)) {
            XmlvmResource baseClass = hierarchyHelper.getXmlvmResource(baseClassName);
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
        List<XmlvmMethod> methods = resource.getMethodsSorted();
        for (XmlvmMethod method : methods) {
            if (method.isConstructor() || method.isStatic() || method.isPrivate()) {
                continue;
            }
            int idx = baseClassVtable.getVtableIndex(method);
            if (idx == -1) {
                // Add vtable index if the method is overridden, abstract or
                // specified as vtable method in isForcedVtable
                if (method.isAbstract()
                        || hierarchyHelper.isOverridden(resource.getFullName(), method)
                        || isForcedVtable(resource, method)) {
                    Log.debug(TAG, "Vtable method " + resource.getFullName() + " "
                            + method.getName());
                    thisClassVtable.addMethod(method);
                } else {
                    Log.debug(TAG, "Non-Vtable method " + resource.getFullName() + " "
                            + method.getName());
                    // Memorize method and declaring class for all classes
                    // inheriting this method
                    nonOverriddenMethods.put(getCompleteMethodIdentifier(resource, method),
                            resource.getFullName());
                    for (XmlvmResource inheritingResource : hierarchyHelper
                            .getChildrenRecursive(resource.getFullName())) {
                        nonOverriddenMethods.put(getCompleteMethodIdentifier(inheritingResource,
                                method), resource.getFullName());
                    }
                }
            } else {
                method.setVtableIndex(idx);
            }
        }

        Log.debug("Size of vtable for class " + resource.getFullName() + ": "
                + thisClassVtable.getVtableSize());

        resource.setVtableSize(thisClassVtable.getVtableSize());
        vtables.put(resource.getFullName(), thisClassVtable);

        computeItable(resource);
    }

    /**
     * Sort interfaces alphabetically by full name
     * @param interfaces
     * @return the sorted set of interfaces
     */
    private static Set<XmlvmResource> getSortedInterfaces(Set<XmlvmResource> interfaces) {
        TreeSet<XmlvmResource> tsetInterfaces = new TreeSet<XmlvmResource>(
                new Comparator<XmlvmResource>() {
                    @Override
                    public int compare(XmlvmResource o1, XmlvmResource o2) {
                        return o1.getFullName().compareTo(o2.getFullName());
                    }
                });
        tsetInterfaces.addAll(interfaces);
        return tsetInterfaces;
    }

    /**
     * Compute the Itable for one {@link org.xmlvm.proc.XmlvmResource}.
     * 
     * @param resource
     *            {@link #XmlvmResource} for which to compute the Itable.
     */
    private void computeItable(XmlvmResource resource) {
        Vtable thisClassVtable = vtables.get(resource.getFullName());

        Set<XmlvmResource> interfaces = hierarchyHelper.getInterfacesRecursive(resource
                .getFullName());
        if (interfaces.size() > 0) {
            // Guarantee output order so that the generated files do not change unnecessarily
            interfaces = getSortedInterfaces(interfaces);
            XmlvmItable itable = resource.createItable();
            for (XmlvmResource iface : interfaces) {
                // Add a vm:implementsInterface entry to the resource
                // to initialize the implementedInterfaces array in the
                // TIB later
                resource.createImplementsInterface(iface.getFullName());

                // Methods are sorted, which guarantees output order so that the
                // generated files do not change unnecessarily
                List<XmlvmMethod> methods = iface.getMethodsSorted();
                for (XmlvmMethod ifaceMethod : methods) {
                    // Ignore static initializer methods in interfaces
                    if (!ifaceMethod.isStatic()) {
                        int vtableIndex = thisClassVtable.getVtableIndex(ifaceMethod);
                        // If we can find a vtable entry for the method
                        // map the interface method to the vtable entry
                        if (vtableIndex != -1) {
                            itable.addVtableMapping(iface.getFullName(), ifaceMethod, vtableIndex);
                        } else {
                            // If we can't find a vtable entry check if we
                            // deleted the vtable entry during
                            // optimization and map the itable to a
                            // invoke-direct
                            String classType = nonOverriddenMethods
                                    .get(getCompleteMethodIdentifier(resource, ifaceMethod));
                            if (classType != null) {
                                itable
                                        .addDirectMapping(iface.getFullName(), ifaceMethod,
                                                classType);
                            } else {
                                Log.error("Couldn't find implementation for interface method "
                                        + iface.getFullName() + " " + ifaceMethod.getName()
                                        + " in " + resource.getFullName());
                            }
                        }
                    }
                }
            }
        }
    }

    /**
     * Returns if there should be a vtable entry for the method no matter if
     * it's overridden or abstract. This is used to force a vtable entry for
     * method we want to override in native code but wouldn't usually be allowed
     * to (e.g. because they're final)
     * 
     * @param resource
     *            XmlvmResource containing the method
     * @param method
     *            Method which should be checked
     * @return True if there should be a vtable entry forced otherwise false
     */
    private boolean isForcedVtable(XmlvmResource resource, XmlvmMethod method) {
        return forcedVtable.contains(resource.getFullName() + "." + method.getName());
    }

    /**
     * Process all <code>&lt;dex:invoke-virtual&gt;</code> and either annotate
     * them in @see() or change them to invoke-direct in @see()
     * 
     * @param resources
     *            the resources to process
     */
    private void processVtableInvokes(Collection<XmlvmResource> resources) {
        for (XmlvmResource resource : resources) {
            List<XmlvmMethod> methods = resource.getMethods();
            for (XmlvmMethod method : methods) {
                for (XmlvmInvokeInstruction instruction : method.getVtableInvokeInstructions()) {
                    if (nonOverriddenMethods.containsKey(getCompleteInvokeIdentifier(instruction))) {
                        changeToInvokeDirect(instruction);
                    } else {
                        annotateInvoke(instruction);
                    }
                }
            }
        }
    }

    /**
     * Change a invoke-virtual to a invoke-direct if we could save the vtable
     * entry through optimization. Eventually also change the class-type to the
     * declaring class of the method if it is not already the class-type of the
     * invoke-virtual
     * 
     * @param instruction
     *            Instruction to be changed
     */
    private void changeToInvokeDirect(XmlvmInvokeInstruction instruction) {
        String completeInvokeSignature = getCompleteInvokeIdentifier(instruction);
        String classType = instruction.getClassType();

        String oldName = instruction.invokeElement.getName();
        String newName = oldName.replace("virtual", "direct");
        instruction.invokeElement.setName(newName);
        Log.debug("Changed " + oldName + " for " + classType + " " + instruction.getMethodName()
                + " to " + newName);

        String declaringClass = nonOverriddenMethods.get(completeInvokeSignature);
        if (!classType.equals(declaringClass)) {
            instruction.setClassType(declaringClass);
            Log.debug("Changed class-type of invoke from " + classType
                    + " to declaring class type " + declaringClass);
        }
    }

    /**
     * Process all <code>&lt;dex:invoke-virtual&gt;</code> instructions by
     * adding the XML attribute <code>vtable-index</code> to them
     * 
     * @param instruction
     *            Instruction to be annotated
     */
    private void annotateInvoke(XmlvmInvokeInstruction instruction) {
        String className = instruction.getClassType();
        if (className.indexOf("[]") != -1) {
            className = "java.lang.Object";
        }
        if (!vtables.containsKey(className)) {
            Log.error("Vtable for " + className + " not found!");
            return;
        }
        Vtable vtable = vtables.get(className);
        int vtableIndex = vtable.getVtableIndex(instruction);

        if (vtableIndex != -1) {
            instruction.setVtableIndex(vtableIndex);
            Log.debug("Vtable index for " + instruction.getClassType() + "."
                    + instruction.getMethodName() + ": " + vtableIndex);
        } else {
            Log.error("Vtable index for " + instruction.getClassType() + "."
                    + instruction.getMethodName() + " is -1!\n");
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
     * 
     * @param resources
     *            the resources of the types to adjust
     */
    private void adjustTypes(Collection<XmlvmResource> resources) {
        for (XmlvmResource resource : resources) {
            if (resource.getType() == Type.CONST_POOL) {
                continue;
            }
            List<XmlvmInvokeInstruction> invokeInstructions = new ArrayList<XmlvmInvokeInstruction>();
            List<XmlvmMemberReadWrite> memberReadWriteInstructions = new ArrayList<XmlvmMemberReadWrite>();
            resource.collectInstructions(invokeInstructions, memberReadWriteInstructions);
            for (XmlvmInvokeInstruction instr : invokeInstructions) {
                String classType = instr.getClassType();
                XmlvmResource classTypeResource = hierarchyHelper.getXmlvmResource(classType);
                if (classTypeResource == null) {
                    continue;
                }
                String type = searchDeclaringTypeInHierarchy(classTypeResource, instr);
                if (type == null) {
                    Log.warn(TAG, "Problem with adjusting type for '" + classType + "' while processing instruction:");
                    Log.warn(TAG, instr.toString());
                    continue;
                }
                instr.setClassType(type);
            }
            for (XmlvmMemberReadWrite instr : memberReadWriteInstructions) {
                String classType = instr.getClassType();
                XmlvmResource classTypeResource = hierarchyHelper.getXmlvmResource(classType);
                if (classTypeResource == null) {
                    continue;
                }
                String type = searchDeclaringTypeInHierarchy(classTypeResource, instr);
                if (type == null) {
                    Log.warn(TAG, "Problem with adjusting type for '" + classType + "' while processing instruction:");
                    Log.warn(TAG, instr.toString());
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
            XmlvmResource baseResource = hierarchyHelper.getXmlvmResource(baseClass);
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
                XmlvmResource ifaceResource = hierarchyHelper.getXmlvmResource(iface);
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
            XmlvmResource baseResource = hierarchyHelper.getXmlvmResource(baseClass);
            if (baseResource != null) {
                return searchDeclaringTypeInHierarchy(baseResource, instruction);
            }
        }
        return null;
    }

    /**
     * Return a identifier for a method containing class name, method name and
     * parameters to be used as key in a hash table
     * 
     * @param resource
     *            Class declaring the method
     * @param method
     *            Method for which the identifier should be generated
     * @return Method identifier
     */
    private String getCompleteMethodIdentifier(XmlvmResource resource, XmlvmMethod method) {
        String sig = "";
        sig += resource.getFullName() + "_";
        sig += method.getName() + "__";
        sig += ObjectHierarchyHelper.getParameterString(method.getParameterTypes());
        return sig;
    }

    /**
     * Return a identifier for a method containing class name, method name and
     * parameters to be used as key in a hash table
     * 
     * @param invoke
     *            Invocation instruction of the method
     * @return Method identifier
     */
    private String getCompleteInvokeIdentifier(XmlvmInvokeInstruction invoke) {
        String sig = "";
        sig += invoke.getClassType() + "_";
        sig += invoke.getMethodName() + "__";
        sig += ObjectHierarchyHelper.getParameterString(invoke.getParameterTypes());
        return sig;
    }

}
