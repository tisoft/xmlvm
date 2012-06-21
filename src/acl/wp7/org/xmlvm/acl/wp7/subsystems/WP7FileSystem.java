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

/**
 *
 */
public class WP7FileSystem implements CommonFileSystem {

    private static WP7Directory rootDir = new WP7Directory("/");

    static {
        parseFiles();
    }


    @Override
    public String getPathForResource(String resource, String type, String directory) {
        StringBuffer buf = new StringBuffer(directory + "/" + resource);
        if (type != null && type.length() > 0) {
            buf.append(".").append(type);
        }
        
        String result = buf.toString();
        return exists(result) ? result : null; 
    }

    @Override
    public String getPathForResource(String resource, String type) {
        StringBuffer buf = new StringBuffer(resource);
        if (type != null && type.length() > 0) {
            buf.append(".").append(type);
        }
        
        String result = buf.toString();
        return exists(result) ? result : null; 
    }

    @Override
    public String getApplicationPath() {
        return "";
    }

    @Override
    public List<String> listDirectory(String path) {
        String[] tokens = path.split("/");
        WP7Directory currentDir = rootDir;

        for (int i = 0; i < tokens.length; i++) {
            String token = tokens[i];
            if (token.length() > 0) {
                WP7FileSystemEntry entry = currentDir.getChild(token); 
                if (entry == null || !entry.isDirectory()) {
                    throw new RuntimeException("Directory expected");
                }
                
                currentDir = (WP7Directory) entry;
            }
        }

        return new ArrayList<String>(currentDir.getChildrenNames());
    }

    private static void parseFiles() {
        for (String str : Application.listFileSystem()) {
            WP7Directory currentDir = rootDir;
            String tokens[] = str.split("/");
            for (int i = 0; i < tokens.length; i++) {
                String pstr = tokens[i];

                // Directory
                if (i < tokens.length - 1) {
                    if (currentDir.getChild(pstr) == null) {
                        currentDir = new WP7Directory(pstr, currentDir);
                    } else {
                        currentDir = (WP7Directory) currentDir.getChild(pstr);
                    }
                }
                // File
                else {
                    WP7File f = new WP7File(pstr);
                    currentDir.addChild(f);
                }
            }
        }
    }
    
    
    private boolean exists(String path) {
        String str = path.startsWith("/") ? path.substring(1) : path;
        return Application.listFileSystem().contains(str);
    }
}
