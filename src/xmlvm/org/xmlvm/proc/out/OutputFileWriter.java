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
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.List;

import org.xmlvm.Log;

/**
 * Writes out instances of {@link OutputFile}s.
 */
public class OutputFileWriter {

    private List<OutputFile> outputFiles;

    public OutputFileWriter(List<OutputFile> outputFiles) {
        this.outputFiles = outputFiles;
    }

    /**
     * Writes the files given in the constructor to the file system.
     * 
     * @return Whether the write process was successful.
     */
    public boolean writeFiles() {
        for (OutputFile outputFile : outputFiles) {
            if (!createOutputDirectory(outputFile))
                Log.error("Could not create directory for file: " + outputFile.getFileName());
            if (!writeFile(outputFile))
                return false;
        }
        return true;
    }

    /**
     * Perform the actual action of this OutputFile (i.e. write file to disk)
     * 
     * @return true, if no errors exist
     */
    public boolean writeFile(OutputFile file) {
        FileOutputStream out = null;
        try {
            String pathAndName = file.getFullPath();
            out = new FileOutputStream(pathAndName);
            out.write(file.getDataAsBytes());
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
     * Make sure that the directory, this file is written to, exists or is
     * created.
     * 
     * @return Whether the directory exists or could be created.
     */
    private boolean createOutputDirectory(OutputFile outputFile) {
        File location = new File(outputFile.getLocation());
        if (location.exists()) {
            if (location.isDirectory()) {
                return true;
            } else {
                Log.error("Location is not a directory: " + outputFile.getLocation());
                return false;
            }
        }
        if (!location.mkdirs()) {
            Log.error("Directory could not be created: " + outputFile.getLocation());
            return false;
        }
        return true;
    }
}
