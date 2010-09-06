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

import java.awt.Rectangle;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class CGRect extends NSObject {

    private static final CGRect NULL = new CGRect(Float.POSITIVE_INFINITY, Float.POSITIVE_INFINITY, 0, 0);
    private static final CGRect ZERO = new CGRect(0, 0, 0, 0);
    private static final CGRect INFINITE = new CGRect(-Float.MAX_VALUE, -Float.MAX_VALUE, Float.MAX_VALUE, Float.MAX_VALUE);

    public CGPoint origin;
    public CGSize  size;

    public CGRect(float x, float y, float width, float height) {
        origin = new CGPoint(x, y);
        size = new CGSize(width, height);
        origin.x = x;
        origin.y = y;
        size.width = width;
        size.height = height;
    }

    public CGRect(CGRect other) {
        origin = new CGPoint(other.origin);
        size = new CGSize(other.size);
        origin.x = other.origin.x;
        origin.y = other.origin.y;
        size.width = other.size.width;
        size.height = other.size.height;
    }

    public static CGRect Null() {
        return new CGRect(NULL);
    }

    public static CGRect Zero() {
        return new CGRect(ZERO);
    }

    public static CGRect Infinite() {
        return new CGRect(INFINITE);
    }

    public static CGRect Intersection(CGRect r1, CGRect r2) {
        Rectangle _r1 = new Rectangle((int) r1.origin.x, (int) r1.origin.y, (int) r1.size.width,
                (int) r1.size.height);
        Rectangle _r2 = new Rectangle((int) r2.origin.x, (int) r2.origin.y, (int) r2.size.width,
                (int) r2.size.height);
        Rectangle _r3 = _r1.intersection(_r2);
        return new CGRect(_r3.x, _r3.y, _r3.width, _r3.height);
    }

    public boolean isNull() {
        return equals(NULL);
    }

    public boolean isEmpty() {
        return equals(ZERO);
    }

    public boolean isInfinite() {
        return equals(INFINITE);
    }

    @Override
    public String toString() {
        return "[" + origin.toString() + size.toString() + "]";
    }

    @Override
    public boolean equals(Object o) {
        if (!(o instanceof CGRect)) {
            return false;
        }
        CGRect r = (CGRect)o;
        return origin.equals(r.origin) && size.equals(r.size);
    }
}
