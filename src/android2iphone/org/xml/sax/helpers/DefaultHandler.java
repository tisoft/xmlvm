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

package org.xml.sax.helpers;

import java.util.Map;

import org.xml.sax.Attributes;
import org.xmlvm.iphone.NSData;
import org.xmlvm.iphone.NSXMLParser;
import org.xmlvm.iphone.NSXMLParserDelegate;

/**
 * @author arno
 * 
 */
public class DefaultHandler {

    NSXMLParserDelegate handler = new NSXMLParserDelegate() {

                                    @Override
                                    public void didStartMappingPrefix(NSXMLParser parser,
                                            String prefix, String namespaceURI) {
                                        if (parser.shouldReportNamespacePrefixes()) {
                                            startPrefixMapping(prefix, namespaceURI);
                                        }
                                    }

                                    @Override
                                    public void didEndMappingPrefix(NSXMLParser parser,
                                            String prefix) {
                                        if (parser.shouldReportNamespacePrefixes()) {
                                            endPrefixMapping(prefix);
                                        }
                                    }

                                    @Override
                                    public void didStartElement(NSXMLParser parser,
                                            String elementName, String namespaceURI,
                                            String qualifiedName, Map<String, String> attributes) {
                                        startElement(namespaceURI, elementName, qualifiedName,
                                                convertAttributes(attributes));
                                    }

                                    @Override
                                    public void didEndElement(NSXMLParser parser,
                                            String elementName, String namespaceURI,
                                            String qualifiedName) {
                                        endElement(namespaceURI, elementName, qualifiedName);
                                    }

                                    @Override
                                    public void foundCharacters(NSXMLParser parser,
                                            String characters) {
                                        characters(characters.toCharArray(), 0, characters.length());
                                    }

                                    @Override
                                    public void foundCDATA(NSXMLParser parser, NSData CDATABlock) {
                                        // TODO : call me from DefaultHandler
                                    }

                                    private Attributes convertAttributes(
                                            Map<String, String> attributes) {
                                        AttributesImpl attr = new AttributesImpl();
                                        for (String key : attributes.keySet()) {
                                            // TODO populate parameters
                                            String uri = null;
                                            String localName = null;
                                            String type = null;
                                            attr.addAttribute(uri, localName, key, type, attributes
                                                    .get(key));
                                        }
                                        return attr;
                                    }

                                };

    public NSXMLParserDelegate getHandler() {
        return handler;
    }

    public void startPrefixMapping(String prefix, String uri) {
    }

    public void endPrefixMapping(String prefix) {
    }

    public void startElement(String uri, String localName, String qName, Attributes attributes) {
    }

    public void endElement(String uri, String localName, String qName) {
    }

    public void characters(char[] ch, int start, int length) {
    }

}
