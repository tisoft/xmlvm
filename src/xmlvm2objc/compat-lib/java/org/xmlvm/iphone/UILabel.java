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
import org.xmlvm.iphone.internal.renderer.UILabelRenderer;

@XMLVMSkeletonOnly
public class UILabel extends UIView {

    private String  text;
    private UIFont  font;
    private UIColor textColor;
    private int     textAlignment;
    private int     lineBreakMode             = UILineBreakMode.TailTruncation;
    private int     numberOfLines             = 1;
    private CGSize  shadowOffset              = new CGSize(0, 1);
    private UIColor shadowColor               = null;
    private boolean adjustsFontSizeToFitWidth = false;


    public UILabel() {
        this(CGRect.Zero());
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

    public void setTextAlignment(int uiTextAlignment) {
        this.textAlignment = uiTextAlignment;
        this.setNeedsDisplay();
    }

    public int getTextAlignment() {
        return textAlignment;
    }

    public int getLineBreakMode() {
        return lineBreakMode;
    }

    public void setLineBreakMode(int lineBreakMode) {
        this.lineBreakMode = lineBreakMode;
    }

    public int getNumberOfLines() {
        return numberOfLines;
    }

    public void setNumberOfLines(int numberOfLines) {
        this.numberOfLines = numberOfLines;
    }

    public CGSize getShadowOffset() {
        return shadowOffset;
    }

    public void setShadowOffset(CGSize shadowOffset) {
        this.shadowOffset = shadowOffset;
    }

    public UIColor getShadowColor() {
        return shadowColor;
    }

    public void setShadowColor(UIColor shadowColor) {
        this.shadowColor = shadowColor;
    }

    public boolean isAdjustsFontSizeToFitWidth() {
        return adjustsFontSizeToFitWidth;
    }

    public void setAdjustsFontSizeToFitWidth(boolean adjustsFontSizeToFitWidth) {
        this.adjustsFontSizeToFitWidth = adjustsFontSizeToFitWidth;
    }
}
