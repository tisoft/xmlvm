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

import org.xmlvm.iphone.UIColor;
import org.xmlvm.iphone.UIFont;
import org.xmlvm.iphone.UITextBorderStyle;
import org.xmlvm.iphone.UITextField;

import android.content.Context;
import android.internal.XMLVMTheme;
import android.util.AttributeSet;
import android.view.MotionEvent;
import java.util.Set;
import org.xmlvm.iphone.UIEvent;
import org.xmlvm.iphone.UITouch;
import org.xmlvm.iphone.UIView;

public class EditText extends TextView {

    private static final int INSETS_X = 3;
    private static final int INSETS_Y = 3;

    public EditText(Context c) {
        super(c);
        initEditText(c, null);
    }

    public EditText(Context c, AttributeSet attrs) {
        super(c, attrs);
        initEditText(c, attrs);
    }

    private void initEditText(Context c, AttributeSet attrs) {
        ((UITextField) xmlvmGetViewHandler().getContentView()).setText("");

        if (attrs != null && attrs.getAttributeCount() > 0) {
            parseEditTextAttributes(attrs);
        }
    }

    public Object getText() {
        return ((UITextField) xmlvmGetViewHandler().getContentView()).getText();
    }

    @Override
    public void setText(String string) {
        text = string;
        ((UITextField) xmlvmGetViewHandler().getContentView()).setText(string);
        requestLayout();
    }

    public void setLines(int i) {
        // TODO Auto-generated method stub

    }

    public void setHint(CharSequence hint) {
        ((UITextField) xmlvmGetViewHandler().getContentView()).setPlaceholder(hint.toString());
    }

    @Override
    protected UIView xmlvmNewUIView(AttributeSet attrs) {
        UITextField field = new UITextField() {

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
        if (XMLVMTheme.getTheme() == XMLVMTheme.XMLVM_THEME_ANDROID) {
            field.setBackgroundColor(UIColor.whiteColor);
            field.setBorderStyle(UITextBorderStyle.Bezel);
        }
        return field;
    }

    private void parseEditTextAttributes(AttributeSet attrs) {
        setIgnoreRequestLayout(true);

        // Implementation of attribute parsing

        setIgnoreRequestLayout(false);
    }

    @Override
    protected UIFont xmlvmGetUIFont() {
        return ((UITextField) xmlvmGetViewHandler().getContentView()).getFont();
    }

    @Override
    protected int xmlvmGetInsetsX() {
        return INSETS_X;
    }

    @Override
    protected int xmlvmGetInsetsY() {
        return INSETS_Y;
    }

}
