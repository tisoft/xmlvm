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
import java.io.File;
import java.io.InputStream;
import java.io.StringWriter;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.List;

import org.xmlvm.Log;
import org.xmlvm.proc.out.build.PathFileFilter;
import org.xmlvm.util.FileUtil;
import org.xmlvm.util.universalfile.UniversalFile;
import org.xmlvm.util.universalfile.UniversalFileCreator;

/**
 * This class represents a file and its content, read to be written out to the
 * file system.
 */
public class OutputFile {

    private UniversalFile data;
    private String        location = "";
    private String        fileName = "";


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

    public OutputFile(UniversalFile file) {
        this.data = file;
    }

    /**
     * Returns the contents of this file.
     */
    public String getData() {
        if (data == null) {
            return null;
        }
        return data.getFileAsString();
    }

    /**
     * Returns the data as a byte array.
     */
    public byte[] getDataAsBytes() {
        return data.getFileAsBytes();
    }

    /**
     * Sets the content of this file.
     */
    public final void setData(String data) {
        if (data == null) {
            this.data = null;
        } else {
            try {
                setData(data.getBytes("UTF-8"));
            } catch (UnsupportedEncodingException ex) {
                Log.error(ex.getMessage());
            }
        }
    }

    /**
     * Sets the content of this file.
     */
    public final void setData(byte[] data) {
        this.data = UniversalFileCreator.createFile("", data);
    }

    /**
     * Sets the content of this file from an Input stream
     * 
     * @param stream
     *            The InputStream to use - only UTF-8 streams are supported
     * @return true, if everything was succesfull
     */
    public boolean setDataFromStream(InputStream stream) {
        if (stream == null) {
            return false;
        }
        this.data = UniversalFileCreator.createFile("", stream);
        return true;
    }

    /**
     * Sets the content of this file from a BufferReader
     * 
     * @param in
     *            The BufferReader to use as input
     * @return true, if everything was successful
     */
    public boolean setDataFromReader(BufferedReader in) {
        if (in == null) {
            return false;
        }
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
     * Get a list of the files affected by this OutputFile class that match the
     * given filter.
     * <p>
     * If this OutputFile only contains a file, it will return itself as the
     * only array element.
     * 
     * @return Array of affected files.
     */
    public OutputFile[] getAffectedSourceFiles(PathFileFilter filter) {
        OutputFile[] candidates = getAffectedSourceFiles();
        List<OutputFile> result = new ArrayList<OutputFile>();
        for (OutputFile candidate : candidates) {
            if (filter.accept(new File(candidate.getFullPath()))) {
                result.add(candidate);
            }
        }
        return result.toArray(new OutputFile[0]);
    }

    public OutputFile[] getAffectedSourceFiles() {
        if (data.isFile()) {
            return new OutputFile[] { this };
        } else {
            List<OutputFile> result = new ArrayList<OutputFile>();
            UniversalFile[] files = data.listFilesRecursively();
            int dataPathLength = data.getAbsolutePath().length();
            for (UniversalFile file : files) {
                String relativePath = file.getAbsolutePath().substring(dataPathLength + 1);
                OutputFile outputFile = new OutputFile(file);
                String path = getFullPath();
                if (!relativePath.isEmpty()) {
                    path += relativePath;
                }

                String location = path.substring(0, path.length() - file.getName().length());
                outputFile.setLocation(location);
                outputFile.setFileName(file.getName());

                result.add(outputFile);
            }
            return result.toArray(new OutputFile[0]);
        }
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
     * @return Whether file was written successfully.
     */
    public boolean write() {
    	if (location.isEmpty()) {
            Log.warn("Cannot write OutputFile with no location: " + getFullPath());
            return false;    		
    	}
        if (isEmpty()) {
            Log.warn("Ignoring empty or non-existent file: " + getFullPath());
            return false;
        }
        String pathAndName = getFullPath();
        return data.saveAs(pathAndName);
    }

    /**
     * Determines if the file is empty.
     * 
     * @return Whether the file empty or not present.
     */
    public boolean isEmpty() {
        return data == null;
    }
}
