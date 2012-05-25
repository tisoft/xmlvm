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

import java.util.ArrayList;
import java.util.List;

import org.xmlvm.acl.common.subsystems.CommonFileSystem;

import Compatlib.System.Windows.Application;
import android.internal.Assert;

/**
 *
 */
public class WP7FileSystem implements CommonFileSystem {

    @Override
    public String getPathForResource(String resource, String type, String directory) {
        if(type==null) {
            Assert.NOT_IMPLEMENTED();
        } else if(resource.startsWith("_ios_")) {
            return null;
        } else if(type.equals("png")) {
            return directory + "/drawable/" + resource + ".png";
        } else if(type.equals("xml")) {
            return directory + "/" + resource + ".png";
        } else {
            Assert.NOT_IMPLEMENTED();
        }
        return null;
    }

    @Override
    public String getPathForResource(String resource, String type) {
        if(type.equals("xml")) {
            return resource + ".xml";
        } else {
            Assert.NOT_IMPLEMENTED();
        }
        return null;
    }

    @Override
    public String getApplicationPath() {
        return "";
    }

    @Override
    public List<String> listDirectory(String path) {
        if(path.equals("/res")) {
            return Application.listDirectory(path);
        } else {
            return new ArrayList<String>();
        }
    }

}
