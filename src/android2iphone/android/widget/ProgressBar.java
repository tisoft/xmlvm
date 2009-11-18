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

import org.xmlvm.iphone.UIActivityIndicatorView;
import org.xmlvm.iphone.UIActivityIndicatorViewStyle;
import org.xmlvm.iphone.UIView;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;

/* TODO: This implementation of ProgressBar is currently hard coded
 * for indeterminate mode.
 */
public class ProgressBar extends View {

    final private int SMALL_SPINNER_SIZE = 21;
    final private int LARGE_SPINNER_SIZE = 36;

    public ProgressBar(Context c) {
        super(c);
    }

    public ProgressBar(Context c, AttributeSet attrs) {
        super(c, attrs);
    }

    @Override
    protected UIView xmlvmCreateUIView(AttributeSet attrs) {
        return new UIActivityIndicatorView(UIActivityIndicatorViewStyle.WhiteLarge);
    }

    @Override
    protected void parseAttributes(AttributeSet attrs) {
        super.parseAttributes(attrs);

        // TODO
    }

    @Override
    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        setMeasuredDimension(LARGE_SPINNER_SIZE, LARGE_SPINNER_SIZE);
    }

}
