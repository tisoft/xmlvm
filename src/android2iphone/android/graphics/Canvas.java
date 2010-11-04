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
import org.xmlvm.iphone.UIGraphics;

//TODO all methods in this class should be synchronized in order to avoid race conditions when accessing lastCanvasUsed
public class Canvas {

    private static Canvas lastCanvasUsed = null;
    private boolean       usesExternalCGContext;
    private CGContext     context;
    private Bitmap        bitmap;
    private int           saveCount      = 0;

    public Canvas() {
        context = null;
        usesExternalCGContext = false;
    }

    public Canvas(CGContext context) {
        this.context = context;
        usesExternalCGContext = true;
    }

    private void createCGContext() {
        if (lastCanvasUsed == this) {
            return;
        }
        if (lastCanvasUsed != null) {
            lastCanvasUsed.deferredReleaseCGContext();
        }
        lastCanvasUsed = this;
        if (usesExternalCGContext)
            return;
        float width = bitmap.getWidth();
        float height = bitmap.getHeight();
        UIGraphics.beginImageContext(new CGSize(width, height));
        context = UIGraphics.getCurrentContext();
        UIImage image = ((BitmapDrawable) (bitmap.getDrawable())).xmlvmGetImage();
        context.storeState();
        context.scale(1, -1);
        context.translate(0, -height);
        context.drawImage(new CGRect(0, 0, width, height), image.getCGImage());
        context.restoreState();
    }

    private void deferredReleaseCGContext() {
        if (usesExternalCGContext)
            return;
        UIImage image = UIGraphics.getImageFromCurrentImageContext();
        ((BitmapDrawable) bitmap.getDrawable()).xmlvmSetImage(image);
        UIGraphics.endImageContext();
    }

    private void releaseCGContext() {
        // if (usesExternalCGContext)
        // return;
        // UIImage image =
        // CGContext.UIGraphicsGetImageFromCurrentImageContext();
        // ((BitmapDrawable) bitmap.getDrawable()).xmlvmSetImage(image);
        // CGContext.UIGraphicsEndImageContext();
    }

    public void drawBitmap(Bitmap bitmap, float left, float top, Paint paint) {
        createCGContext();
        UIImage image = ((BitmapDrawable) (bitmap.getDrawable())).xmlvmGetImage();
        CGSize size = image.getSize();
        CGRect rect = new CGRect(left, top, size.width, size.height);
        context.storeState();
        context.scale(1, -1);
        context.translate(0, -(rect.size.height + 2 * rect.origin.y));
        xmlvmSetCGContextPaintParameters(paint);
        context.drawImage(rect, image.getCGImage());
        context.restoreState();
        releaseCGContext();
    }

    public void drawBitmap(Bitmap bitmap, Rect src, Rect dst, Paint paint) {
        Assert.NOT_IMPLEMENTED();
    }

    public void drawLine(float startX, float startY, float stopX, float stopY, Paint paint)
    {
        Assert.NOT_IMPLEMENTED();
    }
    
    public void drawRect(float left, float top, float right, float bottom, Paint paint) {
        createCGContext();
        context.storeState();
        // TODO the setFillColor() should be done in xmlvmSetCGContextPaintParameters()
        context.setFillColor(paint.xmlvmGetColor());
        xmlvmSetCGContextPaintParameters(paint);
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
        createCGContext();
        while (saveCount-- != count) {
            context.restoreState();
        }
        releaseCGContext();
    }

    public void translate(float dx, float dy) {
        createCGContext();
        context.translate(dx, dy);
        releaseCGContext();
    }

    public void scale(float scaleX, float scaleY) {
        createCGContext();
        context.scale(scaleX, scaleY);
        releaseCGContext();
    }

    public void drawText(String texttodisplay, float left, float top, Paint paint) {
        createCGContext();
        context.setFillColor(paint.xmlvmGetColor());
        NSString.drawAtPoint(texttodisplay, new CGPoint(left, top), paint.xmlvmGetUIFont());
        releaseCGContext();
    }

    public void setBitmap(Bitmap bitmap) {
        this.bitmap = bitmap;
    }

    public void drawTextOnPath(String text, Path textPathSingleLine, int i, int j, Paint textPaint) {
        Assert.NOT_IMPLEMENTED();
    }

    private void xmlvmSetCGContextPaintParameters(Paint paint) {
        if (paint != null) {
            paint.xmlvmSetCGContextParameters(context);
        }
    }
}
