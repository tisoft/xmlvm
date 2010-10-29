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

package javax.xml.xpath;

import javax.xml.namespace.NamespaceContext;
import javax.xml.namespace.QName;

import org.w3c.dom.Document;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

public class XPath {

    public Object evaluate(String expression, Object inputSource, QName returnType) {
        Document doc = (Document) inputSource;
        String[] path = expression.split("/");
        NodeList top = new NodeList();
        top.addChild(doc.getDocumentElement());
        Object o = match(top, path, 1);
        return o == null ? "" : o;
    }

    private Object match(NodeList siblings, String[] path, int idx) {
        if (idx == path.length) {
            if (siblings.getLength() != 1) {
                return null;
            }
            Node child = siblings.item(0);
            if (child.getNodeType() != Node.TEXT_NODE) {
                return null;
            }
            return child.getNodeValue();
        }
        for (int i = 0; i < siblings.getLength(); i++) {
            Node sibling = siblings.item(i);
            String pathComponent = path[idx];
            if (sibling.getNodeName().equals(pathComponent)) {
                return match(sibling.getChildNodes(), path, idx + 1);
            }
        }
        return null;
    }

    public void setNamespaceContext(NamespaceContext context) {
        // TODO Auto-generated method stub

    }
}
