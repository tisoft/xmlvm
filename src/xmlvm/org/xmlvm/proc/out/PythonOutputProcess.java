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
import org.xmlvm.proc.BundlePhase1;
import org.xmlvm.proc.BundlePhase2;
import org.xmlvm.proc.XmlvmProcessImpl;
import org.xmlvm.proc.XmlvmResource;
import org.xmlvm.proc.XsltRunner;

/**
 * This process takes XMLVM and turns it into Python code.
 */
public class PythonOutputProcess extends XmlvmProcessImpl {
    private static final String PY_EXTENSION = ".py";


    public PythonOutputProcess(Arguments arguments) {
        super(arguments);
        addAllXmlvmEmittingProcessesAsInput();
    }

    @Override
    public boolean processPhase1(BundlePhase1 bundle) {
        return true;
    }

    @Override
    public boolean processPhase2(BundlePhase2 bundle) {
        for (XmlvmResource xmlvm : bundle.getResources()) {
            Log.debug("PythonOutputProcess: Processing " + xmlvm.getName());
            OutputFile file = generatePython(xmlvm);
            file.setLocation(arguments.option_out());
            file.setFileName(xmlvm.getName() + PY_EXTENSION);
            bundle.addOutputFile(file);
        }
        return true;
    }

    protected OutputFile generatePython(XmlvmResource xmlvm) {
        return XsltRunner.runXSLT("xmlvm2py.xsl", xmlvm.getXmlvmDocument());
    }
}
