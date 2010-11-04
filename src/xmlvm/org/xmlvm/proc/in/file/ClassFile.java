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

package org.xmlvm.proc.in.file;

import org.xmlvm.util.universalfile.UniversalFile;

/**
 * An {@link XFile} class for class files.
 */
public class ClassFile extends XFile {
    public static final String CLASS_ENDING = ".class";


    public ClassFile(UniversalFile path) {
        super(path);
    }

    /**
     * Returns whether the given input is a class file.
     */
    public static boolean isClassInput(UniversalFile file) {
        return file.isFile() && file.getAbsolutePath().toLowerCase().endsWith(CLASS_ENDING);
    }
}
