/* Copyright (c) 2002-2011 by XMLVM.org
 *
 * Project Info:  http://www.xmlvm.org
 *
 * This program is free software; you can redistribute it and/or modify it
 * under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 *
 * This library is distributed in the hope that it will be useful, but
 * WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY
 * or FITNESS FOR A PARTICULAR PURPOSE. See the GNU Lesser General Public
 * License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public
 * License along with this library; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301,
 * USA.
 */

package org.xmlvm.util.universalfile;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;

import org.xmlvm.Log;
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
        return readFileAsBytes(file);
    }

    @Override
    public String getFileAsString() {
        return readFileAsString(file);
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

    /**
     * Read the content of a file as bytes.
     * 
     * @param file
     *            the file to read
     * @return The content of the file.
     */
    public static byte[] readFileAsBytes(File file) {
        try {
            return FileUtil.readBytesFromStream(new FileInputStream(file));
        } catch (FileNotFoundException e) {
            Log.error("Could not read file: " + file.getAbsolutePath());
            return new byte[0];
        }
    }

    /**
     * Read the content of a file as String.
     * 
     * @param file
     *            the file to read.
     */
    public static String readFileAsString(File file) {
        try {
            return FileUtil.readStringFromStream(new FileInputStream(file));
        } catch (FileNotFoundException e) {
            Log.error("Could not read file: " + file.getAbsolutePath());
            return "";
        }
    }
}
