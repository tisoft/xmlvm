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

import java.util.ArrayList;
import java.util.List;

/**
 * This class represents part of an execution path through a particular
 * function. It will be used in the future for performing more sophisticated
 * optimizations than we are doing now.
 */
public class CodePath {

    public CodePath(int id, CodePath parent) {
        this.id = id;
        this.parent = parent;
    }

    /*
     * Every code path gets a unique id.
     */
    public int                                      id;
    /*
     * A pointer to its parent
     */
    public CodePath                                 parent;
    /*
     * And the instructions that are in it.
     */
    public List<OnePathInstructionRegisterContents> path        = new ArrayList<OnePathInstructionRegisterContents>();
    /*
     * as well as any sub paths (created by things like branches)
     */
    public List<CodePath>                           subPaths    = new ArrayList<CodePath>();

    /*
     * For future use.
     */
    public RegisterSet                              wantsObject = RegisterSet.none();
    public RegisterSet                              givesObject = RegisterSet.none();
    public RegisterSet                              shouldFree  = RegisterSet.none();

}