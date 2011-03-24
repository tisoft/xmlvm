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

package org.xmlvm.proc;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;

import org.xmlvm.proc.out.OutputFile;

/**
 * An instance of this class holds all resources that are produced during a
 * compilation process.
 */
public class CompilationBundle implements BundlePhase1, BundlePhase2 {
    private List<OutputFile>    outputFiles    = new ArrayList<OutputFile>();
    private List<XmlvmResource> xmlvmResources = new ArrayList<XmlvmResource>();


    @Override
    public synchronized void addResources(Collection<XmlvmResource> resources) {
        xmlvmResources.addAll(resources);
    }

    @Override
    public synchronized void addResource(XmlvmResource resource) {
        xmlvmResources.add(resource);
    }

    @Override
    public Collection<XmlvmResource> getResources() {
        return Collections.unmodifiableCollection(new ArrayList<XmlvmResource>(xmlvmResources));
    }

    @Override
    public boolean containsResource(String resourceName) {
        throw new RuntimeException("Not implemented");
    }

    @Override
    public synchronized void addOutputFile(OutputFile file) {
        outputFiles.add(file);
    }

    @Override
    public Collection<OutputFile> getOutputFiles() {
        return Collections.unmodifiableCollection(new ArrayList<OutputFile>(outputFiles));
    }

    @Override
    public synchronized void removeOutputFile(OutputFile file) {
        outputFiles.remove(file);
    }

    @Override
    public synchronized void addOutputFiles(Collection<OutputFile> files) {
        outputFiles.addAll(files);
    }

    @Override
    public void removeAllOutputFiles() {
        outputFiles.clear();
    }
}
