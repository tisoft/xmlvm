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

import org.xmlvm.acl.common.adapter.BitmapDrawableAdapter;
import org.xmlvm.acl.common.objects.CommonContext;
import org.xmlvm.acl.common.objects.CommonFont;

import android.graphics.Paint.Style;
import android.graphics.drawable.BitmapDrawable;
import android.internal.Assert;
import android.internal.CommonDeviceAPIFinder;

//TODO all methods in this class should be synchronized in order to avoid race conditions when accessing lastCanvasUsed
public class Canvas {

    private static Canvas lastCanvasUsed = null;
    private boolean       usesExternalCGContext;
    private CommonContext     context;
    private Bitmap        bitmap;
    private int           saveCount      = 0;


    public Canvas() {
        context = null;
        usesExternalCGContext = false;
    }

    public Canvas(CommonContext context) {
        this.context = context;
        usesExternalCGContext = true;
    }

    private void createContext() {
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
        context = CommonDeviceAPIFinder.instance().getWidgetFactory().createCommonDeviceContext(bitmap, width, height);
    }


    private void deferredReleaseCGContext() {
        if (usesExternalCGContext)
            return;
        BitmapDrawableAdapter image = context.getImageFromCurrentImageContext();
        ((BitmapDrawable) bitmap.getDrawable()).xmlvmSetImage(image);
        context.endImageContext();
    }

    private void releaseContext() {
        // if (usesExternalCGContext)
        // return;
        // UIImage image =
        // CGContext.UIGraphicsGetImageFromCurrentImageContext();
        // ((BitmapDrawable) bitmap.getDrawable()).xmlvmSetImage(image);
        // CGContext.UIGraphicsEndImageContext();
    }

    public void drawBitmap(Bitmap bitmap, float left, float top, Paint paint) {
        createContext();
        BitmapDrawableAdapter image = ((BitmapDrawable) (bitmap.getDrawable())).xmlvmGetImage();
        RectF size = image.getSize();
        RectF rect = new RectF(left, top, left + size.width(), top + size.height());
        context.storeState();
        context.scale(1, -1);
        context.translate(0, -(rect.height() + 2 * rect.top));
        xmlvmSetCGContextPaintParameters(paint);
        context.drawImage(rect, image);
        context.restoreState();
        releaseContext();
    }

    public void drawBitmap(Bitmap bitmap, Rect src, Rect dst, Paint paint) {
        Assert.NOT_IMPLEMENTED();
    }

    public void drawLine(float startX, float startY, float stopX, float stopY, Paint paint) {
        createContext();
        context.storeState();
        startX += 0.5f;
        startY += 0.5f;
        stopX += 0.5f;
        stopY += 0.5f;
        context.setLineCap(CommonContext.LineCapSquare);
        context.setStrokeColor(paint.xmlvmGetColor());
        context.setShouldAntialias(paint.isAntiAlias());
        context.beginPath();
        context.moveToPoint(startX, startY);
        context.addLineToPoint(stopX, stopY);
        context.strokePath();
        context.restoreState();
        releaseContext();
    }

 
    public void drawRect(float left, float top, float right, float bottom, Paint paint) {
        createContext();
        context.storeState();
        left += 0.5;
        top += 0.5;
        float width = right - left;
        float height = bottom - top;
        RectF rect = new RectF(left, top, left + width, top + height);
        // xmlvmSetCGContextPaintParameters(paint);
        float[] color = paint.xmlvmGetColor();
        context.setStrokeColor(color);
        context.setFillColor(color);
        context.setShouldAntialias(paint.isAntiAlias());
        Paint.Style style = paint.getStyle();
        if (style == null || style == Style.FILL) {
            context.fillRect(rect);
        } else if (style == Style.STROKE) {
            context.strokeRect(rect);
        } else {
            // FILL_AND_STROKE:
            context.fillRect(rect);
            context.strokeRect(rect);
        }
        context.restoreState();
        releaseContext();
    }

    public void drawCircle(float cx, float cy, float radius, Paint paint) {
        float left = cx - radius;
        float top = cy - radius;

        createContext();
        context.storeState();
        left += 0.5;
        top += 0.5;
        float size = 2 * radius;
        RectF rect = new RectF(left, top, left + size, top + size);
        // xmlvmSetCGContextPaintParameters(paint);
        float[] color = paint.xmlvmGetColor();
        context.setStrokeColor(color);
        context.setFillColor(color);
        context.setShouldAntialias(paint.isAntiAlias());
        Paint.Style style = paint.getStyle();
        if (style == null || style == Style.FILL) {
            context.fillEllipseInRect(rect);
        } else if (style == Style.STROKE) {
            context.strokeEllipseInRect(rect);
        } else {
            // FILL_AND_STROKE:
            context.fillEllipseInRect(rect);
            context.strokeEllipseInRect(rect);
        }
        context.restoreState();
        releaseContext();
    }

    public int save() {
        createContext();
        context.storeState();
        releaseContext();
        return saveCount++;
    }

    public void restoreToCount(int count) {
        createContext();
        while (saveCount-- != count) {
            context.restoreState();
        }
        releaseContext();
    }

    public void translate(float dx, float dy) {
        createContext();
        context.translate(dx, dy);
        releaseContext();
    }

    public void scale(float scaleX, float scaleY) {
        createContext();
        context.scale(scaleX, scaleY);
        releaseContext();
    }

    public void drawText(String text, float left, float top, Paint paint) {
        createContext();
        context.setFillColor(paint.xmlvmGetColor());
        context.setFontSize(paint.getTextSize());
        context.setShouldAntialias(paint.isAntiAlias());
        Paint.Align align = paint.getTextAlign();
        CommonFont font = paint.xmlvmGetUIFont();
        if (align == Paint.Align.RIGHT || align == Paint.Align.CENTER) {
            RectF textSize = CommonDeviceAPIFinder.instance().getFontFactory().sizeWithFont(text, font);
            switch (align) {
            case RIGHT:
                left -= textSize.width();
                break;
            case CENTER:
                left -= textSize.width() / 2.0;
                break;
            }
        }
        CommonDeviceAPIFinder.instance().getFontFactory().drawAtPoint(text, new RectF(left, top, 0, 0), font);
        releaseContext();
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

    public void drawPath(Path path, Paint paint) {
        Assert.NOT_IMPLEMENTED();
    }

    public void drawArc(RectF oval, float startAngle, float sweepAngle, boolean useCenter,
            Paint paint) {
        Assert.NOT_IMPLEMENTED();
    }

    public void drawRoundRect(RectF rect, float rx, float ry, Paint paint) {
        Assert.NOT_IMPLEMENTED();
    }

    public void drawOval(RectF oval, Paint paint) {
        Assert.NOT_IMPLEMENTED();
    }

    public void drawRect(RectF rect, Paint paint) {
        Assert.NOT_IMPLEMENTED();
    }
    
    public void drawRect(Rect rect, Paint paint) {
        drawRect(rect.left, rect.top, rect.right, rect.bottom, paint);
    }
}
