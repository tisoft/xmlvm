/*
 * Copyright (c) 2004-2010 XMLVM --- An XML-based Programming Language
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

import java.io.File;
import java.util.ArrayList;
import java.util.List;

/**
 * A {@link UniversalFile} that is based on a file system directory.
 */
public class UniversalFileFromFileSystemDirectory extends UniversalFile {

    private File directory;


    UniversalFileFromFileSystemDirectory(File directory) {
        this.directory = directory;
    }

    @Override
    public String getAbsolutePath() {
        return directory.getAbsolutePath();
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
    public boolean isFile() {
        return false;
    }

    @Override
    public boolean exists() {
        return directory.exists();
    }

    @Override
    public UniversalFile[] listFiles() {
        List<UniversalFile> result = new ArrayList<UniversalFile>();
        File files[] = directory.listFiles();
        for (File file : files) {
            if (file.isDirectory()) {
                result.add(new UniversalFileFromFileSystemDirectory(file));
            } else {
                result.add(new UniversalFileFromFileSystemFile(file));
            }
        }
        return result.toArray(new UniversalFile[0]);
    }

    @Override
    public long getLastModified() {
        return directory.lastModified();
    }
}
