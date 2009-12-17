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
import org.xmlvm.iphone.UIScrollView;
import org.xmlvm.iphone.UIView;

import android.content.Context;
import android.util.AttributeSet;

public class ScrollView extends FrameLayout {

    private int scrollOffsetX = 0;
    private int scrollOffsetY = 0;
    
    public ScrollView(Context c) {
        super(c);
    }

    public ScrollView(Context context, AttributeSet attrs) {
        super(context, attrs);
    }

    @Override
    protected UIView xmlvmCreateUIView(AttributeSet attrs) {
        return new UIScrollView();
    }

    public void smoothScrollBy(int dx, int dy) {
        scrollOffsetX += dx;
        scrollOffsetY += dy;
        CGRect rect = xmlvmGetUIView().getBounds();
        scrollOffsetX = Math.min(scrollOffsetX, scrollOffsetX - (int) rect.size.width);
        scrollOffsetX = Math.max(scrollOffsetX, 0);
        scrollOffsetY = Math.min(scrollOffsetY, scrollOffsetY - (int) rect.size.height);
        scrollOffsetY = Math.max(scrollOffsetY, 0);
        rect.origin.x = scrollOffsetX;
        rect.origin.y = scrollOffsetY;
        ((UIScrollView) xmlvmGetUIView()).scrollRectToVisible(rect, true);
    }

}
