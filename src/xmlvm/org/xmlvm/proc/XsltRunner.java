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

import java.io.InputStream;
import java.io.StringWriter;
import java.util.HashMap;
import java.util.Map;

import javax.xml.transform.Result;
import javax.xml.transform.Source;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerConfigurationException;
import javax.xml.transform.TransformerException;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.stream.StreamResult;
import javax.xml.transform.stream.StreamSource;

import net.sf.saxon.Controller;
import net.sf.saxon.jdom.DocumentWrapper;

import org.jdom.Document;
import org.xmlvm.Log;
import org.xmlvm.proc.out.OutputFile;

/**
 * Utility class for running XSL transformations.
 */
public class XsltRunner {
    private static final String             TAG          = XsltRunner.class.getSimpleName();
    private static Map<String, Transformer> transformers = new HashMap<String, Transformer>();


    private XsltRunner() {
        // Utility class.
    }

    /**
     * Runs an XSLT file on the given JDOM document.
     * 
     * @param xsltFileName
     *            The name of the file that contains the XSLT definition.
     * @param doc
     *            The JDOM document the XSL transformation should be applied to.
     * @return The output file with the result of the transformation.
     */
    public static OutputFile runXSLT(String xsltFileName, Document doc) {
        return runXSLT(xsltFileName, doc, null);
    }

    /**
     * Runs an XSLT file on the given JDOM document.
     * 
     * @param xsltFileName
     *            The name of the file that contains the XSLT definition.
     * @param doc
     *            The JDOM document the XSL transformation should be applied to.
     *            The first index refers to the i-th parameter, the index will
     *            be 0 for the parameter name and 1 for the parameter value. See
     *            {@link Transformer#setParameter(String, Object)}
     * @param xsltParams
     *            Parameters that should be applied to the transformation.
     * @return The output file with the result of the transformation.
     */
    public static OutputFile runXSLT(String xsltFileName, Document doc, String[][] xsltParams) {
        StringWriter writer = new StringWriter();
        try {
            Transformer transformer = getTransformer(xsltFileName);
            transformer.reset();
            if (xsltParams != null) {
                for (int i = 0; i < xsltParams.length; i++)
                    transformer.setParameter(xsltParams[i][0], xsltParams[i][1]);
            }
            DocumentWrapper docw = new DocumentWrapper(doc, "",
                    ((Controller) transformer).getConfiguration());
            Result result = new StreamResult(writer);
            transformer.transform(docw, result);

            return new OutputFile(writer.toString());
        } catch (TransformerException e) {
            Log.error(TAG, e.getMessage());
        }
        return null;
    }

    /**
     * Returns a transformer for the given XSLT file. If one already exists, it
     * will be returned and no new one will be created.
     * 
     * @param xsltFileName
     *            the name of the XSLT file to use
     * @return The transformer that uses the given XSLT file or null, if none
     *         could be created.
     */
    private static Transformer getTransformer(String xsltFileName) {
        String key = xsltFileName + "-" + Thread.currentThread().getId();
        if (transformers.containsKey(key)) {
            return transformers.get(key);
        }
        InputStream xsltFile = OutputFile.class.getResourceAsStream("/" + xsltFileName);
        if (xsltFile == null) {
            Log.error(TAG, "Error could not find: " + xsltFileName);
            return null;
        }
        try {
            Source xsltSource = new StreamSource(xsltFile);
            TransformerFactory transFactory = TransformerFactory.newInstance();
            Transformer transformer = transFactory.newTransformer(xsltSource);
            transformers.put(key, transformer);
            return transformer;
        } catch (TransformerConfigurationException e) {
            Log.error(TAG,
                    "Could not create transformer for " + xsltFileName + ": " + e.getMessage());
        }
        return null;
    }
}
