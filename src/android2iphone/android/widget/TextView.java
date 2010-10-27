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
import org.xmlvm.iphone.UILineBreakMode;
import org.xmlvm.iphone.UIScreen;
import org.xmlvm.iphone.UITextAlignment;

import android.content.Context;
import android.graphics.Typeface;
import android.internal.AndroidManifest;
import android.internal.Assert;
import android.internal.XMLVMTheme;
import android.text.TextWatcher;
import android.util.AttributeSet;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsoluteLayout.LayoutParams;
import java.util.Set;
import org.xmlvm.iphone.UIColor;
import org.xmlvm.iphone.UIEvent;
import org.xmlvm.iphone.UITouch;
import org.xmlvm.iphone.UIView;

public class TextView extends View {

    private static final int INSETS_X = 0;
    private static final int INSETS_Y = 0;

    protected String         text     = "";

    public TextView(Context c) {
        super(c);
        initTextView(c, null);
    }

    public TextView(Context c, AttributeSet attrs) {
        super(c, attrs);
        initTextView(c, attrs);
    }

    private void initTextView(Context c, AttributeSet attrs) {
        if (attrs != null && attrs.getAttributeCount() > 0) {
            parseTextViewAttributes(attrs);
        }
    }

    @Override
    public void setLayoutParams(ViewGroup.LayoutParams l) {
        layoutParams = l;

        int width;
        int height;

        if (l instanceof AbsoluteLayout.LayoutParams) {
            CGSize size = xmlvmGetTextSize();
            width = l.width == LayoutParams.WRAP_CONTENT ? (int) size.width + 2 * INSETS_X
                    : l.width;
            height = l.height == LayoutParams.WRAP_CONTENT ? (int) size.height + 2 * INSETS_Y
                    : l.height;

            xmlvmGetViewHandler().setFrame(
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
        ((UILabel) xmlvmGetViewHandler().getContentView()).setText(string);
        requestLayout();
    }

    public final void setText(CharSequence text) {
        setText(text.toString());
    }

    public final void append(CharSequence text) {
        setText(this.text + text.toString());
    }

    public void setTextSize(float size) {
        UILabel content = (UILabel) xmlvmGetViewHandler().getContentView();
        UIFont font = content.getFont();
        if (font == null) {
            content.setFont(UIFont.systemFontOfSize(size));
        } else {
            content.setFont(font.fontWithSize(size));
        }
    }

    public void setTypeface(Typeface tf, int style) {
        Log.w("xmlvm", "TextView.setTypeface() not implemented");
    }

    @Override
    protected UIView xmlvmNewUIView(AttributeSet attrs) {
        UILabel label = new UILabel() {

            @Override
            public void touchesBegan(Set<UITouch> touches, UIEvent event) {
                xmlvmTouchesEvent(MotionEvent.ACTION_DOWN, touches, event);
            }

            @Override
            public void touchesMoved(Set<UITouch> touches, UIEvent event) {
                xmlvmTouchesEvent(MotionEvent.ACTION_MOVE, touches, event);
            }

            @Override
            public void touchesCancelled(Set<UITouch> touches, UIEvent event) {
                xmlvmTouchesEvent(MotionEvent.ACTION_CANCEL, touches, event);
            }

            @Override
            public void touchesEnded(Set<UITouch> touches, UIEvent event) {
                xmlvmTouchesEvent(MotionEvent.ACTION_UP, touches, event);
            }
        };
        label.setNumberOfLines(0);
        label.setLineBreakMode(UILineBreakMode.WordWrap);
        label.setTextAlignment(UITextAlignment.Left);
        label.setBackgroundColor(null);

        if (XMLVMTheme.getTheme() == XMLVMTheme.XMLVM_THEME_ANDROID) {
            label.setTextColor(UIColor.whiteColor);
        }
        return label;
    }

    private void parseTextViewAttributes(AttributeSet attrs) {
        setIgnoreRequestLayout(true);

        String value = attrs.getAttributeValue(null, "text");
        if (value != null) {
            if (value.startsWith("@string/")) {
                String name = value.substring("@string/".length());
                int id = getContext().getResources().getIdentifier(name, "string",
                        AndroidManifest.getPackageName());
                setText(getContext().getString(id));
            } else {
                setText(value);
            }
        } else {
            setText("");
        }

        setIgnoreRequestLayout(false);
    }

    @Override
    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        int minWidth = getSuggestedMinimumWidth();
        int minHeight = getSuggestedMinimumHeight();

        CGSize size = xmlvmGetTextSize();
        int width = MeasureSpec.getMode(widthMeasureSpec) == MeasureSpec.EXACTLY ? MeasureSpec
                .getSize(widthMeasureSpec) : Math.max(2 * xmlvmGetInsetsX(), paddingLeft
                + paddingRight)
                + (int) size.width;
        int height = MeasureSpec.getMode(heightMeasureSpec) == MeasureSpec.EXACTLY ? MeasureSpec
                .getSize(heightMeasureSpec) : Math.max(2 * xmlvmGetInsetsY(), paddingTop
                + paddingBottom)
                + (int) size.height;
        setMeasuredDimension(Math.max(width, minWidth), Math.max(height, minHeight));
    }

    protected CGSize xmlvmGetTextSize() {
        UIScreen screen = UIScreen.mainScreen();
        CGRect rect = screen.getApplicationFrame();
        CGSize totalPaddings = computeTotalPadding();
        CGSize constraints = new CGSize(rect.size.width - totalPaddings.width, rect.size.height
                - totalPaddings.height);

        UIFont font = xmlvmGetUIFont();
        if (font == null) {
            font = UIFont.systemFontOfSize(UIFont.labelFontSize());
        }

        CGSize mSize = NSString.sizeWithFont("M", font);
        CGSize textSize = NSString.sizeWithFont(text, font, constraints, UILineBreakMode.WordWrap);
        if (text.length() == 0) {
            textSize.height = mSize.height;
        }

        return textSize;
    }

    private CGSize computeTotalPadding() {
        View v = this;
        CGSize result = new CGSize(0, 0);

        do {
            result.width += (v.getPaddingLeft() + v.getPaddingRight());
            result.height += (v.getPaddingTop() + v.getPaddingBottom());
            v = (View) v.getParent();
        } while (v != null);

        return result;
    }

    protected UIFont xmlvmGetUIFont() {
        return ((UILabel) xmlvmGetViewHandler().getContentView()).getFont();
    }

    protected int xmlvmGetInsetsX() {
        return INSETS_X;
    }

    protected int xmlvmGetInsetsY() {
        return INSETS_Y;
    }

    public void addTextChangedListener(TextWatcher watcher) {
        Assert.NOT_IMPLEMENTED();
    }

    void setToastAttributes() {
        UILabel content = (UILabel) xmlvmGetViewHandler().getContentView();
        content.setTextAlignment(UITextAlignment.Center);
        content.setFont(UIFont.boldSystemFontOfSize(16));
    }
}
