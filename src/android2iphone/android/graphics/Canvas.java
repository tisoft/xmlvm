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

public class Canvas {

    private boolean   usesExternalCGContext;
    private CGContext context;
    private Bitmap    bitmap;
    private int       saveCount = 0;

    public Canvas() {
        context = null;
        usesExternalCGContext = false;
    }

    public Canvas(CGContext context) {
        this.context = context;
        usesExternalCGContext = true;
    }

    private void createCGContext() {
        if (usesExternalCGContext)
            return;
        float width = bitmap.getWidth();
        float height = bitmap.getHeight();
        CGContext.UIGraphicsBeginImageContext(new CGSize(width, height));
        context = CGContext.UICurrentContext();
        UIImage image = ((BitmapDrawable) (bitmap.getDrawable())).xmlvmGetImage();
        context.drawImage(new CGRect(0, 0, width, height), image.getCGImage());
    }

    private void releaseCGContext() {
        if (usesExternalCGContext)
            return;
        UIImage image = CGContext.UIGraphicsGetImageFromCurrentImageContext();
        ((BitmapDrawable) bitmap.getDrawable()).xmlvmSetImage(image);
        CGContext.UIGraphicsEndImageContext();
    }

    public void drawBitmap(Bitmap bitmap, float left, float top, Paint paint) {
        createCGContext();
        UIImage image = ((BitmapDrawable) (bitmap.getDrawable())).xmlvmGetImage();
        CGSize size = image.getSize();
        CGRect rect = new CGRect(left, top, size.width, size.height);
        context.storeState();
        context.scale(1, -1);
        context.translate(0, -(rect.size.height + 2 * rect.origin.y));
        context.drawImage(rect, image.getCGImage());
        context.restoreState();
        releaseCGContext();
    }

    public void drawBitmap(Bitmap bitmap, Rect src, Rect dst, Paint paint) {
        Assert.NOT_IMPLEMENTED();
    }

    public void drawRect(float left, float top, float right, float bottom, Paint paint) {
        createCGContext();
        context.storeState();
        context.setFillColor(paint.xmlvmGetColor());
        context.fillRect(new CGRect(left, top, right - left, bottom - top));
        context.restoreState();
        releaseCGContext();
    }

    public int save() {
        createCGContext();
        context.storeState();
        releaseCGContext();
        return saveCount++;
    }

    public void restoreToCount(int count) {
        while (saveCount-- != count) {
            createCGContext();
            context.restoreState();
            releaseCGContext();
        }
    }

    public void translate(float dx, float dy) {
        createCGContext();
        context.translate(dx, dy);
        releaseCGContext();
    }

    public void scale(float scaleX, float scaleY) {
        Assert.NOT_IMPLEMENTED();
    }

    public void drawText(String texttodisplay, int left, int top, Paint paint) {
        CGContext context = CGContext.UICurrentContext();
        context.setFillColor(paint.xmlvmGetColor());
        NSString.drawAtPoint(texttodisplay, new CGPoint(left, top), paint.xmlvmGetUIFont());
    }

    public void setBitmap(Bitmap bitmap) {
        this.bitmap = bitmap;
    }
}
