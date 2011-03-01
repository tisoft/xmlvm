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
package org.xmlvm.iphone;

import java.util.HashMap;
import java.util.Map;

import org.xml.sax.Attributes;
import org.xml.sax.helpers.DefaultHandler;
import org.xmlvm.XMLVMIgnore;
import org.xmlvm.XMLVMSkeletonOnly;

@XMLVMSkeletonOnly
public class NSXMLParserDelegate extends NSObject {

    private NSXMLParser parser;
    @XMLVMIgnore
    DefaultHandler      handler = new DefaultHandler() {

                                    @Override
                                    @XMLVMIgnore
                                    public void startPrefixMapping(String prefix, String uri) {
                                        if (parser.shouldReportNamespacePrefixes()) {
                                            didStartMappingPrefix(parser, prefix, uri);
                                        }
                                    }

                                    @Override
                                    @XMLVMIgnore
                                    public void endPrefixMapping(String prefix) {
                                        if (parser.shouldReportNamespacePrefixes()) {
                                            didEndMappingPrefix(parser, prefix);
                                        }
                                    }

                                    @Override
                                    @XMLVMIgnore
                                    public void startElement(String uri, String localName,
                                            String qName, Attributes attributes) {
                                        if ("".equals(localName)) {
                                            localName = qName;
                                        }
                                        didStartElement(parser, localName, uri, qName,
                                                convertAttributes(attributes));
                                    }

                                    @Override
                                    @XMLVMIgnore
                                    public void endElement(String uri, String localName,
                                            String qName) {
                                        if ("".equals(localName)) {
                                            localName = qName;
                                        }
                                        didEndElement(parser, localName, uri, qName);
                                    }

                                    @Override
                                    @XMLVMIgnore
                                    public void characters(char[] ch, int start, int length) {
                                        String characters = String.copyValueOf(ch, start, length);
                                        foundCharacters(parser, characters);
                                    }

                                    private Map<String, String> convertAttributes(
                                            Attributes attributes) {
                                        Map<String, String> attr = new HashMap<String, String>();
                                        for (int i = 0; i < attributes.getLength(); i++) {
                                            attr
                                                    .put(attributes.getQName(i), attributes
                                                            .getValue(i));
                                        }
                                        return attr;
                                    }
                                };


    public void didStartMappingPrefix(NSXMLParser parser, String prefix, String namespaceURI) {
    }

    public void didEndMappingPrefix(NSXMLParser parser, String prefix) {
    }

    public void didStartElement(NSXMLParser parser, String elementName, String namespaceURI,
            String qualifiedName, Map<String, String> attributes) {
    }

    public void didEndElement(NSXMLParser parser, String elementName, String namespaceURI,
            String qualifiedName) {
    }

    public void foundCharacters(NSXMLParser parser, String characters) {
    }

    public void foundCDATA(NSXMLParser parser, NSData CDATABlock) {
        // TODO : call me from DefaultHandler
    }

    void setParser(NSXMLParser parser) {
        this.parser = parser;
    }
}
