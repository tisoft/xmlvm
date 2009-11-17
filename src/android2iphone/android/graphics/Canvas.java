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


package android.graphics;

import android.internal.Assert;

/**
 * @author arno
 *
 */
public class Canvas {

    /**
     * @param bitmap
     * @param i
     * @param j
     * @param paint
     */
    public void drawBitmap(Bitmap bitmap, float i, float j, Paint paint) {
        Assert.NOT_IMPLEMENTED();
    }

    /**
     * @param bitmap
     * @param src
     * @param dst
     * @param paint
     */
    public void drawBitmap(Bitmap bitmap, Rect src, Rect dst, Paint paint) {
        Assert.NOT_IMPLEMENTED();
    }

    /**
     * @param i
     * @param j
     * @param k
     * @param l
     * @param paint
     */
    public void drawRect(int i, int j, int k, int l, Paint paint) {
        Assert.NOT_IMPLEMENTED();
    }

    /**
     * @return
     */
    public int save() {
        Assert.NOT_IMPLEMENTED();
        return 0;
    }

    /**
     * @param scaleX
     * @param scaleY
     */
    public void scale(float scaleX, float scaleY) {
        Assert.NOT_IMPLEMENTED();
    }

    /**
     * @param sc
     */
    public void restoreToCount(int saveCount) {
        Assert.NOT_IMPLEMENTED();
    }

    /**
     * @param text
     * @param i
     * @param j
     * @param paint
     */
    public void drawText(String texttodisplay, int i, int j, Paint paint) {
        Assert.NOT_IMPLEMENTED();
    }

}
