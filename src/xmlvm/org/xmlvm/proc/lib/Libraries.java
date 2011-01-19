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

package org.xmlvm.proc.lib;

import java.util.ArrayList;
import java.util.List;

import org.xmlvm.main.Arguments;
import org.xmlvm.util.universalfile.UniversalFile;

/**
 * This is a registry for all the accessible libraries. Libraries get registered
 * here so processes can use them for their own purposes.
 */
public class Libraries {
    private final static List<Library> libraries = new ArrayList<Library>();
    private final Arguments            arguments;

    static {
        // Add all libraries here. First entry has highest priority.
        libraries.add(new JdkLibrary());
        libraries.add(new CocoaJavaLibrary());
        libraries.add(new XmlvmUtilLibrary());
        libraries.add(new IPhoneAndroidLibrary());
    }


    public Libraries(Arguments arguments) {
        this.arguments = arguments;
    }

    /**
     * Returns the most recent lastModified date of all the libraries.
     * <p>
     * Note: The required the libraries to be loaded, to determine the
     * last-modified timestamp.
     */
    public long getLastModified() {
        long mostRecentLastModified = 0;

        for (Library library : libraries) {
            if (library.isEnabled(arguments)) {
                if (library.getLibrary().getLastModified() > mostRecentLastModified) {
                    mostRecentLastModified = library.getLibrary().getLastModified();
                }
            }
        }
        return mostRecentLastModified;
    }

    /**
     * Returns the libraries that can be loaded as they are needed.
     */
    public List<UniversalFile> getLibraryFiles() {
        List<UniversalFile> result = new ArrayList<UniversalFile>();
        for (Library library : libraries) {
            if (library.isEnabled(arguments) && !library.isMonolithic()) {
                result.add(library.getLibrary());
            }
        }
        return result;
    }

    /**
     * Required libraries that should be completely added to the input resources
     * set.
     */
    public List<UniversalFile> getMonolithicLibraryFiles() {
        List<UniversalFile> result = new ArrayList<UniversalFile>();
        for (Library library : libraries) {
            if (library.isEnabled(arguments) && library.isMonolithic()) {
                result.add(library.getLibrary());
            }
        }
        return result;
    }
}
