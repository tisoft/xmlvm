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

package org.xmlvm.proc.out;

import java.io.File;
import org.xmlvm.Log;

/**
 * This output file is responsible to create empty directories, especially while
 * creating templates.
 * 
 * @author teras
 */
public class EmptyDirectory extends OutputFile {

    /**
     * Create a new empty directory.
     * 
     * @param outdir
     *            the empty directory name
     */
    public EmptyDirectory(String outdir) {
        setLocation(outdir);
    }

    /**
     * Perform the actual action of this EmptyDirectory (i.e. create empty
     * directory)
     * 
     * @return true, if no errors exist
     */
    @Override
    public boolean write() {
        Log.debug("Creating directory " + getLocation());
        return new File(getLocation()).mkdirs();
    }
}
