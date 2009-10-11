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
    public OutputProcess<? extends XmlvmProcess> createOutputProcess(Targets target,
            String out) {
        if (target == Targets.JS) {
            return new JavaScriptOutputProcess(arguments);
        } else if (target == Targets.PYTHON) {
            return new PythonOutputProcess(arguments);
        } else if (target == Targets.CPP) {
            return new CppOutputProcess(arguments);
        } else if (target == Targets.OBJC) {
            return new ObjectiveCOutputProcess(arguments);
        } else if (target == Targets.QOOXDOO) {
            return new QooxdooOutputProcess(arguments);
        } else if (target == Targets.IPHONE) {
            return new IPhoneOutputProcess(arguments);
        } else if (target == Targets.ANDROIDONIPHONE) {
            return new Android2IPhoneOutputProcess(arguments);
        } else if (target == Targets.ANDROIDONPRE) {
            return new Android2PalmPreOutputProcess(arguments);
        } else if (target == Targets.XMLVM) {
            return new XmlvmOutputProcess(arguments);
        } else {
            Log.error("Could not create OutputProcess for target '" + target + "'.");
        }
        return null;
    }
}
