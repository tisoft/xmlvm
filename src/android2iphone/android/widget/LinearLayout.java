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

    private int orientation;

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
                }
                else if (gravityStr.equals("bottom")) {
                    result |= 0x50;
                }
                else if (gravityStr.equals("left")) {
                    result |= 0x03;
                }
                else if (gravityStr.equals("right")) {
                    result |= 0x05;
                }
                else if (gravityStr.equals("center_vertical")) {
                    result |= 0x10;
                }
                else if (gravityStr.equals("fill_vertical")) {
                    result |= 0x70;
                }
                else if (gravityStr.equals("center_horizontal")) {
                    result |= 0x01;
                }
                else if (gravityStr.equals("fill_horizontal")) {
                    result |= 0x07;
                }
                else if (gravityStr.equals("center")) {
                    result |= 0x11;
                }
                else if (gravityStr.equals("fill")) {
                    result |= 0x77;
                }
                else if (gravityStr.equals("clip_vertical")) {
                    result |= 0x80;
                }
                else if (gravityStr.equals("clip-horizontal")) {
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
        setOrientation("vertical".equalsIgnoreCase(str) ? 1 : 0);
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

}
