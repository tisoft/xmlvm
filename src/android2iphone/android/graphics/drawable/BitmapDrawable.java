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

package android.graphics.drawable;

import org.xmlvm.iphone.CGSize;
import org.xmlvm.iphone.UIImage;

import android.graphics.Rect;

public class BitmapDrawable extends Drawable {

    private UIImage image;

    private BitmapDrawable(UIImage image) {
        this.image = image;
    }

    public static BitmapDrawable xmlvmCreateWithImage(UIImage image) {
        return new BitmapDrawable(image);
    }

    public Rect getBounds() {
        CGSize s = image.getSize();
        Rect r = new Rect();
        r.right = (int) s.width;
        r.bottom = (int) s.height;
        return r;
    }

    public UIImage xmlvmGetImage() {
        return image;
    }
}
