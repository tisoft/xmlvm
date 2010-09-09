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

import java.io.IOException;
import java.io.InputStream;
import java.io.StringReader;
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

import org.jdom.Document;
import org.jdom.output.XMLOutputter;
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
            StringWriter docWriter = new StringWriter();
            XMLOutputter outputter = new XMLOutputter();
            outputter.output(doc, docWriter);

            StringReader xmlvmReader = new StringReader(docWriter.toString());
            Source xmlvmSource = new StreamSource(xmlvmReader);
            Result result = new StreamResult(writer);

            getTransformer(xsltFileName, xsltParams).transform(xmlvmSource, result);

            return new OutputFile(writer.toString());
        } catch (IOException e) {
            Log.error(TAG, e.getMessage());
        } catch (TransformerException e) {
            Log.error(TAG, e.getMessage());
        }
        return null;
    }

    /**
     * Returns a transformer for the given XSLT file. If one already exists, it
     * will be returned and no new one will be created, even if the parameters
     * differ.
     * 
     * @param xsltFileName
     *            the name of the XSLT file to use
     * @param xsltParams
     *            the parameters for the XSLT transformer
     * @return The transformer that uses the given XSLT file or null, if none
     *         could be created.
     */
    private static Transformer getTransformer(String xsltFileName, String[][] xsltParams) {
        if (transformers.containsKey(xsltFileName)) {
            return transformers.get(xsltFileName);
        }
        InputStream xsltFile = OutputFile.class.getResourceAsStream("/" + xsltFileName);
        if (xsltFile == null) {
            System.out.println("Error could not find: " + xsltFileName);
            return null;
        }
        try {
            Source xsltSource = new StreamSource(xsltFile);
            TransformerFactory transFactory = TransformerFactory.newInstance();
            Transformer transformer = transFactory.newTransformer(xsltSource);
            if (xsltParams != null) {
                for (int i = 0; i < xsltParams.length; i++)
                    transformer.setParameter(xsltParams[i][0], xsltParams[i][1]);
            }
            transformers.put(xsltFileName, transformer);
            return transformer;
        } catch (TransformerConfigurationException e) {
            Log.error(TAG, e.getMessage());
        }
        return null;
    }
}
