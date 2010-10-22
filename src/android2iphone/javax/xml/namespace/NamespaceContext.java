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

package javax.xml.namespace;

import java.util.Iterator;

public interface NamespaceContext {
    /**
     * 
     * Maps a prefix to a URI.
     * 
     * @param The
     *            prefix to be mapped.
     * 
     * @return The URI associated with this prefix or XMLConstants.NULL_NS_URI
     *         if the prefix is not bound.
     * 
     */
    public String getNamespaceURI(String prefix);

    /**
     * 
     * Maps a URI to a prefix.
     * 
     * @param namespaceURI
     *            The URI to be mapped
     * 
     * @param The
     *            prefix to which the provided URI is bound or null if the URI
     *            is not bound to any prefix.
     * 
     */
    public String getPrefix(String namespaceURI);

    /**
     * 
     * Retrieves all prefixes which to which a URI is bound.
     * 
     * @param namespaceURI
     *            The namespace URI to look for
     * 
     * @return An iterator used to iterate the result.
     * 
     */
    public Iterator<String> getPrefixes(String namespaceURI);

}
