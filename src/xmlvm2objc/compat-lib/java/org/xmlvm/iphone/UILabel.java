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

import org.xmlvm.iphone.internal.renderer.UILabelRenderer;

public class UILabel extends UIView {

    private String  text;
    private UIFont  font;
    private UIColor textColor;
    private int     textAlignment;

    public UILabel() {
        this(new CGRect(0, 0, 0, 0));
    }

    public UILabel(CGRect rect) {
        super(rect);
        xmlvmSetRenderer(new UILabelRenderer(this));
        setTextColor(UIColor.blackColor);
        setBackgroundColor(UIColor.whiteColor);
        setTextAlignment(UITextAlignment.Left);
        setUserInteractionEnabled(false);
        setText("");
    }

    public void setText(String text) {
        this.text = text;
        this.setNeedsDisplay();
    }

    public String getText() {
        return text;
    }

    public void setFont(UIFont font) {
        this.font = font;
        this.setNeedsDisplay();
    }

    public UIFont getFont() {
        return this.font;
    }

    public void setTextColor(UIColor textColor) {
        this.textColor = textColor;
        this.setNeedsDisplay();
    }

    public UIColor getTextColor() {
        return textColor;
    }

    public void setTextAlignment(int UITextAlignment) {
        this.textAlignment = UITextAlignment;
        this.setNeedsDisplay();
    }

    public int getTextAlignment() {
        return textAlignment;
    }
}
