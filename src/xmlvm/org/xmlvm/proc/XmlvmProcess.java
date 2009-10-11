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

import org.xmlvm.Log;
import org.xmlvm.main.Arguments;

import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.List;

/**
 * A collection of possible process IDs.
 */
enum XmlvmProcessId {
    XMLVM_JVM("xmlvmjvm"), XMLVM_CLR("xmlvmclr"), XMLVM_CLR_DFA("xmlvmclrdfa"), CLASS("class"), EXE(
            "exe"), JS("js"), OBJC("objc"), CPP("cpp"), PYTHON("python"), IPHONE("iphone"), QOOXDOO(
            "qooxdoo");
    String name;

    private XmlvmProcessId(String name) {
        this.name = name;
    }

    @Override
    public String toString() {
        return name;
    }
}

/**
 * Common interface for all XMLVM Processes.
 */
public abstract class XmlvmProcess<T extends XmlvmProcess<?>> {
    private List<T>          preprocesses    = new ArrayList<T>();

    /**
     * This list contains all the supported input processes.
     */
    protected List<Class<T>> supportedInputs = new ArrayList<Class<T>>();

    protected Arguments      arguments;

    public XmlvmProcess(Arguments arguments) {
        Log.debug("Instantiated: " + this.getClass().getName());
        this.arguments = arguments;
    }

    /**
     * This is the method every process needs to override and where it does its
     * work.
     * 
     * @return Whether the processing was successful.
     */
    public abstract boolean process();

    /**
     * Processors can override it to do post-processing.
     */
    public boolean postProcess() {
        return true;
    }

    public List<Class<T>> getSupportedInputs() {
        return supportedInputs;
    }

    @SuppressWarnings("unchecked")
    protected void addSupportedInput(Class<?> inputProcessClass) {
        try {
            supportedInputs.add((Class<T>) inputProcessClass);
        } catch (ClassCastException ex) {
            ex.printStackTrace();
            Log.error("You tried to add a supported input that is not of the same type as the "
                    + "generic type you've specified in the process.");
        }
    }

    /**
     * Creates an instance of each XvmlmProcess that is supported as input and
     * returns them in a list.
     */
    @SuppressWarnings("unchecked")
    public List<T> createInputInstances() {
        List<T> result = new ArrayList<T>();
        for (Class<T> supportedClass : getSupportedInputs()) {
            try {
                T process = (T) supportedClass.getConstructors()[0].newInstance(arguments);
                result.add(process);
                // Add this process to the list of pre-processes.
                addPreprocess(process);
            } catch (InstantiationException e) {
                e.printStackTrace();
                return null;
            } catch (IllegalAccessException e) {
                e.printStackTrace();
                return null;
            } catch (IllegalArgumentException e) {
                e.printStackTrace();
            } catch (SecurityException e) {
                e.printStackTrace();
            } catch (InvocationTargetException e) {
                e.printStackTrace();
            }
        }
        return result;
    }

    /**
     * Determines whether the output of the given XmlvmProcess can be processed
     * by this XmlvmProcess.
     * 
     * @param process
     *            The process that should be used as the input.
     * @return Whether this process can handle the given process as an input.
     */
    public boolean supportsAsInput(T process) {
        for (Class<T> supportedClass : getSupportedInputs()) {
            if (isOfType(process.getClass(), supportedClass)) {
                return true;
            }
        }
        return false;
    }

    /**
     * Returns whether this process is a sub-class of a direct or indirect class
     * of the type given.
     */
    public boolean isOfSuperType(Class<?> type) {
        return isOfType(this.getClass(), type);
    }

    /**
     * Returns true, if b is either a direct or indirect superclass of a.
     */
    private static boolean isOfType(Class<?> a, Class<?> b) {
        if (a == null) {
            return false;
        }
        if (a.equals(b)) {
            return true;
        } else {
            return isOfType(a.getSuperclass(), b);
        }
    }

    public void addPreprocess(T xmlvmProcess) {
        Log.debug("Adding preprocess " + xmlvmProcess.getClass().getName() + " to process "
                + this.getClass().getName());
        preprocesses.add(xmlvmProcess);
    }

    /**
     * Runs all pre-processes synchronously. Will return when all pre-processes
     * have finished executing.
     */
    protected List<T> preprocess() {
        for (T process : preprocesses) {
            if (process.isActive()) {
                // TODO(haeberling): Maybe replace by preprocess? This way
                // processes don't have to call preprocess themselves anymore.
                process.process();
            }
        }
        return preprocesses;
    }

    /**
     * Runs {@link #postProcess()} on all preprocesses.
     */
    public boolean postProcessPreProcesses() {
        for (T process : preprocesses) {
            if (process.isActive()) {
                if (!process.postProcessPreProcesses()) {
                    return false;
                }
            }
        }
        return postProcess();
    }

    /**
     * Returns whether this process is active. An active process will be
     * processes. To be active a process needs to have at least one active
     * pre-process. Exception are InputProcesses, which are active by default.
     */
    protected boolean isActive() {
        // A process is active only when at least one of his preprocesses is
        // active.
        for (T preprocess : preprocesses) {
            if (preprocess.isActive()) {
                return true;
            }
        }
        return false;
    }

}
