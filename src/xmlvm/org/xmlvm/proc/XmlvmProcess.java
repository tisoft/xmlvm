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

package org.xmlvm.proc;

import java.util.List;

import org.xmlvm.proc.out.OutputFile;

/**
 * The common interface for all processes.
 * 
 * @param <T>
 *            the common interface that pre-processed have to implement and that
 *            is used by this process to access the data produced by the
 *            pre-processes.
 */
public interface XmlvmProcess<T> {
    /**
     * This is the method every process needs to override and where it does its
     * work.
     * 
     * @return Whether the processing was successful.
     */
    public boolean process();

    /**
     * Processors can override it to do post-processing.
     */
    public boolean postProcess();

    /**
     * Returns a list of supported input classes.
     */
    public List<Class<XmlvmProcess<?>>> getSupportedInputs();

    /**
     * Creates an instance of each XvmlmProcess that is supported as input and
     * returns them in a list.
     */
    public List<XmlvmProcess<?>> createInputInstances();

    /**
     * Determines whether the output of the given XmlvmProcess can be processed
     * by this XmlvmProcess.
     * 
     * @param process
     *            The process that should be used as the input.
     * @return Whether this process can handle the given process as an input.
     */
    public boolean supportsAsInput(XmlvmProcess<?> process);

    /**
     * Adds a process as a pre-process to this process.
     */
    public void addPreprocess(XmlvmProcess<?> xmlvmProcess);

    /**
     * Adds a process to the list of processes that get executed directly after
     * this process.
     * 
     * @param xmlvmProcess
     *            A process that is executed directly after this process.
     */
    public void addPostProcess(XmlvmProcess<?> xmlvmProcess);

    /**
     * Runs all pre-processes synchronously. Will return when all pre-processes
     * have finished executing.
     */
    public List<T> preprocess();

    /**
     * Runs {@link #postProcess()} on all preprocesses that have been processed.
     */
    public boolean postProcessPreProcesses();

    /**
     * Returns whether this process is active. An active process will be
     * processed. To be active a process needs to have at least one active
     * pre-process. Exception are InputProcesses, which are active by default.
     * Once the processed is processed, the process is not active anymore.
     */
    public boolean isActive();

    /**
     * Returns whether this process has been processed.
     */
    public boolean isProcessed();

    public List<OutputFile> getOutputFiles();

    /**
     * Returns whether this process has a cached version for the specified input
     * resource.
     * 
     * @param name
     *            The name of the input resource.
     * @param lastModified
     *            The timestamp from when the input resource was change the last
     *            time.
     * @return Whether a cached output exists.
     */
    public boolean hasCachedOutput(String inputResourceName, long lastModified);

    /**
     * Returns whether processing is required. It's not, if the given resource
     * is cached somewhere down the line in a post-process.
     * 
     * @param inputResourceName
     *            The name of the input resource.
     * @param lastModified
     *            The timestamp from when the input resource was change the last
     *            time.
     * @return Whether this process needs to process the given resource.
     */
    public boolean isProcessingRequired(String inputResourceName, long lastModified);
}
