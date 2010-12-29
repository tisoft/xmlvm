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

package org.w3c.dom;

public class Node {

    public static final short DOCUMENT_NODE = 9;

    public static final short ELEMENT_NODE  = 1;

    public static final short TEXT_NODE     = 3;

    private short             nodeType;
    private String            nodeName;
    private String            nodeValue;
    private NodeList          children;
    private NamedNodeMap      attributes;

    public Node(short nodeType) {
        this.nodeType = nodeType;
        this.attributes = new NamedNodeMap();
        this.nodeName = null;
        this.nodeValue = null;
        this.children = null;
    }

    public int getNodeType() {
        return nodeType;
    }

    public String getNodeName() {
        return nodeName;
    }

    public void setNodeName(String nodeName) {
        this.nodeName = nodeName;
    }

    public NamedNodeMap getAttributes() {
        return attributes;
    }

    public String getNodeValue() {
        return this.nodeValue;
    }

    public void setNodeValue(String nodeValue) {
        this.nodeValue = nodeValue;
    }

    public NodeList getChildNodes() {
        return children;
    }

    public void addChild(Node child) {
        if (children == null) {
            children = new NodeList();
        }
        children.addChild(child);
    }
}
