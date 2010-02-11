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
import org.xmlvm.iphone.internal.renderer.UITextViewRenderer;

public class UITextView extends UIView {

    private String  text;
    private UIFont  font;
    private UIColor textColor;

    public UITextView(CGRect rect) {
        super(rect);
        init();
    }

    public UITextView() {
        super(new CGRect(0, 0, 0, 0));
        init();
    }

    private void init() {
        xmlvmSetRenderer(new UITextViewRenderer(this));
        this.setText("");
        this.setTextColor(UIColor.blackColor);
        Simulator.addKeyListener(this);
    }

    public UIFont getFont() {
        return font;
    }

    public void setFont(UIFont font) {
        this.font = font;
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

    /* TODO teras: this has to be removed from here */
    @Override
    public void keyTyped(char key) {
        if (key == '\b' && !text.equals(""))
            text = text.substring(0, text.length() - 1);
        else
            text += key;
        Simulator.redrawDisplay();
    }
}
