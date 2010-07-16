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

package javax.xml.parsers;

import java.io.IOException;
import java.io.InputStream;
import java.io.Reader;

import org.xml.sax.InputSource;
import org.xml.sax.SAXException;
import org.xml.sax.helpers.DefaultHandler;
import org.xmlvm.iphone.NSData;
import org.xmlvm.iphone.NSMutableData;
import org.xmlvm.iphone.NSXMLParser;

/**
 * @author arno
 * 
 */
public class SAXParserImpl extends SAXParser {

    public void parse(InputSource is, DefaultHandler dh) throws SAXException, IOException {
        NSXMLParser parser = new NSXMLParser(convertInputSource(is));
        parser.setDelegate(dh.getHandler());
        parser.parse();
    }

    public void parse(InputStream is, DefaultHandler dh) throws SAXException, IOException {
        NSXMLParser parser = new NSXMLParser(convertInputStream(is));
        parser.setDelegate(dh.getHandler());
        parser.setShouldProcessNamespaces(true);
        parser.setShouldReportNamespacePrefixes(true);
        parser.parse();
    }

    private NSData convertInputSource(InputSource is) {
        NSMutableData data = new NSMutableData();
        Reader reader = is.getCharacterStream();
        int ch;
        try {
            while ((ch = reader.read()) != -1) {
                data.appendByte(ch);
            }
        } catch (IOException e) {
            // Do nothing, just return what we've read so far
        }
        return data;
    }

    private NSData convertInputStream(InputStream is) {
        NSMutableData data = new NSMutableData();
        try {
            int available;
            while ((available = is.available()) > 0) {
                byte[] buf = new byte[available];
                is.read(buf);
                data.appendBytes(buf);
            }
        } catch (IOException e) {
            // Do nothing, just return what we've read so far
        }
        return data;
    }

}
