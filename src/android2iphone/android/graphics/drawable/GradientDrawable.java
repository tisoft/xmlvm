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

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.util.AttributeSet;

/**
 * @author wkorn
 * 
 */
public class GradientDrawable extends Drawable {

    public static final int RECTANGLE     = 0x00000000;

    private GradientState   gradientState = new GradientState();

    /*
     * (non-Javadoc)
     * 
     * @see android.graphics.drawable.Drawable#draw(android.graphics.Canvas)
     */
    @Override
    public void draw(Canvas canvas) {
        switch (gradientState.shape) {
        default:
            drawRectangle(canvas);
        }
    }

    private void drawRectangle(Canvas canvas) {
        Paint paint = new Paint();
        paint.setColor(gradientState.solidColor);
        canvas.drawRect(getBounds().left, getBounds().top, getBounds().right, getBounds().bottom,
                paint);
    }

    public void setColor(int color) {
        gradientState.solidColor = color;
    }

    public static GradientDrawable xmlvmCreateGradientDrawable(AttributeSet attrs) {
        // TODO Implement parsing the attributes
        GradientDrawable drawable = new GradientDrawable();
        drawable.gradientState.shape = RECTANGLE;

        return drawable;
    }

    @Override
    public boolean getPadding(Rect padding) {
        if (gradientState.padding != null) {
            padding.set(gradientState.padding);
            return true;
        } else {
            return super.getPadding(padding);
        }
    }

    public void xmlvmSetPadding(int left, int top, int right, int bottom) {
        gradientState.padding = new Rect(left, top, right, bottom);
    }

    final static class GradientState extends ConstantState {

        public int  shape      = RECTANGLE;
        public int  solidColor = 0;
        public Rect padding    = null;

        @Override
        public int getChangingConfigurations() {
            // TODO Auto-generated method stub
            return 0;
        }

        @Override
        public Drawable newDrawable() {
            return new GradientDrawable();
        }

    }

}
