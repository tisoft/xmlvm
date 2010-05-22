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
import org.xmlvm.proc.in.InputProcess.ClassInputProcess;
import org.xmlvm.proc.in.InputProcess.EmptyInputProcess;
import org.xmlvm.proc.in.InputProcess.ExeInputProcess;
import org.xmlvm.proc.in.InputProcess.XmlvmInputProcess;
import org.xmlvm.proc.in.file.ClassFile;
import org.xmlvm.proc.in.file.Directory;
import org.xmlvm.proc.in.file.ExeFile;
import org.xmlvm.proc.in.file.XmlvmFile;
import org.xmlvm.util.universalfile.UniversalFile;
import org.xmlvm.util.universalfile.UniversalFileCreator;

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

        // If there is no input specified, we create an empty input process.
        // This is used for processes that just create files, but don't take
        // input. One such example is creating empty project skeletons.
        if (inputElements.isEmpty()) {
            processes.add(new EmptyInputProcess());
            return processes;
        }

        for (String inputElement : inputElements) {
            // If this input element is a directory, we add all the children
            // elements that are applicable.
            if (Directory.isDirectoryInput(inputElement)) {
                processes.addAll(createInputProcessesForDirectory(new Directory(inputElement)));
            } else if (ZipArchiveExtractor.isZipArchive(inputElement)) {
                for (UniversalFile file : ZipArchiveExtractor.createFilesForArchive(inputElement)) {
                    processes.add(createInputProcess(file));
                }
            } else {
                processes.add(createInputProcess(UniversalFileCreator.createFile(new File(
                        inputElement))));
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
    protected InputProcess<?> createInputProcess(UniversalFile input) {
        if (ClassFile.isClassInput(input)) {
            // CLASS files.
            return new ClassInputProcess(arguments, new ClassFile(input));
        } else if (ExeFile.isExeInput(input)) {
            // EXE files.
            return new ExeInputProcess(arguments, new ExeFile(input));
        } else if (XmlvmFile.isXmlvmInput(input)) {
            // XMLVM files.
            return new XmlvmInputProcess(arguments, new XmlvmFile(input));
        }
        Log.warn("Unable to create InputProcesses for input: " + input);
        return null;
    }

    /**
     * Create InputProcesses for all applicable elements for this directory.
     * 
     * @param input
     *            The directory to process.
     * @return All InputProcesses for the applicable elements.
     */
    protected List<InputProcess<?>> createInputProcessesForDirectory(Directory input) {
        List<InputProcess<?>> result = new ArrayList<InputProcess<?>>();
        List<File> files = input.getAllMatchingFiles();
        for (File file : files) {
            // We don't want to process ourself.
            if (!input.equals(file)) {
                // Add process to the processor.
                result.add(createInputProcess(UniversalFileCreator.createFile(file)));
            }
        }
        return result;
    }
}
