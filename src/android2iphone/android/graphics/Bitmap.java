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

import android.content.res.Resources;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.internal.Assert;

/**
 * @author arno
 * 
 */
public final class Bitmap {

    public static enum Config {
        ALPHA_8, ARGB_4444, ARGB_8888, RGB_565
    }

    private Drawable drawable;

    private Bitmap(Drawable drawable) {
        this.drawable = drawable;
    }

    public Bitmap(Resources res, int resourceId) {
        drawable = res.getDrawable(resourceId);
    }

    public Drawable getDrawable() {
        return drawable;
    }

    public int getWidth() {
        Rect r = drawable.getBounds();
        return r.right;
    }

    public int getHeight() {
        Rect r = drawable.getBounds();
        return r.bottom;
    }

    public static Bitmap createBitmap(int width, int height, Config rgb565) {
        Assert.NOT_IMPLEMENTED();
        return null;
    }

    public static Bitmap createBitmap(Bitmap source, int x, int y, int width, int height) {
        // TODO this only works for BitmapDrawable
        return new Bitmap(((BitmapDrawable) source.drawable).xmlvmCropImage(x, y, width, height));
    }
}
