/* Copyright (c) 2002-2011 by XMLVM.org
 *
 * Project Info:  http://www.xmlvm.org
 *
 * This program is free software; you can redistribute it and/or modify it
 * under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 *
 * This library is distributed in the hope that it will be useful, but
 * WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY
 * or FITNESS FOR A PARTICULAR PURPOSE. See the GNU Lesser General Public
 * License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public
 * License along with this library; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301,
 * USA.
 */

package android.internal;

import java.util.Set;

import org.xmlvm.iphone.CGRect;
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
        setUserInteractionEnabled(true);
        updateVisuals();
    }

    public UIToggleButton(CGRect rect) {
        super(rect);
    }

    @Override
    public void touchesEnded(Set<UITouch> touches, UIEvent event) {
        this.selected = !this.selected;
        updateVisuals();
    }

    public void setTextOff(String textOff) {
        this.textOff = textOff;
        updateVisuals();
    }

    public void setTextOn(String textOn) {
        this.textOn = textOn;
        updateVisuals();
    }

    private void updateVisuals() {
        if (selected) {
            this.setText(textOn);
        } else {
            this.setText(textOff);
        }
    }

    public void setText(String text) {
        this.text = text;
        
        // TODO need to do something with text
    }
    
    public void setSelected(boolean selected) {
        this.selected = selected;
        updateVisuals();
    }
    
    public boolean isSelected() {
        return selected;
    }
}
