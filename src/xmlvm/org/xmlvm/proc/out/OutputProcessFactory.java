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

import org.xmlvm.Log;
import org.xmlvm.main.Arguments;
import org.xmlvm.main.Targets;
import org.xmlvm.proc.XmlvmProcess;

/**
 * Creates OutputProcess based on the given targets.
 */
public class OutputProcessFactory {

    /**
     * The arguments that should be given to the created processes.
     */
    protected Arguments arguments;

    /**
     * Creates a new OutputProcessFactory
     * 
     * @param arguments
     *            The arguments that should be given to the created processes.
     */
    public OutputProcessFactory(Arguments arguments) {
        this.arguments = arguments;
    }

    /**
     * Based on the given target, returns a suitable OutputProcess or null, if
     * no process could be found.
     */
    public OutputProcess<? extends XmlvmProcess> createOutputProcess(Targets target, String out) {
        switch (target) {
        case JS:
            return new JavaScriptOutputProcess(arguments);
        case PYTHON:
            return new PythonOutputProcess(arguments);
        case CPP:
            return new CppOutputProcess(arguments);
        case OBJC:
            return new ObjectiveCOutputProcess(arguments);
        case QOOXDOO:
            return new QooxdooOutputProcess(arguments);
        case IPHONE:
            return new IPhoneOutputProcess(arguments);
        case IPHONEANDROID:
            return new Android2IPhoneOutputProcess(arguments);
        case PREANDROID:
            return new Android2IPhoneOutputProcess(arguments);
        case XMLVM:
            return new XmlvmOutputProcess(arguments);
        case IPHONETEMPLATE:
            return new TemplateOutputProcess(arguments);
        case CLASS:
            return new JavaByteCodeOutputProcess(arguments);
        case EXE:
            return new CILByteCodeOutputProcess(arguments);
        case DEX:
            return new DexOutputProcess(arguments);
        case DEXMLVM:
            return new DEXmlvmOutputProcess(arguments);
        }
        Log.error("Could not create OutputProcess for target '" + target + "'.");
        return null;
    }
}
