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

package org.xmlvm.iphone;

import java.io.IOException;

import javax.xml.parsers.ParserConfigurationException;
import javax.xml.parsers.SAXParser;
import javax.xml.parsers.SAXParserFactory;

import org.xml.sax.SAXException;

/**
 * @author arno
 * 
 */
public class NSXMLParser extends NSObject {

    private NSData              data;
    private NSXMLParserDelegate delegate;
    private SAXParserFactory    saxParserFactory;
    private SAXParser           saxParser;
    private boolean             shouldReportNamespacePrefixes;

    public NSXMLParser(NSData data) {
        this.data = data;
        init();
    }

    private void init() {
        saxParserFactory = SAXParserFactory.newInstance();
        shouldReportNamespacePrefixes = false;
    }

    public void setDelegate(NSXMLParserDelegate delegate) {
        this.delegate = delegate;
        delegate.setParser(this);
    }

    public void setShouldProcessNamespaces(boolean flag) {
        saxParserFactory.setNamespaceAware(flag);
    }

    public boolean shouldProcessNamespaces() {
        return saxParserFactory.isNamespaceAware();
    }

    public void setShouldReportNamespacePrefixes(boolean flag) {
        this.shouldReportNamespacePrefixes = flag;
    }

    public boolean shouldReportNamespacePrefixes() {
        return this.shouldReportNamespacePrefixes;
    }

    public boolean parse() {
        if (data == null) {
            return false;
        }

        try {
            saxParser = saxParserFactory.newSAXParser();
            saxParser.parse(data.getInputStream(), delegate);
        } catch (ParserConfigurationException e) {
            return false;
        } catch (SAXException e) {
            return false;
        } catch (IOException e) {
            return false;
        }
        return true;
    }
}
