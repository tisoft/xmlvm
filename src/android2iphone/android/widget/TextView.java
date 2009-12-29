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
import org.xmlvm.iphone.CGSize;
import org.xmlvm.iphone.NSString;
import org.xmlvm.iphone.UIFont;
import org.xmlvm.iphone.UILabel;
import org.xmlvm.iphone.UIView;

import android.content.Context;
import android.graphics.Typeface;
import android.internal.Assert;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsoluteLayout.LayoutParams;

public class TextView extends View {

    private static final int INSETS_X            = 0;
    private static final int INSETS_Y            = 0;

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

        int width;
        int height;

        if (l instanceof AbsoluteLayout.LayoutParams) {
            CGSize size = getTextSize();
            width = l.width == LayoutParams.WRAP_CONTENT ? (int) size.width + 2 * INSETS_X: l.width;
            height = l.height == LayoutParams.WRAP_CONTENT ? (int) size.height + 2 * INSETS_Y : l.height;

            xmlvmGetUIView().setFrame(
                    new CGRect(((AbsoluteLayout.LayoutParams) l).x,
                            ((AbsoluteLayout.LayoutParams) l).y, width, height));
        }
    }

    public final void setText(int resid) {
        String str = getContext().getResources().getText(resid);
        setText(str);
    }

    public void setText(String string) {
        this.text = string;
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
        Log.w("xmlvm", "TextView.setTypeface() not implemented");
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
        int minWidth = getSuggestedMinimumWidth();
        int minHeight = getSuggestedMinimumHeight();

        CGSize size = getTextSize();
        int width = MeasureSpec.getMode(widthMeasureSpec) == MeasureSpec.EXACTLY ? MeasureSpec
                .getSize(widthMeasureSpec) : 2 * INSETS_X + (int) size.width;
        int height = MeasureSpec.getMode(heightMeasureSpec) == MeasureSpec.EXACTLY ? MeasureSpec
                .getSize(heightMeasureSpec) : 2 * INSETS_Y + (int) size.height;
        setMeasuredDimension(Math.max(width, minWidth), Math.max(height, minHeight));
    }

    private CGSize getTextSize() {
        UIFont font = ((UILabel) xmlvmGetUIView()).getFont();
        if (font == null) {
            font = UIFont.systemFontOfSize(UIFont.labelFontSize());
        }

        return NSString.sizeWithFont(text, font);
    }

}
