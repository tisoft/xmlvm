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

import org.xmlvm.iphone.UITextView;
import org.xmlvm.iphone.UIView;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View.MeasureSpec;

public class EditText extends TextView {
    
    private static final int INSETS_X = 10;
    private static final int INSETS_Y = 5;
    private static final int DEFAULT_FONT_WIDTH = 10;
    private static final int DEFAULT_FONT_HEIGHT = 18;

    public EditText(Context c) {
        super(c);

        getUITextView().setText("");
    }

    public EditText(Context c, AttributeSet attrs) {
        this(c);
        parseAttributes(attrs);
    }

    public Object getText() {
        return getUITextView().getText();
    }

    public void setLines(int i) {
        // TODO Auto-generated method stub

    }

    @Override
    protected UIView xmlvmCreateUIView() {
        return new UITextView();
    }

    private UITextView getUITextView() {
        return (UITextView) xmlvmGetUIView();
    }

    protected void parseAttributes(AttributeSet attrs) {
        super.parseAttributes(attrs);
    }
    
    @Override
    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        // TODO: Replace with a more elaborated measurement
        int width = MeasureSpec.getMode(widthMeasureSpec) == MeasureSpec.EXACTLY ? MeasureSpec
                .getSize(widthMeasureSpec) : 2 * INSETS_X + getUITextView().getText().length() * DEFAULT_FONT_WIDTH;
        int height = MeasureSpec.getMode(heightMeasureSpec) == MeasureSpec.EXACTLY ? MeasureSpec
                .getSize(heightMeasureSpec) : 2 * INSETS_Y + DEFAULT_FONT_HEIGHT;
        setMeasuredDimension(width, height);
    }
}
