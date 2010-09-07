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
	 * @return whether all files were written successfully
	 */
	public boolean writeFiles() {
		for (OutputFile outputFile : outputFiles) {
			if (!createOutputDirectory(outputFile))
				Log.error("Could not create directory for file: "
						+ outputFile.getFileName());
			outputFile.write();
		}
		return true;
	}

	/**
	 * Make sure that the directory, this file is written to, exists or is
	 * created.
	 * 
	 * @return whether the directory exists or could be created
	 */
	private boolean createOutputDirectory(OutputFile outputFile) {
		File location = new File(outputFile.getLocation());
		if (location.exists()) {
			if (location.isDirectory()) {
				return true;
			} else {
				Log.error("Location is not a directory: "
						+ outputFile.getLocation());
				return false;
			}
		}
		if (!location.mkdirs()) {
			Log.error("Directory could not be created: "
					+ outputFile.getLocation());
			return false;
		}
		return true;
	}
}
