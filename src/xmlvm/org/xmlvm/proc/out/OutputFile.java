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

import java.io.BufferedReader;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.StringWriter;
import java.io.UnsupportedEncodingException;

import org.xmlvm.Log;
import org.xmlvm.util.FileUtil;

/**
 * This class represents a file and its content, read to be written out to the
 * file system.
 */
public class OutputFile {

    private byte[] data;
    private String location = "";
    private String fileName = "";

    /**
     * Creates an empty OutputFile instance.
     */
    public OutputFile() {
    }

    /**
     * Create a new file with the given string content.
     */
    public OutputFile(String data) {
        setData(data);
    }

    /**
     * Create a new file with the given string content.
     */
    public OutputFile(byte[] data) {
        setData(data);
    }

    /**
     * Returns the contents of this file.
     */
    public String getData() {
        if (data == null) {
            return null;
        }
        String res = null;
        try {
            res = new String(data, "UTF-8");
        } catch (UnsupportedEncodingException ex) {
            Log.error(ex.getMessage());
        }
        return res;
    }

    /**
     * Returns the data as a byte array.
     */
    public byte[] getDataAsBytes() {
        return data;
    }

    /**
     * Sets the content of this file.
     */
    public final void setData(String data) {
        if (data == null)
            this.data = null;
        else
            try {
                this.data = data.getBytes("UTF-8");
            } catch (UnsupportedEncodingException ex) {
                Log.error(ex.getMessage());
            }
    }

    /**
     * Sets the content of this file.
     */
    public final void setData(byte[] data) {
        this.data = data;
    }

    /**
     * Sets the content of this file from an Input stream
     * 
     * @param stream
     *            The InputStream to use - only UTF-8 streams are supported
     * @return true, if everything was succesfull
     */
    public boolean setDataFromStream(InputStream stream) {
        if (stream == null)
            return false;
        ByteArrayOutputStream out = new ByteArrayOutputStream();
        if (FileUtil.copyStreams(stream, out)) {
            data = out.toByteArray();
            return true;
        }
        return false;
    }

    /**
     * Sets the content of this file from a BufferReader
     * 
     * @param in
     *            The BufferReader to use as input
     * @return true, if everything was succesfull
     */
    public boolean setDataFromReader(BufferedReader in) {
        if (in == null)
            return false;
        StringWriter out = new StringWriter();
        if (FileUtil.copyReaders(in, out)) {
            setData(out.toString());
        }
        return false;
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

    /**
     * Get a list of the files affected by this OutputFile class. Only one file
     * (the output file) is affected
     * 
     * @return Array of affected files.
     */
    public File[] getAffectedSourceFiles() {
        File[] res = { new File(location, fileName) };
        return res;
    }

    /**
     * Get the fill pathname of the output file
     * 
     * @return The full pathname as String
     */
    public String getFullPath() {
        return location + (location.endsWith(File.separator) ? "" : File.separator) + fileName;
    }

    /**
     * Write the given file to disk.
     * 
     * @return whether file was written successfully
     */
    public boolean write() {
        if (getData() == null) {
            Log.warn("Ignoring empty file: " + getFullPath());
            return true;
        }
        FileOutputStream out = null;
        try {
            String pathAndName = getFullPath();
            out = new FileOutputStream(pathAndName);
            out.write(getDataAsBytes());
            out.close();
            return true;
        } catch (IOException e) {
            Log.error("Could not write file.\n" + e.getMessage());
            if (out != null)
                try {
                    out.close();
                } catch (IOException ex) {
                }
        }
        return false;
    }

    /**
     * Determines if the file is empty.
     * 
     * @return true if file is of size 0
     */
    public boolean isEmpty() {
        return data == null || data.length == 0;
    }
}
