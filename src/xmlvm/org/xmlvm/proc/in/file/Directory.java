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
import java.util.ArrayList;
import java.util.List;

import org.xmlvm.util.FileSet;

public class Directory extends XFile {
    List<File> result;

    public Directory(String input) {
        super(input);
        init();
    }

    /**
     * Returns whether the given input is a directory.
     */
    public static boolean isDirectoryInput(String input) {
        return (input.contains("*") || (new File(input)).isDirectory());
    }

    /**
     * Returns a list of files that match the given input string.
     */
    public List<File> getAllMatchingFiles() {
        return result;
    }

    /**
     * Returns whether the directory given is the same as the one as described
     * by this {@link Directory} instance.
     */
    public boolean equals(File file) {
        File inputFile = new File(input);
        return inputFile.equals(file);
    }

    protected void init() {
        result = new ArrayList<File>();
        FileSet fileSet = new FileSet(input);
        for (File file : fileSet) {
            // Only return actual files that match this directory request. Files
            // in sub-directories are covered if they are matched the input
            // statement.
            if (!file.isDirectory()) {
                result.add(file);
            }
        }
    }
}
