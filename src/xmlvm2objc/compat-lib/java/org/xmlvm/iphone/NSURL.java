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

import org.xmlvm.XMLVMIgnore;
import org.xmlvm.XMLVMSkeletonOnly;

@XMLVMSkeletonOnly
public class NSURL extends NSObject {

    private URL url;

    private NSURL(String u) throws MalformedURLException {
        try {
            url = new URL(u);
            return;
        } catch (Exception e) {
        }
        try {
            url = new URL("file://" + u);
            return;
        } catch (Exception e) {
        }
        throw new MalformedURLException();
    }

    public static NSURL URLWithString(String u) {
        try {
            return new NSURL(u);
        } catch (MalformedURLException ex) {
        }
        return null;
    }

    public static NSURL fileURLWithPath(String path) {
        try {
            return new NSURL(path);
        } catch (MalformedURLException ex) {
        }
        return null;
    }

    public String absoluteString() {
        return url.toString();
    }

    @XMLVMIgnore
    public URL xmlvmGetURL() {
        return url;
    }
}
