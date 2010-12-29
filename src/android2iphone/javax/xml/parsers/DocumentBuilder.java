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
