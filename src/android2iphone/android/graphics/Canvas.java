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

import org.xmlvm.iphone.CGContext;
import org.xmlvm.iphone.CGPoint;
import org.xmlvm.iphone.CGRect;
import org.xmlvm.iphone.CGSize;
import org.xmlvm.iphone.NSString;
import org.xmlvm.iphone.UIImage;

import android.graphics.drawable.BitmapDrawable;
import android.internal.Assert;
import android.util.Log;

public class Canvas {

    public Canvas() {
    }

    public void drawBitmap(Bitmap bitmap, float left, float top, Paint paint) {
        UIImage image = ((BitmapDrawable) (bitmap.getDrawable())).xmlvmGetImage();
        CGSize size = image.getSize();
        CGRect rect = new CGRect(left, top, size.width, size.height);
        CGContext context = CGContext.UICurrentContext();
        context.storeState();
        context.scale(1, -1);
        context.translate(0, -(rect.size.height + 2 * rect.origin.y));
        context.drawImage(rect, image.getCGImage());
        context.restoreState();
    }

    public void drawBitmap(Bitmap bitmap, Rect src, Rect dst, Paint paint) {
        Assert.NOT_IMPLEMENTED();
    }

    public void drawRect(int i, int j, int k, int l, Paint paint) {
        Assert.NOT_IMPLEMENTED();
    }

    public int save() {
        Assert.NOT_IMPLEMENTED();
        return 0;
    }

    public void scale(float scaleX, float scaleY) {
        Assert.NOT_IMPLEMENTED();
    }

    public void restoreToCount(int saveCount) {
        Assert.NOT_IMPLEMENTED();
    }

    public void drawText(String texttodisplay, int left, int top, Paint paint) {
        CGContext context = CGContext.UICurrentContext();
        context.setFillColor(paint.xmlvmGetColor());
        NSString.drawAtPoint(texttodisplay, new CGPoint(left, top), paint.xmlvmGetUIFont());
    }

    public void setBitmap(Bitmap bitmap) {
        Assert.NOT_IMPLEMENTED();
    }

}
