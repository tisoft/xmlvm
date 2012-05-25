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

package org.xmlvm.acl.ios.subsystems;

import java.util.List;

import org.xmlvm.acl.common.subsystems.CommonFileSystem;
import org.xmlvm.iphone.NSBundle;
import org.xmlvm.iphone.NSFileManager;

/**
 *
 */
public class IPhoneFileSystem implements CommonFileSystem {

    @Override
    public String getApplicationPath() {
        return NSBundle.mainBundle().bundlePath();
    }

    @Override
    public List<String> listDirectory(String path) {
        return NSFileManager.defaultManager().contentsOfDirectoryAtPath(path, null);
    }
    
    @Override
    public String getPathForResource(String resource, String type, String directory) {
        return NSBundle.mainBundle().pathForResource(resource, type, directory);
    }
    
    public String getPathForResource(String resource, String type) {
        return NSBundle.mainBundle().pathForResource(resource, type);
    }
    
}
