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

import android.content.Context;
import android.util.AttributeSet;
import android.view.ViewGroup;

public class LinearLayout extends ViewGroup {

    // TODO Extend this from ViewGroup.MarginLayoutParams (breaks cross-compilation)
    public static class LayoutParams extends ViewGroup.LayoutParams {

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
            // TODO Implement parsing of the various gravity attributes
            if (str.equalsIgnoreCase("center_horizontal")) {
                return 0x01;
            } else {
                return defaultGravity;
            }
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
    }

    // TODO Uncomment this (breaks cross-compilation)
//    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attrs) {
//        return new LayoutParams(getContext(), attrs);
//    }

}
