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

package org.xmlvm.proc.out.build;

import org.xmlvm.Log;

/**
 *
 * @author teras
 */
public enum XcodeSkeleton {

    IPHONE3("iphoneos3.1", "1"),
    IPHONE("iphoneos4.0", "1"),
    IPAD("iphoneos4.0", "2"),
    IOS("iphoneos4.0", "1,2");
    public final String root;
    public final String target;

    private XcodeSkeleton(String root, String target) {
        this.root = root;
        this.target = target;
    }

    public static XcodeSkeleton getTarget(String skeleton) {
        skeleton = skeleton.toUpperCase();
        try {
            return XcodeSkeleton.valueOf(skeleton);
        } catch (IllegalArgumentException ex) {
        }
        Log.error("Unable to find xcode target " + skeleton + ". Using iphone instead.");
        return IPHONE;
    }
}
