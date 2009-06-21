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

package org.xmlvm.proc.in;

import java.io.File;
import java.util.ArrayList;
import java.util.List;

import org.xmlvm.Log;
import org.xmlvm.main.Arguments;
import org.xmlvm.proc.in.file.ClassFile;
import org.xmlvm.proc.in.file.Directory;
import org.xmlvm.proc.in.file.ExeFile;
import org.xmlvm.proc.in.file.XmlvmFile;

/**
 * Used for creating input processes.
 */
public class InputProcessFactory {
    /**
     * The arguments that should be given to the created processes.
     */
    private Arguments arguments;

    public InputProcessFactory(Arguments arguments) {
        this.arguments = arguments;
    }

    /**
     * Creates a list of {@link InputProcess} instances. One for each user
     * provided input.
     * 
     * @param inputElements
     *            A list of inputs specified by the user.
     * @return A list of InputProcesses.
     */
    public List<InputProcess<?>> createInputProcesses(List<String> inputElements) {
        List<InputProcess<?>> processes = new ArrayList<InputProcess<?>>();
        for (String inputElement : inputElements) {
            // If this input element is a directory, we add all the children
            // elements that are applicable.
            if (Directory.isDirectoryInput(inputElement)) {
                processes.addAll(createInputProcessesForDirectory(new Directory(inputElement)));
            } else {
                processes.add(createInputProcess(inputElement));
            }
        }
        return processes;
    }

    /**
     * This method decides which concrete subclass of InputProcesses should be
     * instantiated, depending on the input given.
     * 
     * @param input
     *            This could be a directory path, a directory path with wildcard
     *            or a path to a single file.
     * @return A {@link InputProcess} that is able to process the given input or
     *         null, if no process was found for the given input.
     */
    protected InputProcess<?> createInputProcess(String input) {
        // CLASS files.
        if (ClassFile.isClassInput(input)) {
            return new ClassInputProcess(arguments, new ClassFile(input));
            // EXE files.
        } else if (ExeFile.isExeInput(input)) {
            return new ExeInputProcess(arguments, new ExeFile(input));
            // XMLVM files.
        } else if (XmlvmFile.isXmlvmInput(input)) {
            return new XmlvmInputProcess(arguments, new XmlvmFile(input));
        }
        Log.warn("Unable to create InputProcesses for input: " + input);
        return null;
    }

    /**
     * This method decides which concrete subclass of InputProcesses should be
     * instantiated, depending on the given input {@link File}.
     * 
     * @param input
     *            The file to be processed.
     * @return A {@link InputProcess} that is able to process the given input or
     *         null, if no process was found for the given input.
     */
    protected InputProcess<?> createInputProcess(File input) {
        return createInputProcess(input.getAbsolutePath());
    }

    /**
     * Create InputProcesses for all applicable elements for this directory.
     * 
     * @param input
     *            The directory to proces.
     * @return All InputProcesses for the applicabe elements.
     */
    protected List<InputProcess<?>> createInputProcessesForDirectory(Directory input) {
        List<InputProcess<?>> result = new ArrayList<InputProcess<?>>();
        List<File> files = input.getAllMatchingFiles();
        for (File file : files) {
            // We don't want to process ourself.
            if (!input.equals(file)) {
                // Add process to the processor.
                result.add(createInputProcess(file));
            }
        }
        return result;
    }
}
