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

package org.xmlvm.iphone;

import java.net.URL;

/**
 * @author arno
 * 
 */
public class NSBundle {

    private static NSBundle mainBundle = new NSBundle();

    private NSBundle() {
    }

    public static NSBundle mainBundle() {
        return mainBundle;
    }

    public String pathForResource(String resource, String type, String directory) {
        String fileName = new String(resource);
        if (type != null) {
            fileName = fileName.concat("." + type);
        }
        
        if (directory != null) {
            fileName = directory + "/" + fileName;
        }
        
        URL url = this.getClass().getResource("/" + fileName);
        return url.getFile();
    }
    
    public String pathForResource(String resource, String type) {
        return pathForResource(resource, type, null);
    }
}
