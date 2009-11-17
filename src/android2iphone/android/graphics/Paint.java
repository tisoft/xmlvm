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
public class Paint {

    public static final int ANTI_ALIAS_FLAG = 1;

    /**
     * @param antiAliasFlag
     */
    public Paint(int antiAliasFlag) {
        Assert.NOT_IMPLEMENTED();
    }

    /**
     * 
     */
    public Paint() {
        Assert.NOT_IMPLEMENTED();
    }

    /**
     * @param i
     * @param j
     * @param k
     * @param l
     */
    public void setARGB(int i, int j, int k, int l) {
        Assert.NOT_IMPLEMENTED();
    }

    /**
     * @param f
     * @param g
     * @param h
     * @param i
     */
    public void setShadowLayer(float f, float g, float h, int i) {
        Assert.NOT_IMPLEMENTED();
    }

    /**
     * @param fontHeight
     */
    public void setTextSize(int fontHeight) {
        Assert.NOT_IMPLEMENTED();
    }

    /**
     * @param typeFace
     */
    public void setTypeface(Typeface typeface) {
        Assert.NOT_IMPLEMENTED();
    }

    /**
     * @param text
     * @return
     */
    public float measureText(String text) {
        Assert.NOT_IMPLEMENTED();
        return 0;
    }

}
