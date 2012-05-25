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

package android.graphics;

import android.internal.Assert;

public class Path {

    public enum FillType {EVEN_ODD, INVERSE_EVEN_ODD, INVERSE_WINDING, WINDING}; 

    public void rewind() {
        Assert.NOT_IMPLEMENTED();
    }

    public void moveTo(float x, float y) {
        Assert.NOT_IMPLEMENTED();
    }

    public void lineTo (float x, float y) {
        Assert.NOT_IMPLEMENTED();
    }

    public void rLineTo(int cityNameMaxLength, int i) {
        Assert.NOT_IMPLEMENTED();
    }

    public void setFillType(FillType fillType) {
        Assert.NOT_IMPLEMENTED();
    }

    public void close() {
        Assert.NOT_IMPLEMENTED();
    }

    public void cubicTo (float x1, float y1, float x2, float y2, float x3, float y3) {
        Assert.NOT_IMPLEMENTED();
    }

    public void quadTo (float x1, float y1, float x2, float y2) {
        Assert.NOT_IMPLEMENTED();
    }

}
