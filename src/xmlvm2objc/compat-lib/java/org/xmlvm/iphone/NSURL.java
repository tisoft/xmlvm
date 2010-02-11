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

import java.net.MalformedURLException;
import java.net.URL;

public class NSURL {

    private URL    url;
    private String urlString;

    private NSURL(String u) {
        System.out.println("URL: " + u);
        this.urlString = u;
        this.url = null;
        try {
            if (u.startsWith("jar://")) {
                this.url = new URL("jar", "", u.substring("jar://".length()));
            } else {
                this.url = new URL(u);
            }
        } catch (MalformedURLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
    }

    public static NSURL URLWithString(String u) {
        return new NSURL(u);
    }

    public static NSURL fileURLWithPath(String path) {
        String newPath = path.startsWith("file:") ? newPath = path.substring(5) : path;
        String str = newPath.indexOf('!') < 0 ? "file://" : "jar://";
        return new NSURL(str + newPath);
    }

    public URL getURL() {
        return url;
    }

    public String xmlvmGetURLString() {
        return this.urlString;
    }
}
