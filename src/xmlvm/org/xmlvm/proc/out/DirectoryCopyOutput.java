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

import java.io.File;
import java.util.ArrayList;
import java.util.List;

import org.xmlvm.Log;
import org.xmlvm.util.FileUtil;

/**
 * Copies files from a source directory to the given location.
 */
public class DirectoryCopyOutput extends OutputFile {

    private String sourceDirectory;

    public DirectoryCopyOutput(String sourceDirectory, String location) {
        this.sourceDirectory = sourceDirectory;
        this.setLocation(location);
    }

    /**
     * Returns the source directory, from where the files are to be copied.
     */
    public String getSourceDirectory() {
        return sourceDirectory;
    }

    /**
     * Returns a list of files that will be copied.
     */
    @Override
    public File[] getAffectedSourceFiles() {
        File sourceFile = new File(sourceDirectory);

        if (!sourceFile.exists()) {
            Log.error("copyDirectory failed: The following directory does not exist: "
                    + sourceDirectory);
            return null;
        }
        if (!sourceFile.isDirectory()) {
            Log.error("copyDirectort failed: '" + sourceDirectory + "' is not a directory.");
            return null;
        }

        // Get the files and ignore directories. This is not recursive.
        List<File> resultList = new ArrayList<File>();
        File[] files = sourceFile.listFiles();
        for (File file : files) {
            if (!file.isDirectory()) {
                resultList.add(file);
            }
        }
        return resultList.toArray(new File[0]);
    }

    /**
     * Perform the actual action of this DirectoryCopyOutput (i.e. write files
     * to disk)
     * 
     * @return true, if no errors exist
     */
    @Override
    public boolean write() {
        return FileUtil.copyFiles(getAffectedSourceFiles(), getLocation());
    }
}
