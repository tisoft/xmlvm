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
import org.xmlvm.iphone.UIView;

import android.content.Context;
import android.internal.XMLVMTheme;
import android.util.AttributeSet;

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
        getUITextField().setText("");

        if (attrs != null && attrs.getAttributeCount() > 0) {
            parseEditTextAttributes(attrs);
        }
    }

    public Object getText() {
        return getUITextField().getText();
    }

    @Override
    public void setText(String string) {
        text = string;
        getUITextField().setText(string);
        requestLayout();
    }

    public void setLines(int i) {
        // TODO Auto-generated method stub

    }

    public void setHint(CharSequence hint) {
        getUITextField().setPlaceholder(hint.toString());
    }

    @Override
    protected UIView xmlvmCreateUIView(AttributeSet attrs) {
        UITextField field = new UITextField();
        if (XMLVMTheme.getTheme() == XMLVMTheme.XMLVM_THEME_ANDROID) {
            field.setBackgroundColor(UIColor.whiteColor);
            field.setBorderStyle(UITextBorderStyle.Bezel);
        }
        return field;
    }

    private UITextField getUITextField() {
        return (UITextField) xmlvmGetUIView();
    }

    private void parseEditTextAttributes(AttributeSet attrs) {
        setIgnoreRequestLayout(true);

        // Implementation of attribute parsing

        setIgnoreRequestLayout(false);
    }

    @Override
    protected UIFont xmlvmGetUIFont() {
        return getUITextField().getFont();
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
