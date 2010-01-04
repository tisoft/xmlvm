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

package android.internal;

import java.util.Set;

import org.xmlvm.iphone.CGRect;
import org.xmlvm.iphone.UIColor;
import org.xmlvm.iphone.UIEvent;
import org.xmlvm.iphone.UITouch;
import org.xmlvm.iphone.UIView;

/**
 * UIToggleButton is a fictitious Cocoa class that mimics Android's ToggleButton
 * widget. It is needed because Cocoa does not offer any equivalent widgets.
 */
public class UIToggleButton extends UIView {

    private String  textOn   = "ON";
    private String  textOff  = "OFF";
    private String  text     = "";

    private boolean selected = false;

    public UIToggleButton() {
        super();
        this.setUserInteractionEnabled(true);
        redraw();
    }

    public UIToggleButton(CGRect rect) {
        super(rect);
    }

    @Override
    public void touchesEnded(Set<UITouch> touches, UIEvent event) {
        this.selected = !this.selected;
        redraw();
    }

    public void setTextOff(String textOff) {
        this.textOff = textOff;
        redraw();
    }

    public void setTextOn(String textOn) {
        this.textOn = textOn;
        redraw();
    }

    private void redraw() {
        if (selected) {
            this.setText(textOn);
            this.setBackgroundColor(UIColor.greenColor);
        } else {
            this.setText(textOff);
            this.setBackgroundColor(UIColor.yellowColor);
        }
    }

    public void setText(String text) {
        this.text = text;
        
        // TODO need to do something with text
    }
    
    public void setSelected(boolean selected) {
        this.selected = selected;
        redraw();
    }
    
    public boolean isSelected() {
        return selected;
    }
}
