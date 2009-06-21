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

import org.jdom.Document;
import org.jdom.output.XMLOutputter;
import org.xmlvm.proc.out.OutputFile;

import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.StringReader;
import java.io.StringWriter;

import javax.xml.transform.Result;
import javax.xml.transform.Source;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.stream.StreamResult;
import javax.xml.transform.stream.StreamSource;

/**
 * Utility class for running XSL transformations.
 */
public class XsltRunner {

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
        InputStream xsltFile = OutputFile.class.getResourceAsStream("/" + xsltFileName);
        if (xsltFile == null) {
            System.out.println("Error could not find: " + xsltFileName);
            return null;
        }
        StringWriter writer = new StringWriter();
        try {
            OutputStream xmlvm_out = new ByteArrayOutputStream();
            XMLOutputter outputter = new XMLOutputter();
            outputter.output(doc, xmlvm_out);
            xmlvm_out.close();

            StringReader xmlvmReader = new StringReader(xmlvm_out.toString());
            Source xmlvmSource = new StreamSource(xmlvmReader);
            Source xsltSource = new StreamSource(xsltFile);
            Result result = new StreamResult(writer);

            TransformerFactory transFactory = TransformerFactory.newInstance();
            Transformer trans = transFactory.newTransformer(xsltSource);
            if (xsltParams != null) {
                for (int i = 0; i < xsltParams.length; i++)
                    trans.setParameter(xsltParams[i][0], xsltParams[i][1]);
            }
            trans.transform(xmlvmSource, result);

            return new OutputFile(writer.toString());
        } catch (Exception ex) {
            ex.printStackTrace(System.err);
        }
        return null;
    }
}
