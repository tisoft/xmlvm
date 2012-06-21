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

package org.xmlvm.acl.wp7.subsystems;

import java.util.Collection;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;

/**
 *
 */
class WP7Directory extends WP7FileSystemEntry {
    private Map<String, WP7FileSystemEntry> children = new HashMap<String, WP7FileSystemEntry>();


    public WP7Directory(String name) {
        super(name);
    }

    public WP7Directory(String name, WP7Directory parent) {
        super(name, parent);
    }

    @Override
    public boolean isDirectory() {
        return true;
    }

    public void addChild(WP7FileSystemEntry child) {
        children.put(child.getName(), child);
        child.setParent(this);
    }

    public WP7FileSystemEntry getChild(String name) {
        return children.get(name);
    }

    public Set<String> getChildrenNames() {
        return children.keySet();
    }

    public Collection<WP7FileSystemEntry> getChildren() {
        return children.values();
    }
}
