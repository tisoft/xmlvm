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

/**
 *
 */
abstract class WP7FileSystemEntry {

    private String       name;
    private WP7Directory parent;


    public WP7FileSystemEntry(String name) {
        this.name = name;
        this.parent = null;
    }

    public WP7FileSystemEntry(String name, WP7Directory parent) {
        this.name = name;
        parent.addChild(this);
    }

    public String getName() {
        return name;
    }

    public WP7Directory getParent() {
        return parent;
    }

    public void setParent(WP7Directory parent) {
        this.parent = parent;
    }

    public abstract boolean isDirectory();
}
