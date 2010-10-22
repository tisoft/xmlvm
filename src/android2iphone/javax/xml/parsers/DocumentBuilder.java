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

import java.io.InputStream;
import java.io.StringReader;
import java.util.Stack;

import org.w3c.dom.Document;
import org.w3c.dom.Node;
import org.xml.sax.Attributes;
import org.xml.sax.InputSource;
import org.xml.sax.SAXException;
import org.xml.sax.helpers.DefaultHandler;

public class DocumentBuilder {

    private boolean namespaceAware;

    public DocumentBuilder(boolean namespaceAware) {
        this.namespaceAware = namespaceAware;
    }

    public Document parse(InputStream inputStream) {
        SaxHandler h = null;
        try {
            SAXParser p = SAXParserFactory.newInstance().newSAXParser();
            h = new SaxHandler();
            p.parse(inputStream, h);
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
        return h == null ? null : new Document(h.getTopNode().getChildNodes().item(0));
    }

    class SaxHandler extends DefaultHandler {

        private Stack<Node> nodeStack = new Stack<Node>();

        public SaxHandler() {
            nodeStack.push(new Node(Node.DOCUMENT_NODE));
        }

        public Node getTopNode() {
            return nodeStack.peek();
        }

        @Override
        public void startElement(String uri, String localName, String qName, Attributes attributes) {
            if (qName == null && localName == null) {
                return;
            }
            // TODO SAX Parser on Android work differently
            String nodeName = qName == null || qName.length() == 0 ? localName : qName;
            Node topNode = nodeStack.peek();
            Node currentNode = new Node(Node.ELEMENT_NODE);
            currentNode.setNodeName(nodeName);
            setAttributes(currentNode, attributes);
            topNode.addChild(currentNode);
            nodeStack.push(currentNode);
        }

        private void setAttributes(Node currentNode, Attributes attributes) {
            // TODO Auto-generated method stub

        }

        @Override
        public void characters(char[] ch, int start, int length) {
            Node currentNode = new Node(Node.TEXT_NODE);
            currentNode.setNodeValue(new String(ch, start, length));
            Node topNode = nodeStack.peek();
            topNode.addChild(currentNode);
        }

        @Override
        public void endElement(String uri, String localName, String qName) {
            nodeStack.pop();
        }

    }

}
