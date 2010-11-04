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

package org.xmlvm.refcount;

import org.jdom.Element;

/**
 * Helper class for the code path. Every time any execution path hits an
 * instruction it stores away the object registers and non object registers that
 * are available to the instruction. In this way we can later decide whether
 * there is potential conflict if we decided to free a register
 */
public class OnePathInstructionRegisterContents {
    public OnePathInstructionRegisterContents(Element elem, RegisterSet hasObj, RegisterSet noObj) {
        this.instruction = elem;
        this.hasObj = hasObj;
        this.noObj = noObj;
    }


    /**
     * The instruction in question
     */
    public Element     instruction;
    /**
     * The set of registers that hold objects on this particular execution path
     */
    public RegisterSet hasObj;
    /**
     * The set of registers that do not hold objects on this particular
     * execution path
     */
    public RegisterSet noObj;
}