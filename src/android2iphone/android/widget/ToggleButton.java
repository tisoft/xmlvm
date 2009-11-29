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

import org.xmlvm.iphone.UIView;

import android.content.Context;
import android.internal.UIToggleButton;
import android.util.AttributeSet;

/**
 * @author arno
 * 
 */
public class ToggleButton extends CompoundButton {

    public ToggleButton(Context c) {
        super(c);
    }

    public ToggleButton(Context c, AttributeSet attrs) {
        super(c, attrs);
    }

    protected void parseAttributes(AttributeSet attrs) {
        super.parseAttributes(attrs);
        String value = attrs.getAttributeValue(null, "textOn");
        setTextOn(value != null ? value : "");
        value = attrs.getAttributeValue(null, "textOff");
        setTextOff(value != null ? value : "");
    }

    @Override
    protected UIView xmlvmCreateUIView(AttributeSet attrs) {
        return new UIToggleButton();
    }

    public void setText(String text) {
        this.text = text; 
    }

    void setTextOff(String textOff) {
        ((UIToggleButton) xmlvmGetUIView()).setTextOff(textOff);
        requestLayout();
    }

    void setTextOn(String textOn) {
        ((UIToggleButton) xmlvmGetUIView()).setTextOff(textOn);
        requestLayout();
    }
}
