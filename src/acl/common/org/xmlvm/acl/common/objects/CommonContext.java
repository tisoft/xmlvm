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

package org.xmlvm.acl.common.objects;

import org.xmlvm.acl.common.adapter.BitmapDrawableAdapter;

import android.graphics.RectF;

/**
 *
 */
public interface CommonContext {

    int LineCapButt   = 0;
    int LineCapRound  = 1;
    int LineCapSquare = 2;

    void storeState();

    void restoreState();

    void setStrokeColor(float[] xmlvmGetColor);

    void setShouldAntialias(boolean antiAlias);

    void beginPath();

    void moveToPoint(float startX, float startY);

    void addLineToPoint(float stopX, float stopY);

    void strokePath();

    void setLineCap(int linecap);

    void scale(int i, int j);

    void setFillColor(float[] color);

    void translate(float dx, float dy);

    void scale(float scaleX, float scaleY);

    void setFontSize(float textSize);

    void drawImage(RectF rect, BitmapDrawableAdapter image);

    void fillRect(RectF rect);

    void strokeRect(RectF rect);

    void fillEllipseInRect(RectF rect);

    void strokeEllipseInRect(RectF rect);

    void setShadowWithColor(float mShadowDX, float mShadowDY, float mShadowRadius,
            float[] mShadowColor);

    void endImageContext();

    BitmapDrawableAdapter getImageFromCurrentImageContext();

}
