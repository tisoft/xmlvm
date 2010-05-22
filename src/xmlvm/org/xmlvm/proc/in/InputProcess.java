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

import java.util.ArrayList;
import java.util.List;

import org.xmlvm.Log;
import org.xmlvm.main.Arguments;
import org.xmlvm.proc.XmlvmProcessImpl;
import org.xmlvm.proc.in.file.ClassFile;
import org.xmlvm.proc.in.file.ExeFile;
import org.xmlvm.proc.in.file.XFile;
import org.xmlvm.proc.in.file.XmlvmFile;
import org.xmlvm.proc.out.OutputFile;

/**
 * An input process is created of every input file or resource.
 * 
 * @param <T>
 *            the concrete type of the file that this process is reading
 */
public abstract class InputProcess<T extends XFile> extends XmlvmProcessImpl<XmlvmProcessImpl<?>> {

    private boolean isActive = true;

    public static class EmptyInputProcess extends InputProcess<ClassFile> {
        /**
         * The signature of this input process. If a target requires this string
         * as input, means that actually no input is required
         */
        public final static String EMPTY_INPUT_IN_ARGUMENT = "<<EMPTY_INPUT>>";

        public EmptyInputProcess() {
            super(null, null);
        }
    }

    /**
     * An implementation of {@link InputProcess} that reads class files.
     */
    public static class ClassInputProcess extends InputProcess<ClassFile> {
        public ClassInputProcess(Arguments arguments, ClassFile input) {
            super(arguments, input);
        }
    }

    /**
     * An implementation of {@link InputProcess} that reads exe files.
     */
    public static class ExeInputProcess extends InputProcess<ExeFile> {
        public ExeInputProcess(Arguments arguments, ExeFile input) {
            super(arguments, input);
        }
    }

    /**
     * An implementation of {@link InputProcess} that reads XMLVM files.
     */
    public static class XmlvmInputProcess extends InputProcess<XmlvmFile> {
        public XmlvmInputProcess(Arguments arguments, XmlvmFile input) {
            super(arguments, input);
        }
    }

    protected T input;

    public InputProcess(Arguments arguments, T input) {
        super(arguments);
        this.input = input;
        Log.debug("Instantiated: " + this.getClass().getName() + " for \"" + input + "\"");
    }

    /**
     * Returns the input file of this process.
     */
    public T getInputFile() {
        return input;
    }

    @Override
    public boolean isActive() {
        return isActive;
    }

    @Override
    public boolean process() {
        isActive = false;
        return true;
    }

    /**
     * If the input file is a file, this method returns a list with one element
     * containing an OutputFile that contains the contents of the input XFile.
     */
    @Override
    public List<OutputFile> getOutputFiles() {
        if (!input.getFile().exists() || !input.getFile().isFile()) {
            Log.warn("InputProcess.getOutputFiles(): Input File does not exist or is not a file.");
            return null;
        }
        byte[] fileContents = input.getFile().getFileAsBytes();
        OutputFile outputFile = new OutputFile();
        outputFile.setData(fileContents);
        outputFile.setLocation(arguments.option_out());
        outputFile.setFileName(input.getFile().getName());
        List<OutputFile> result = new ArrayList<OutputFile>();
        result.add(outputFile);
        return result;
    }
}
