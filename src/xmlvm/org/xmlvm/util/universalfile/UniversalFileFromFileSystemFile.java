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

import org.xmlvm.util.FileUtil;

/**
 * A {@link UniversalFile} that is based on a real file on the file system.
 */
public class UniversalFileFromFileSystemFile extends UniversalFile {

    private File file;


    UniversalFileFromFileSystemFile(File file) {
        this.file = file;
    }

    @Override
    public String getAbsolutePath() {
        return file.getAbsolutePath();
    }

    @Override
    public byte[] getFileAsBytes() {
        return FileUtil.readFileAsBytes(file);
    }

    @Override
    public String getFileAsString() {
        return FileUtil.readFileAsString(file);
    }

    @Override
    public boolean isDirectory() {
        return false;
    }

    @Override
    public boolean isFile() {
        return true;
    }

    @Override
    public boolean exists() {
        return file.exists();
    }

    @Override
    public UniversalFile[] listFiles() {
        return new UniversalFile[0];
    }

    @Override
    public long getLastModified() {
        return file.lastModified();
    }
}
