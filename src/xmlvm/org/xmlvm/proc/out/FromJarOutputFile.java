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

import org.xmlvm.util.JarUtil;

/**
 * A jar-file whose content will be copied using {@link JarUtil}.
 */
public class FromJarOutputFile extends OutputFile {
    private String sourcePath;

    public FromJarOutputFile() {
        super(null);
    }

    /**
     * Sets the path from where {@link JarUtil} should copy the file.
     */
    public void setSourceJar(String sourcePath) {
        this.sourcePath = sourcePath;
    }

    /**
     * Gets the path from where {@link JarUtil} should copy the file.
     */
    public String getSourceJar() {
        return sourcePath;
    }
}
