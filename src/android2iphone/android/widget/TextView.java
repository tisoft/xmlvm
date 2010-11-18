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

import java.util.Set;

import org.xmlvm.iphone.CGRect;
import org.xmlvm.iphone.CGSize;
import org.xmlvm.iphone.NSString;
import org.xmlvm.iphone.UIColor;
import org.xmlvm.iphone.UIEvent;
import org.xmlvm.iphone.UIFont;
import org.xmlvm.iphone.UILineBreakMode;
import org.xmlvm.iphone.UIScreen;
import org.xmlvm.iphone.UITextAlignment;
import org.xmlvm.iphone.UITextField;
import org.xmlvm.iphone.UITouch;
import org.xmlvm.iphone.UIView;

import android.content.Context;
import android.graphics.Typeface;
import android.internal.Assert;
import android.internal.Dimension;
import android.internal.XMLVMTheme;
import android.text.InputType;
import android.text.TextWatcher;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsoluteLayout.LayoutParams;

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
        ((UITextField) xmlvmGetViewHandler().getContentView()).setText(string);
        requestLayout();
    }

    public String getText() {
        return ((UITextField) xmlvmGetViewHandler().getContentView()).getText();
    }

    public final void setText(CharSequence text) {
        setText(text.toString());
    }

    public void setRawInputType(int inputType) {
        // TODO: Are they supported on UILabels?
    }

    public final void append(CharSequence text) {
        setText(this.text + text.toString());
    }

    public void setTextSize(float size) {
        UITextField content = (UITextField) xmlvmGetViewHandler().getContentView();
        UIFont font = content.getFont();
        if (font == null) {
            content.setFont(UIFont.systemFontOfSize(size));
        } else {
            content.setFont(font.fontWithSize(size));
        }
    }

    public void setTypeface(Typeface tf, int style) {
        UITextField content = (UITextField) xmlvmGetViewHandler().getContentView();
        UIFont font;

        if (tf != null) {
            // TODO Implement this
            Assert.NOT_IMPLEMENTED();
        } else {
            font = content.getFont();
            if (font == null) {
                float size = UIFont.labelFontSize();
                font = UIFont.systemFontOfSize(size);
            }

            String family = font.familyName();
            String type = "";
            if ((style & Typeface.BOLD) > 0) {
                type += "Bold";
            }
            if ((style & Typeface.ITALIC) > 0) {
                type += "Italic";
            }
            content.setFont(UIFont.fontWithNameSize(family + "-" + type, font.pointSize()));
        }
    }

    @Override
    protected UIView xmlvmNewUIView(AttributeSet attrs) {
        UITextField view = new UITextField() {

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

        if (XMLVMTheme.getTheme() == XMLVMTheme.XMLVM_THEME_NATIVE) {
            view.setBackgroundColor(UIColor.whiteColor);
            view.setTextColor(UIColor.blackColor);
        } else {
            view.setTextColor(UIColor.whiteColor);
        }

        // view.setEditable(false);
        return view;
    }

    private void parseTextViewAttributes(AttributeSet attrs) {
        setIgnoreRequestLayout(true);

        setText("");
        String value = attrs.getAttributeValue(null, "text");
        if (value != null) {
            if (value.startsWith("@string/")) {
                int id = attrs.getAttributeResourceValue(null, "text", -1);
                if (id != -1) {
                    setText(getContext().getString(id));
                }
            } else {
                setText(value);
            }
        }

        value = attrs.getAttributeValue(null, "textSize");
        if (value != null && value.length() > 0) {
            DisplayMetrics metrics = new DisplayMetrics();
            metrics.setToDefaults();
            int size = (int) Dimension.resolveDimension(getContext(), value, metrics);
            setTextSize(size);
        }

        value = attrs.getAttributeValue(null, "textStyle");
        int style = Typeface.NORMAL;
        if (value != null && value.length() > 0) {
            value = value.toLowerCase();
            if (value.contains("bold")) {
                style |= Typeface.BOLD;
            }
            if (value.contains("italic")) {
                style |= Typeface.ITALIC;
            }

            setTypeface(null, style);
        }

        value = attrs.getAttributeValue(null, "hint");
        if (value != null && value.length() > 0) {
            if (value.startsWith("@string/")) {
                int id = attrs.getAttributeResourceValue(null, "hint", -1);
                if (id != -1) {
                    setHint(getContext().getString(id));
                }
            } else {
                setHint(value);
            }
        }

        value = attrs.getAttributeValue(null, "inputType");
        if (value != null && value.length() > 0) {
            int type = 0;
            boolean isPassword = value.contains("textPassword");
            if (isPassword) {
                type |= InputType.TYPE_TEXT_VARIATION_PASSWORD;
            }

            setRawInputType(type);
        }

        value = attrs.getAttributeValue(null, "password");
        if (value != null && value.length() > 0) {
            boolean isPassword = Boolean.parseBoolean(value);
            if (isPassword) {
                setRawInputType(InputType.TYPE_TEXT_VARIATION_PASSWORD);
            }
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
        return ((UITextField) xmlvmGetViewHandler().getContentView()).getFont();
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
        UITextField content = (UITextField) xmlvmGetViewHandler().getContentView();
        content.setTextAlignment(UITextAlignment.Center);
        content.setFont(UIFont.boldSystemFontOfSize(16));
    }

    public void setHint(CharSequence hint) {
        ((UITextField) xmlvmGetViewHandler().getContentView()).setPlaceholder(hint.toString());
    }

}
