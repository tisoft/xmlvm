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

package org.xmlvm.util.universalfile;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.jar.JarEntry;
import java.util.jar.JarFile;
import java.util.jar.JarInputStream;

import org.xmlvm.Log;

/**
 * A {@link UniversalFile} based on a {@link JarFile}.
 */
public class UniversalFileFromJarFile extends UniversalFile {
    private static final String TAG = "UniversalFileFromJarFile";

    private String              absoluteName;
    private JarInputStream      jarStream;

    UniversalFileFromJarFile(String absoluteName, JarInputStream jarStream) {
        this.absoluteName = absoluteName;
        this.jarStream = jarStream;
    }

    @Override
    public String getAbsoluteName() {
        return absoluteName;
    }

    @Override
    public String getAbsolutePath() {
        return absoluteName;
    }

    @Override
    public byte[] getFileAsBytes() {
        return null;
    }

    @Override
    public String getFileAsString() {
        return null;
    }

    @Override
    public boolean isDirectory() {
        return true;
    }

    @Override
    public UniversalFile[] listFiles() {
        List<UniversalFile> result = new ArrayList<UniversalFile>();
        JarEntry entry;
        try {
            while ((entry = jarStream.getNextJarEntry()) != null) {

            }
        } catch (IOException e) {
            Log.error(TAG, "Error reading JAR file.");
        }
        return result.toArray(new UniversalFile[0]);
    }
}
