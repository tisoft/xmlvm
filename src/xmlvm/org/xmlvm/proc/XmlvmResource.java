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

package org.xmlvm.proc;

import org.jdom.Document;
import org.jdom.Namespace;

/**
 * This class describes a XMLVM resource, that is e.g. produces by
 * InputProcesses.
 */
public class XmlvmResource {
    public static enum Type {
        JVM, CLI, CLI_DFA
    }

    public static Namespace xmlvmNamespace = Namespace.getNamespace("vm", "http://xmlvm.org");

    private String          name;
    private Type            type;
    private Document        xmlvmDocument;

    public XmlvmResource(String name, Type type, Document xmlvmDocument) {
        this.name = name;
        this.type = type;
        this.xmlvmDocument = xmlvmDocument;
    }

    public Document getXmlvmDocument() {
        return xmlvmDocument;
    }

    public Type getType() {
        return type;
    }

    public String getName() {
        return name;
    }
}
