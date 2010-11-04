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

import org.xmlvm.XMLVMSkeletonOnly;
import org.xmlvm.iphone.internal.Simulator;
import org.xmlvm.iphone.internal.renderer.UITextFieldRenderer;

@XMLVMSkeletonOnly
public class UITextField extends UIView {

    private int                 autocapitalizationType        = UITextAutocapitalizationType.None;
    private int                 autocorrectionType            = UITextAutocorrectionType.Default;
    private boolean             enablesReturnKeyAutomatically = false;
    private int                 keyboardAppearance            = UIKeyboardAppearance.Default;
    private int                 keyboardType                  = UIKeyboardType.Default;
    private int                 returnKeyType                 = UIReturnKeyType.Default;
    private boolean             secureTextEntry               = false;
    private int                 textAlignment                 = UITextAlignment.Left;
    private String              text;
    private UIFont              font;
    private UIColor             textColor;
    private int                 borderStyle;
    private UITextFieldDelegate delegate;
    private boolean             adjustsFontSizeToFitWidth     = false;


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

    public void setBorderStyle(int uiTextBorderStyle) {
        this.borderStyle = uiTextBorderStyle;
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

    public boolean isAdjustsFontSizeToFitWidth() {
        return adjustsFontSizeToFitWidth;
    }

    public void setAdjustsFontSizeToFitWidth(boolean adjustsFontSizeToFitWidth) {
        this.adjustsFontSizeToFitWidth = adjustsFontSizeToFitWidth;
    }

    public int getTextAlignment() {
        return textAlignment;
    }

    public void setTextAlignment(int uiTextAlignment) {
        this.textAlignment = uiTextAlignment;
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

    public void setDelegate(UITextFieldDelegate delegate) {
        this.delegate = delegate;
    }

    public UITextFieldDelegate getDelegate() {
        return delegate;
    }
}
