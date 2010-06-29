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

import java.util.Set;

import org.jdom.Document;
import org.jdom.Element;
import org.jdom.Namespace;

/**
 * This class describes a XMLVM resource, that is e.g. produces by
 * InputProcesses.
 * 
 * TODO(Sascha): Some aspects in this class don't properly reflect the CLI input
 * type. E.g., a CLI resource can have multiple types and therefore multiple
 * super types.
 */
public class XmlvmResource {
    public static enum Type {
        JVM, CLI, CLI_DFA, DEX
    }

    public static Namespace   xmlvmNamespace = Namespace.getNamespace("vm", "http://xmlvm.org");

    private final String      name;
    private final String      superTypeName;
    private final Type        type;
    private final Document    xmlvmDocument;
    private final Set<String> referencedTypes;

    public XmlvmResource(String name, String superTypeName, Type type, Document xmlvmDocument,
            Set<String> referencedTypes) {
        this.name = name;
        this.superTypeName = superTypeName;
        this.type = type;
        this.xmlvmDocument = xmlvmDocument;
        this.referencedTypes = referencedTypes;
    }

    /**
     * Returns the XMLVM document of this resource.
     */
    public Document getXmlvmDocument() {
        return xmlvmDocument;
    }

    /**
     * Returns the type of this XMLVM resource.
     */
    public Type getType() {
        return type;
    }

    /**
     * Returns the name of this XMLVM resource.
     */
    public String getName() {
        return name;
    }

    /**
     * Returns the full name, which is the normal name prefixed by the package.
     */
    public String getFullName() {
        String fullResourceName = getPackageName();
        if (!fullResourceName.isEmpty()) {
            fullResourceName += ".";
        }
        fullResourceName += getName();
        return fullResourceName;
    }

    /**
     * Returns the names of all types that are referenced in this resource.
     */
    public Set<String> getReferencedTypes() {
        return referencedTypes;
    }

    /**
     * Returns the name of the super class type.
     */
    public String getSuperTypeName() {
        return superTypeName;
    }

    /**
     * Returns the name of the package, this resource is in.
     * <p>
     * E.g. "java.lang"
     */
    public String getPackageName() {
        Element clazz = xmlvmDocument.getRootElement().getChild("class", xmlvmNamespace);
        return clazz.getAttributeValue("package");
    }

    /**
     * Returns a comma-separated list of interfaces this resources implements.
     */
    public String getInterfaces() {
        Element clazz = xmlvmDocument.getRootElement().getChild("class", xmlvmNamespace);
        return clazz.getAttributeValue("interfaces");
    }
}
