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

package android.graphics.drawable;

import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.Paint.Style;

/**
 *
 */
public class ColorDrawable extends Drawable {

    private int alpha = 255;
    private int red   = 0;
    private int green = 0;
    private int blue  = 0;


    public ColorDrawable() {
        // Nothing to be done here
    }

    public ColorDrawable(int color) {
        alpha = color >>> 24;
        red = (color & 0x00FF0000) >> 16;
        green = (color & 0x0000FF00) >> 8;
        blue = color & 0x000000FF;
    }

    /*
     * (non-Javadoc)
     * 
     * @see android.graphics.drawable.Drawable#draw(android.graphics.Canvas)
     */
    @Override
    public void draw(Canvas canvas) {
        Rect rect = getBounds();
        Paint paint = new Paint();
        paint.setAntiAlias(false);
        paint.setColor(Color.argb(alpha, red, green, blue));
        paint.setStyle(Style.FILL_AND_STROKE);
        canvas.drawRect(rect, paint);

    }

    public int xmlvmGetAlpha() {
        return alpha;
    }

    public int xmlvmGetRed() {
        return red;
    }

    public int xmlvmGetGreen() {
        return green;
    }

    public int xmlvmGetBlue() {
        return blue;
    }
}
