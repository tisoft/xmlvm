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

package org.xmlvm.iphone;

import org.xmlvm.iphone.internal.Simulator;
import org.xmlvm.iphone.internal.renderer.UITextFieldRenderer;

public class UITextField extends UIView {

    private String  text;
    private UIFont  font;
    private UIColor textColor;
    private int     borderStyle;

    public UITextField() {
        this(new CGRect(0, 0, 0, 0));
    }

    public UITextField(CGRect rect) {
        super(rect);
        xmlvmSetRenderer(new UITextFieldRenderer(this));
        font = UIFont.fontWithNameSize("Arial", 16);
        setText("");
        setTextColor(UIColor.blackColor);
    }

    public void setText(String text) {
        this.text = text;
    }

    public String getText() {
        return this.text;
    }

    public void setTextColor(UIColor color) {
        this.textColor = color;
    }

    public UIColor getTextColor() {
        return textColor;
    }

    public void setBorderStyle(int style) {
        this.borderStyle = style;
    }

    public int getBorderStyle() {
        return borderStyle;
    }

    public UIFont getFont() {
        return font;
    }

    public void setFont(UIFont font) {
        this.font = font;
    }

    /* TODO teras: this has to be removed from here */
    @Override
    public void keyTyped(char key) {
        if (key == '\b' && !text.equals(""))
            text = text.substring(0, text.length() - 1);
        else
            text += key;
        Simulator.redrawDisplay();
    }

    public void setPlaceholder(String hint) {
        // TODO Auto-generated method stub
    }
}
