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

import org.xmlvm.Log;
import org.xmlvm.util.FileUtil;
import org.xmlvm.util.JarUtil;

import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.util.List;

/**
 * Writes out instances of {@link OutputFile}.
 */
public class OutputFileWriter {
    private List<OutputFile> outputFiles;

    public OutputFileWriter(List<OutputFile> outputFiles) {
        this.outputFiles = outputFiles;
    }

    public boolean write() {
        boolean success = true;
        for (OutputFile outputFile : outputFiles) {
            String pathAndName = outputFile.getLocation();
            if (!outputFile.getLocation().endsWith(File.separator)) {
                pathAndName += File.separator;
            }
            pathAndName += outputFile.getFileName();

            if (outputFile instanceof FromJarOutputFile) {
                FromJarOutputFile fromJarFile = ((FromJarOutputFile) outputFile);
                JarUtil.copy(fromJarFile.getSourceJar(), pathAndName);
            } else if (outputFile instanceof DirectoryCopyOutput) {
                DirectoryCopyOutput directoryCopy = (DirectoryCopyOutput) outputFile;
                FileUtil.copyFiles(directoryCopy.getAffectedSourceFiles(), directoryCopy
                        .getLocation());

            } else {
                try {
                    Log.debug("Writing file: " + pathAndName);
                    FileWriter writer = new FileWriter(pathAndName);
                    writer.write(outputFile.getData());
                    writer.close();
                } catch (IOException e) {
                    success = false;
                    Log.error("Could not write file.\n" + e.getMessage());
                }
            }
        }
        return success;
    }
}
