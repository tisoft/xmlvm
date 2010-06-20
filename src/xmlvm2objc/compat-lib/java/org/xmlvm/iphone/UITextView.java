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

    private boolean editable;
    private int     autocapitalizationType        = UITextAutocapitalizationType.None;
    private int     autocorrectionType            = UITextAutocorrectionType.Default;
    private boolean enablesReturnKeyAutomatically = false;
    private int     keyboardAppearance            = UIKeyboardAppearance.Default;
    private int     keyboardType                  = UIKeyboardType.Default;
    private int     returnKeyType                 = UIReturnKeyType.Default;
    private boolean secureTextEntry               = false;
    private int     textAlignment                 = UITextAlignment.Left;
    private String  text;
    private UIFont  font;
    private UIColor textColor;

    public UITextView() {
        this(new CGRect(0, 0, 0, 0));
    }

    public UITextView(CGRect rect) {
        super(rect);
        xmlvmSetRenderer(new UITextViewRenderer(this));
        this.setText("");
        this.setTextColor(UIColor.blackColor);
        editable = true;
        Simulator.addKeyListener(this);
    }

    public int getAutocapitalizationType() {
        return autocapitalizationType;
    }

    public void setAutocapitalizationType(int UITextAutocapitalizationType) {
        this.autocapitalizationType = UITextAutocapitalizationType;
    }

    public int getAutocorrectionType() {
        return autocorrectionType;
    }

    public void setAutocorrectionType(int UITextAutocorrectionType) {
        this.autocorrectionType = UITextAutocorrectionType;
    }

    public boolean isEnablesReturnKeyAutomatically() {
        return enablesReturnKeyAutomatically;
    }

    public void setEnablesReturnKeyAutomatically(boolean enablesReturnKeyAutomatically) {
        this.enablesReturnKeyAutomatically = enablesReturnKeyAutomatically;
    }

    public int getKeyboardAppearance() {
        return keyboardAppearance;
    }

    public void setKeyboardAppearance(int UIKeyboardAppearance) {
        this.keyboardAppearance = UIKeyboardAppearance;
    }

    public int getKeyboardType() {
        return keyboardType;
    }

    public void setKeyboardType(int UIKeyboardType) {
        this.keyboardType = UIKeyboardType;
    }

    public int getReturnKeyType() {
        return returnKeyType;
    }

    public void setReturnKeyType(int UIReturnKeyType) {
        this.returnKeyType = UIReturnKeyType;
    }

    public boolean isSecureTextEntry() {
        return secureTextEntry;
    }

    public void setSecureTextEntry(boolean secureTextEntry) {
        this.secureTextEntry = secureTextEntry;
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

    public int getTextAlignment() {
        return textAlignment;
    }

    public void setTextAlignment(int uiTextAlignment) {
        this.textAlignment = uiTextAlignment;
    }

    /* TODO : this has to be removed from here */
    @Override
    public void keyTyped(char key) {
        if (key == '\b' && !text.equals(""))
            text = text.substring(0, text.length() - 1);
        else
            text += key;
        Simulator.redrawDisplay();
    }

    public boolean isEditable() {
        return editable;
    }

    public void setEditable(boolean editable) {
        this.editable = editable;
    }
}
