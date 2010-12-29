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

package org.xmlvm.iphone;

import org.xmlvm.XMLVMSkeletonOnly;

@XMLVMSkeletonOnly
public class CGRect extends NSObject {

    private static final CGRect NULL     = new CGRect(Float.POSITIVE_INFINITY,
                                                 Float.POSITIVE_INFINITY, 0, 0);
    private static final CGRect ZERO     = new CGRect(0, 0, 0, 0);
    private static final CGRect INFINITE = new CGRect(-Float.MAX_VALUE, -Float.MAX_VALUE,
                                                 Float.MAX_VALUE, Float.MAX_VALUE);

    public CGPoint              origin;
    public CGSize               size;


    public CGRect(float x, float y, float width, float height) {
        origin = new CGPoint(x, y);
        size = new CGSize(width, height);
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
        if (r1 == null || r2 == null) {
            return Null();
        }

        float maxleft = r1.origin.x > r2.origin.x ? r1.origin.x : r2.origin.x;
        float maxtop = r1.origin.y > r2.origin.y ? r1.origin.y : r2.origin.y;
        float minright = (r1.origin.x + r1.size.width) < (r2.origin.x + r2.size.width) ? r1.origin.x
                + r1.size.width
                : r2.origin.x + r2.size.width;
        float minbottom = (r1.origin.y + r1.size.height) < (r2.origin.y + r2.size.height) ? r1.origin.y
                + r1.size.height
                : r2.origin.y + r2.size.height;
        if (maxleft > minright || maxtop > minbottom) {
            return Null();
        }
        return new CGRect(maxleft, maxtop, minright - maxleft, minbottom - maxtop);
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
        CGRect r = (CGRect) o;
        return origin.equals(r.origin) && size.equals(r.size);
    }
}
