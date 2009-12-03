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
import org.xmlvm.iphone.UIFont;
import org.xmlvm.iphone.UILabel;
import org.xmlvm.iphone.UIView;

import android.content.Context;
import android.graphics.Typeface;
import android.internal.Assert;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;

public class TextView extends View {

    private static final int INSETS_X            = 0;
    private static final int INSETS_Y            = 0;
    private static final int DEFAULT_FONT_WIDTH  = 10;
    private static final int DEFAULT_FONT_HEIGHT = 18;

    protected String         text;

    public TextView(Context c) {
        super(c);
        text = "";
        // TODO Set default color white
        // uiLabel.setFontColor(new Color(0xffffff));
    }

    public TextView(Context c, AttributeSet attrs) {
        super(c, attrs);
    }

    public void setLayoutParams(ViewGroup.LayoutParams l) {
        layoutParams = l;

        // TODO Fix sizes
        int width = l.width < 0 ? 320 : l.width;
        int height = l.height < 0 ? 30 : l.height;
        int x = l instanceof AbsoluteLayout.LayoutParams ? ((AbsoluteLayout.LayoutParams) l).x : 0;
        int y = l instanceof AbsoluteLayout.LayoutParams ? ((AbsoluteLayout.LayoutParams) l).y : 0;

        // TODO Compute bounds depending on the text size
        // if (width == LayoutParams.WRAP_CONTENT) {
        // width = (int) image.getImage().getSize().width;
        // }
        // if (height == LayoutParams.WRAP_CONTENT) {
        // height = (int) image.getImage().getSize().height;
        // }

        xmlvmGetUIView().setFrame(new CGRect(x, y, width, height));
    }

    public final void setText(int resid) {
        Assert.NOT_IMPLEMENTED();
    }

    public void setText(String string) {
        getUILabel().setText(string);
        requestLayout();
    }

    public final void setText(CharSequence text) {
        Assert.NOT_IMPLEMENTED();
    }

    public void setTextSize(float size) {
        UIFont font = getUILabel().getFont();
        getUILabel().setFont(font.fontWithSize(size));
    }

    public void setTypeface(Typeface tf, int style) {
        Assert.NOT_IMPLEMENTED();
    }

    @Override
    protected UIView xmlvmCreateUIView(AttributeSet attrs) {
        return new UILabel();
    }

    private UILabel getUILabel() {
        return (UILabel) xmlvmGetUIView();
    }

    protected void parseAttributes(AttributeSet attrs) {
        super.parseAttributes(attrs);

        String value = attrs.getAttributeValue(null, "text");
        setText(value != null ? value : "");
    }

    @Override
    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        // TODO: Replace with a more elaborated measurement
        int width = MeasureSpec.getMode(widthMeasureSpec) == MeasureSpec.EXACTLY ? MeasureSpec
                .getSize(widthMeasureSpec) : 2 * INSETS_X + getUILabel().getText().length()
                * DEFAULT_FONT_WIDTH;
        int height = MeasureSpec.getMode(heightMeasureSpec) == MeasureSpec.EXACTLY ? MeasureSpec
                .getSize(heightMeasureSpec) : 2 * INSETS_Y + DEFAULT_FONT_HEIGHT;
        setMeasuredDimension(width, height);
    }

}
