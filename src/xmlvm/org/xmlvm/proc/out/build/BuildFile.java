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

package org.xmlvm.proc.out.build;

import java.io.BufferedReader;
import java.io.StringWriter;
import java.util.ArrayList;
import java.util.List;

import org.xmlvm.main.Arguments;
import org.xmlvm.proc.out.OutputFile;
import org.xmlvm.util.FileUtil;

/**
 * Create a file responsible to "build" the selected target (i.e. a Makefile or
 * a Xcode file)
 * 
 * @author teras
 */
public abstract class BuildFile {

    /**
     * Read data either from inside a JAR or from a file
     * 
     * @param jarResource
     *            The filename inside the JAR file.
     * @param fileResource
     *            The filename in the local directory.
     * @return The data read either from JAR or from a local file.
     */
    protected String readData(String jarResource, String fileResource) {
        StringWriter out = new StringWriter();
        BufferedReader in = FileUtil.findReaderResource(jarResource, fileResource);
        if (in == null)
            return "Can not read data from resources " + jarResource + " / " + fileResource;
        if (!FileUtil.copyReaders(in, out))
            return "Can not copy data from resources " + jarResource + " / " + fileResource;
        return out.toString();
    }

    /**
     * Get a list of filenames from a OutputFile list, which are in accordance
     * with some criteria.
     * 
     * @param fileList
     *            The list of OutputFile.
     * @param filter
     *            Filename criteria.
     * @return List of filenames with valid files.
     */
    protected static List<String> getFileNames(List<OutputFile> fileList, PathFileFilter filter, String basePath) {
        ArrayList<String> result = new ArrayList<String>();

        for (OutputFile outfile : fileList) {
            OutputFile[] files = outfile.getAffectedSourceFiles(filter);
            for (OutputFile copyFile : files) {
                result.add(copyFile.getRelativePath(basePath));
            }
        }
        return result;
    }

    /**
     * Create build files for this target.
     * 
     * @param result
     *            The created build-file.
     * @param arguments
     *            XMLVM command line arguments.
     * @return The produced build-file.
     */
    public abstract String composeBuildFiles(List<OutputFile> result, Arguments arguments);
}
