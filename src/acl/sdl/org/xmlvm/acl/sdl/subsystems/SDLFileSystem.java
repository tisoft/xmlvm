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

package org.xmlvm.acl.sdl.subsystems;

import java.io.File;
import java.util.Arrays;
import java.util.List;

import org.xmlvm.acl.common.subsystems.CommonFileSystem;

/**
 *
 */
public class SDLFileSystem implements CommonFileSystem {

    @Override
    public String getPathForResource(String resource, String type, String directory) {
        String fn = directory + File.separator + resource + "." + type;
        if (!new File(fn).exists()) {
            return null;
        }
        return fn;
    }

    @Override
    public String getPathForResource(String resource, String type) {
        String fn = resource + "." + type;
        if (!new File(fn).exists()) {
            return null;
        }
        return fn;
    }

    @Override
    public String getApplicationPath() {
        try {
            //TODO: Figure out why this is confusing StringBuilder when cross-compiled
            return "."; //new File(".").getCanonicalPath();
        } catch (Exception e) {
            return null;
        }
    }

    @Override
    public List<String> listDirectory(String path) {
        String fn = path;
        File f = new File(fn);
        if (!f.exists()) {
            return null;
        }
        try {
            return Arrays.asList(new File(path).list()); 
        } catch (Exception e) {
            return null;
        }
    }

}
