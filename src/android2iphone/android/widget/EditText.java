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

import org.xmlvm.iphone.UIFont;
import org.xmlvm.iphone.UITextView;
import org.xmlvm.iphone.UIView;

import android.content.Context;
import android.util.AttributeSet;

public class EditText extends TextView {

    public EditText(Context c) {
        super(c);

        getUITextView().setText("");
    }

    public EditText(Context c, AttributeSet attrs) {
        super(c, attrs);
        getUITextView().setText("");
        parseAttributes(attrs);
    }

    public Object getText() {
        return getUITextView().getText();
    }

    public void setText(String string) {
        text = string;
        getUITextView().setText(string);
        requestLayout();
    }

    public void setLines(int i) {
        // TODO Auto-generated method stub

    }

    @Override
    protected UIView xmlvmCreateUIView(AttributeSet attrs) {
        return new UITextView();
    }

    private UITextView getUITextView() {
        return (UITextView) xmlvmGetUIView();
    }

    protected void parseAttributes(AttributeSet attrs) {
        super.parseAttributes(attrs);
    }

    protected UIFont xmlvmGetUIFont() {
        return ((UITextView) xmlvmGetUIView()).getFont();
    }

}
