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

import java.io.File;

import org.xmlvm.proc.in.InputProcess;
import org.xmlvm.util.universalfile.UniversalFile;
import org.xmlvm.util.universalfile.UniversalFileCreator;

/**
 * A file used as an input for the {@link InputProcess} instances.
 */
public class XFile {
    protected UniversalFile file;

    /**
     * Creates an {@link XFile} instance from a file system location.
     */
    public XFile(File location) {
        file = UniversalFileCreator.createFile(location);
    }

    /**
     * Creates an {@link XFile} from a {@link UniversalFile} resource.
     */
    public XFile(UniversalFile file) {
        this.file = file;
    }

    /**
     * Returns the file as {@link File}.
     */
    public UniversalFile getFile() {
        return file;
    }

    /**
     * Returns the input of this file.
     */
    public String getPath() {
        return file.getAbsolutePath();
    }

    /**
     * Returns a String representation of this file. Currently this is the same
     * as {@link #getPath}
     */
    @Override
    public String toString() {
        return getPath();
    }

    /**
     * Returns whether the given input is a file.
     */
    public static boolean isFile(String input) {
        return (new File(input)).isFile();
    }
}
