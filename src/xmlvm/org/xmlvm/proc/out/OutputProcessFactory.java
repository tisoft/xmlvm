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

import org.xmlvm.Log;
import org.xmlvm.main.Arguments;
import org.xmlvm.main.Targets;
import org.xmlvm.proc.XmlvmProcess;
import org.xmlvm.proc.out.templates.AndroidTemplateOutputProcess;
import org.xmlvm.proc.out.templates.IPhoneTemplateOutputProcess;

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
     * Based on the given target, returns a suitable target process or null, if
     * no process could be found.
     */
    public XmlvmProcess<?> createTargetProcess(Targets target) {
        switch (target) {
        case JAVA:
            return new JavaOutputProcess(arguments);
        case JS:
            return new JavaScriptOutputProcess(arguments);
        case PYTHON:
            return new PythonOutputProcess(arguments);
        case C:
            return new COutputProcess(arguments);
        case POSIX:
            return new PosixOutputProcess(arguments);
        case GENCWRAPPERS:
            return new GenCWrappersOutputProcess(arguments);
        case OBJC:
            return new ObjectiveCOutputProcess(arguments);
        case QOOXDOO:
            return new QooxdooOutputProcess(arguments);
        case IPHONE:
            return new IPhoneOutputProcess(arguments);
        case IPHONEC:
            return new IPhoneCOutputProcess(arguments);
        case IPHONEANDROID:
            return new Android2IPhoneOutputProcess(arguments);
        case WEBOS:
            return new WebOsOutputProcess(arguments);
        case XMLVM:
            return new XmlvmOutputProcess(arguments);
        case IPHONETEMPLATE:
            return new IPhoneTemplateOutputProcess(arguments, false);
        case IPHONEUPDATETEMPLATE:
            return new IPhoneTemplateOutputProcess(arguments, true);
        case ANDROIDTEMPLATE:
            return new AndroidTemplateOutputProcess(arguments, false);
        case ANDROIDUPDATETEMPLATE:
        case ANDROIDMIGRATETEMPLATE:
            return new AndroidTemplateOutputProcess(arguments, true);
        case CLASS:
            return new JavaByteCodeOutputProcess(arguments);
        case EXE:
            return new CILByteCodeOutputProcess(arguments);
        case DEX:
            return new DexOutputProcess(arguments);
        case DEXMLVM:
            return new DEXmlvmOutputProcess(arguments);
        case VTABLE:
            return new VtableOutputProcess(arguments);
        }
        Log.error("Could not create target process for target '" + target + "'.");
        return null;
    }
}
