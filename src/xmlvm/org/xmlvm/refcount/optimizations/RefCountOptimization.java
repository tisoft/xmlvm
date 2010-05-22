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

package org.xmlvm.refcount.optimizations;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.jdom.DataConversionException;
import org.jdom.Element;
import org.xmlvm.refcount.CodePath;
import org.xmlvm.refcount.InstructionActions;
import org.xmlvm.refcount.ReferenceCountingException;

/**
 * A growing interface used to add optimizations to the reference counting
 * module.
 */
public interface RefCountOptimization {

    /**
     * Used to add instructions to the start of a method
     */
    public class ReturnValue {
        public List<Element> functionInit = new ArrayList<Element>();
    }

    /**
     * This interface allows an implementor to make changes to nulling releases
     * and retains as it desires, based on all the processing that as already
     * occurred.
     */
    public ReturnValue Process(List<CodePath> allCodePaths,
            Map<Element, InstructionActions> beenTo, Element codeElement)
            throws ReferenceCountingException, DataConversionException;

}
