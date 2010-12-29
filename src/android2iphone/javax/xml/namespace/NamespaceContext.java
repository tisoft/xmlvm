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
