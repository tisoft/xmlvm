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

package android.widget;

import android.content.Context;
import android.internal.Assert;
import android.view.View;

/**
 * @author arno
 * 
 */
public class Toast {

    public static final int LENGTH_LONG  = 1;
    public static final int LENGTH_SHORT = 0;

    public Toast(Context context) {
        Assert.NOT_IMPLEMENTED();
    }

    /**
     * @param context
     * @param text
     * @param duration
     * @return
     */
    public static Toast makeText(Context context, CharSequence text, int duration) {
        Assert.NOT_IMPLEMENTED();
        return null;
    }

    public void setView(View view) {
        Assert.NOT_IMPLEMENTED();
    }

    public void setGravity(int gravity, int xOffset, int yOffset) {
        Assert.NOT_IMPLEMENTED();
    }

    public void setDuration(int lengthLong) {
        Assert.NOT_IMPLEMENTED();
    }

    /**
     * 
     */
    public void show() {
        Assert.NOT_IMPLEMENTED();
    }

    /**
     * @param context
     * @param resId
     * @param duration
     * @return
     */
    public static Toast makeText(Context context, int resId, int duration) {
        Assert.NOT_IMPLEMENTED();
        return null;
    }

    /**
     * @param text
     */
    public void setText(String text) {
        Assert.NOT_IMPLEMENTED();
    }

}
