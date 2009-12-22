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
import org.xmlvm.iphone.UIButton;
import org.xmlvm.iphone.UIButtonType;
import org.xmlvm.iphone.UIControl;
import org.xmlvm.iphone.UIControlDelegate;
import org.xmlvm.iphone.UIControlEvent;
import org.xmlvm.iphone.UIControlState;
import org.xmlvm.iphone.UIFont;
import org.xmlvm.iphone.UIView;

import android.content.Context;
import android.util.AttributeSet;
import android.view.ViewGroup;
import android.widget.AbsoluteLayout.LayoutParams;

public class Button extends TextView {
    private static final int INSETS_X            = 10;
    private static final int INSETS_Y            = 5;

    public Button(Context c) {
        super(c);
    }

    public Button(Context c, AttributeSet attrs) {
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

    public void setText(String text) {
        this.text = text;
        UIView view = xmlvmGetUIView();
        ((UIButton) view).setTitle(text, UIControlState.Normal);
        requestLayout();
    }

    public void setOnClickListener(OnClickListener listener) {
        final OnClickListener theListener = listener;
        ((UIControl) xmlvmGetUIView()).addTarget(new UIControlDelegate() {

            @Override
            public void raiseEvent(UIControlDelegate sender, int eventType) {
                theListener.onClick(Button.this);
            }

        }, UIControlEvent.TouchUpInside);
    }

    @Override
    protected UIView xmlvmCreateUIView(AttributeSet attrs) {
        return UIButton.buttonWithType(UIButtonType.RoundedRect);
    }

    protected void parseAttributes(AttributeSet attrs) {
        super.parseAttributes(attrs);
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
        UIFont font = ((UIButton) xmlvmGetUIView()).getFont();
        if (font == null) {
            font = UIFont.boldSystemFontOfSize(UIFont.buttonFontSize());
        }

        return NSString.sizeWithFont(text, font);
    }

}