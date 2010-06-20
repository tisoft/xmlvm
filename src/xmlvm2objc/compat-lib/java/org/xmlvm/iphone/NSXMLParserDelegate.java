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

import java.util.HashMap;
import java.util.Map;

import org.xml.sax.Attributes;
import org.xml.sax.helpers.DefaultHandler;

/**
 * @author arno
 * 
 */
public class NSXMLParserDelegate extends NSObject {

	private NSXMLParser parser;
	DefaultHandler handler = new DefaultHandler() {

		@Override
		public void startPrefixMapping(String prefix, String uri) {
			if (parser.shouldReportNamespacePrefixes()) {
				didStartMappingPrefix(parser, prefix, uri);
			}
		}

		@Override
		public void endPrefixMapping(String prefix) {
			if (parser.shouldReportNamespacePrefixes()) {
				didEndMappingPrefix(parser, prefix);
			}
		}

		@Override
		public void startElement(String uri, String localName, String qName,
				Attributes attributes) {
			didStartElement(parser, localName, uri, qName,
					convertAttributes(attributes));
		}

		@Override
		public void endElement(String uri, String localName, String qName) {
			didEndElement(parser, localName, uri, qName);
		}

		@Override
		public void characters(char[] ch, int start, int length) {
			String characters = String.copyValueOf(ch, start, length);
			foundCharacters(parser, characters);
		}

		private Map<String, String> convertAttributes(Attributes attributes) {
			Map<String, String> attr = new HashMap<String, String>();
			for (int i = 0; i < attributes.getLength(); i++) {
				attr.put(attributes.getQName(i), attributes.getValue(i));
			}
			return attr;
		}
	};

	public void didStartMappingPrefix(NSXMLParser parser, String prefix,
			String namespaceURI) {
	}

	public void didEndMappingPrefix(NSXMLParser parser, String prefix) {
	}

	public void didStartElement(NSXMLParser parser, String elementName,
			String namespaceURI, String qualifiedName,
			Map<String, String> attributes) {
	}

	public void didEndElement(NSXMLParser parser, String elementName,
			String namespaceURI, String qualifiedName) {
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
