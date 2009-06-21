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

/**
 * This class represents a file and its content, read to be written out to the
 * file system.
 */
public class OutputFile {
    private String data;
    private String location = "";
    private String fileName = "";

    /**
     * Create a new file with the given string content.
     */
    public OutputFile(String data) {
        setData(data);
    }

    /**
     * Returns the contents of this file.
     */
    public String getData() {
        return new String(data);
    }

    /**
     * Sets the content of this file.
     */
    public void setData(String data) {
        this.data = data;
    }

    /**
     * Returns the output location of this file.
     */
    public String getLocation() {
        return location;
    }

    /**
     * Sets the output location of this file.
     */
    public void setLocation(String location) {
        this.location = location;
    }

    /**
     * Returns the name of this file (excluding the path).
     */
    public String getFileName() {
        return fileName;
    }

    /**
     * Sets the name of this file (excluding the path).
     */
    public void setFileName(String fileName) {
        this.fileName = fileName;
    }
}
