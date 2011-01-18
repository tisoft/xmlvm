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
package org.xmlvm.runtime;

import java.io.PrintStream;

import org.xmlvm.runtime.XMLVMOutputStream;

/**
 * Offers some utility functions to cross-compiled XMLVM applications.
 * 
 */
public class XMLVMUtil {

    /**
     * Method init() is called from within C function xmlvm_init() in file
     * xmlvm.m. It is declared as private so that a Java program cannot call it.
     */
    @SuppressWarnings("unused")
    private static void init() {
        PrintStream stream = new PrintStream(new XMLVMOutputStream());
        System.setOut(stream);
        System.setErr(stream);
    }
    
    public static void notImplemented() {
        System.err.println("XMLVMUtil.notImplemented()");
        System.exit(-1);
    }
}
