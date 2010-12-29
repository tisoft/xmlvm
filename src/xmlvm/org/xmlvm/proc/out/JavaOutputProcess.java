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

package org.xmlvm.proc.out;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Vector;

import org.xmlvm.Log;
import org.xmlvm.main.Arguments;
import org.xmlvm.proc.XmlvmProcessImpl;
import org.xmlvm.proc.XmlvmResource;
import org.xmlvm.proc.XmlvmResourceProvider;
import org.xmlvm.proc.XsltRunner;

/**
 * This process takes XMLVM and turns it into Java source code.
 */
public class JavaOutputProcess extends XmlvmProcessImpl<XmlvmResourceProvider> {

    private class JavaTranslationThread extends Thread {
        private final XmlvmResource[] resources;
        private final int             start;
        private final int             end;


        public JavaTranslationThread(XmlvmResource[] resources, int start, int end) {
            this.resources = resources;
            this.start = start;
            this.end = end;
        }

        @Override
        public void run() {
            for (int i = start; i <= end; ++i) {
                XmlvmResource resource = resources[i];
                if (resource == null) {
                    continue;
                }
                String resourceName = resource.getName();
                Log.debug("JavaOutputProcess: Processing " + resourceName);
                OutputFile file = generateJava(resource);
                file.setLocation(arguments.option_out());
                String packageName = resource.getPackageName().replace('.', '/');

                String fileName = resourceName + JAVA_EXTENSION;
                if (!packageName.isEmpty()) {
                    fileName = packageName + '/' + fileName;
                }
                file.setFileName(fileName);
                result.add(file);
            }
        }
    }


    private static final String JAVA_EXTENSION = ".java";
    private static final String TAG            = JavaOutputProcess.class.getSimpleName();
    private Vector<OutputFile>  result         = new Vector<OutputFile>();


    public JavaOutputProcess(Arguments arguments) {
        super(arguments);
        addSupportedInput(RecursiveResourceLoadingProcess.class);
    }

    @Override
    public List<OutputFile> getOutputFiles() {
        return result;
    }

    public boolean process() {
        Map<String, XmlvmResource> mappedResources = new HashMap<String, XmlvmResource>();
        List<XmlvmResourceProvider> preprocesses = preprocess();
        for (XmlvmResourceProvider process : preprocesses) {
            List<XmlvmResource> xmlvmResources = process.getXmlvmResources();
            for (XmlvmResource resource : xmlvmResources) {
                if (resource != null) {
                    mappedResources.put(resource.getFullName(), resource);
                }
            }
        }
        long startTime = System.currentTimeMillis();

        XmlvmResource[] resources = mappedResources.values().toArray(new XmlvmResource[0]);
        int threadCount = Runtime.getRuntime().availableProcessors();
        int itemsPerThread = (int) Math.ceil(resources.length / (float) threadCount);
        Log.debug(TAG, "Threads: " + threadCount);
        Log.debug(TAG, "Items per thread: " + itemsPerThread);
        JavaTranslationThread[] threads = new JavaTranslationThread[threadCount];

        // Divide work and start the threads.
        for (int i = 0; i < threadCount; ++i) {
            int start = i * itemsPerThread;
            int end = Math.min(start + itemsPerThread - 1, resources.length - 1);
            threads[i] = new JavaTranslationThread(resources, start, end);
            threads[i].start();
        }

        // Wait for threads to finish.
        for (int i = 0; i < threadCount; ++i) {
            try {
                threads[i].join();
            } catch (InterruptedException e) {
                e.printStackTrace();
                return false;
            }
        }

        long endTime = System.currentTimeMillis();
        Log.debug(TAG, "Java Processing took: " + (endTime - startTime) + " ms.");
        return true;
    }

    protected OutputFile generateJava(XmlvmResource xmlvm) {
        return XsltRunner.runXSLT("xmlvm2java.xsl", xmlvm.getXmlvmDocument());
    }
}
