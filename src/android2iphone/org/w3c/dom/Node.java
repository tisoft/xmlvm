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
