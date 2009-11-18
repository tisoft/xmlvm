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

import org.xmlvm.iphone.CGRect;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;

public class LinearLayout extends ViewGroup {

    private static final int ORIENTATION_HORIZONTAL = 0;
    private static final int ORIENTATION_VERTICAL   = 1;
    private int              orientation;

    public static class LayoutParams extends ViewGroup.MarginLayoutParams {

        public int   gravitiy;
        public float weight;

        public LayoutParams(Context context, AttributeSet attrs) {
            super(context, attrs);
            gravitiy = parseGravity(attrs.getAttributeValue(null, "layout_gravity"), 0);
            weight = attrs.getAttributeFloatValue(null, "layout_weight", 0);
        }

        public LayoutParams(int width, int height) {
            super(width, height);
        }

        private int parseGravity(String str, int defaultGravity) {
            int result = 0;
            int separatorIndex;

            do {
                separatorIndex = str.indexOf('|');
                String gravityStr = separatorIndex != -1 ? str.substring(0, separatorIndex) : str;
                str = str.substring(separatorIndex + 1);

                if (gravityStr.equals("top")) {
                    result |= 0x30;
                } else if (gravityStr.equals("bottom")) {
                    result |= 0x50;
                } else if (gravityStr.equals("left")) {
                    result |= 0x03;
                } else if (gravityStr.equals("right")) {
                    result |= 0x05;
                } else if (gravityStr.equals("center_vertical")) {
                    result |= 0x10;
                } else if (gravityStr.equals("fill_vertical")) {
                    result |= 0x70;
                } else if (gravityStr.equals("center_horizontal")) {
                    result |= 0x01;
                } else if (gravityStr.equals("fill_horizontal")) {
                    result |= 0x07;
                } else if (gravityStr.equals("center")) {
                    result |= 0x11;
                } else if (gravityStr.equals("fill")) {
                    result |= 0x77;
                } else if (gravityStr.equals("clip_vertical")) {
                    result |= 0x80;
                } else if (gravityStr.equals("clip-horizontal")) {
                    result |= 0x08;
                }

            } while (separatorIndex >= 0);

            return result;
        }
    }

    public LinearLayout(Context c) {
        super(c);
    }

    public LinearLayout(Context c, AttributeSet attrs) {
        this(c);
        parseAttributes(attrs);
    }

    protected void parseAttributes(AttributeSet attrs) {
        super.parseAttributes(attrs);

        String str = attrs.getAttributeValue(null, "orientation");
        setOrientation("vertical".equals(str) ? ORIENTATION_VERTICAL : ORIENTATION_HORIZONTAL);
    }

    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attrs) {
        return new LayoutParams(getContext(), attrs);
    }

    public int getOrientation() {
        return orientation;
    }

    public void setOrientation(int orientation) {
        this.orientation = orientation;
    }

    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        int maxItemSize = 0;
        int totalSize = 0;
        int remainingWidth = MeasureSpec.getSize(widthMeasureSpec);
        int remainingHeight = MeasureSpec.getSize(heightMeasureSpec);

        super.onMeasure(widthMeasureSpec, heightMeasureSpec);
        
        for (int i = 0; i < getChildCount(); i++) {
            View v = getChildAt(i);
            LayoutParams lp = (LayoutParams) v.getLayoutParams();
            if (orientation == ORIENTATION_VERTICAL) {
                remainingHeight -= (lp.topMargin + lp.bottomMargin);
            } else {
                remainingWidth -= (lp.leftMargin + lp.rightMargin);
            }

            if (orientation == ORIENTATION_VERTICAL) {
                int viewWidthMeasureSpec = makeMeasureSpec(lp.width, remainingWidth - lp.leftMargin
                        - lp.rightMargin);
                int viewHeightMeasureSpec = makeMeasureSpec(lp.height, remainingHeight);
                v.measure(viewWidthMeasureSpec, viewHeightMeasureSpec);

                remainingHeight -= v.getMeasuredHeight();
                maxItemSize = v.getMeasuredWidth() > maxItemSize ? v.getMeasuredWidth()
                        : maxItemSize;
                totalSize += (lp.topMargin + lp.bottomMargin + v.getMeasuredHeight());
            } else {
                int viewWidthMeasureSpec = makeMeasureSpec(lp.width, remainingWidth);
                int viewHeightMeasureSpec = makeMeasureSpec(lp.height, remainingHeight
                        - lp.topMargin - lp.bottomMargin);
                v.measure(viewWidthMeasureSpec, viewHeightMeasureSpec);

                remainingWidth -= v.getMeasuredWidth();
                maxItemSize = v.getMeasuredHeight() > maxItemSize ? v.getMeasuredHeight()
                        : maxItemSize;
                totalSize += (lp.leftMargin + lp.rightMargin + v.getMeasuredWidth());
            }
        }

        int layoutWidth;
        int layoutHeight;
        if (orientation == ORIENTATION_VERTICAL) {
            layoutWidth = MeasureSpec.getMode(widthMeasureSpec) == MeasureSpec.EXACTLY ? MeasureSpec
                    .getSize(widthMeasureSpec)
                    : maxItemSize;
            layoutHeight = MeasureSpec.getMode(heightMeasureSpec) == MeasureSpec.EXACTLY ? MeasureSpec
                    .getSize(heightMeasureSpec)
                    : totalSize;
        } else {
            layoutWidth = MeasureSpec.getMode(widthMeasureSpec) == MeasureSpec.EXACTLY ? MeasureSpec
                    .getSize(widthMeasureSpec)
                    : totalSize;
            layoutHeight = MeasureSpec.getMode(heightMeasureSpec) == MeasureSpec.EXACTLY ? MeasureSpec
                    .getSize(heightMeasureSpec)
                    : maxItemSize;
        }

        setMeasuredDimension(layoutWidth, layoutHeight);
    }

    protected void onLayout(boolean changed, int left, int top, int right, int bottom) {
        int nextPosition = 0;
        int width = right - left;
        int height = bottom - top;

        xmlvmGetUIView().setFrame(new CGRect(left, top, width, height));

        for (int i = 0; i < getChildCount(); i++) {
            View v = getChildAt(i);
            LayoutParams lp = (LayoutParams) v.getLayoutParams();
            int x;
            int y;

            if (orientation == ORIENTATION_VERTICAL) {
                nextPosition += lp.topMargin;

                // TODO: Support not only center alignment
                x = (width - v.getMeasuredWidth()) / 2;
                y = nextPosition;

                nextPosition += (v.getMeasuredHeight() + lp.bottomMargin);
            } else {
                nextPosition += lp.leftMargin;

                x = nextPosition;
                y = lp.topMargin;

                nextPosition += (v.getMeasuredWidth() + lp.rightMargin);
            }

            v.layout(x, y, x + v.getMeasuredWidth(), y + v.getMeasuredHeight());
        }
    }

    private int makeMeasureSpec(int layoutSize, int sizeConstraint) {
        int mode = layoutSize == LayoutParams.WRAP_CONTENT ? MeasureSpec.AT_MOST
                : MeasureSpec.EXACTLY;

        int size;
        if (mode == MeasureSpec.AT_MOST) {
            size = sizeConstraint;
        } else {
            size = layoutSize > 0 ? Math.min(layoutSize, sizeConstraint) : sizeConstraint;
        }

        return MeasureSpec.makeMeasureSpec(size, mode);
    }
}
