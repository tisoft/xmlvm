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

import static org.xmlvm.iphone.UIControlEvent.TouchUpInside;
import static org.xmlvm.iphone.UIControlEvent.ValueChanged;

import java.util.Iterator;
import java.util.Map;
import java.util.Set;

import org.xmlvm.iphone.internal.renderer.UISwitchRenderer;

public class UISwitch extends UIControl {

    public static final float kSwitchButtonWidth  = 94.0f;
    public static final float kSwitchButtonHeight = 27.0f;
    private boolean           isOn;

    public UISwitch() {
        this(new CGRect(0, 0, kSwitchButtonWidth, kSwitchButtonHeight));
    }

    public UISwitch(CGRect rect) {
        super(new CGRect(rect.origin.x, rect.origin.y, kSwitchButtonWidth, kSwitchButtonHeight));
        xmlvmSetRenderer(new UISwitchRenderer(this));
        setOn(false);
        setBackgroundColor(UIColor.clearColor);
    }

    public void setOn(boolean on) {
        this.isOn = on;
        this.setNeedsDisplay();
    }

    public boolean isOn() {
        return isOn;
    }

    @Override
    public void setFrame(CGRect rect) {
        rect.size.width = kSwitchButtonWidth;
        rect.size.height = kSwitchButtonHeight;
        super.setFrame(rect);
    }

    /* TODO teras: find a better way to receive this type of events */
    @Override
    public void touchesEnded(Set<UITouch> touches, UIEvent event) {
        UITouch t = touches.iterator().next();
        CGPoint p = t.locationInView(this);
        CGRect r = this.getBounds();

        if (!(p.x < 0 || p.y < 0 || p.x > r.size.width || p.y > r.size.height)) {
            for (Iterator<Map.Entry<Integer, UIControlDelegate>> it = delegates.entrySet()
                    .iterator(); it.hasNext();) {
                Map.Entry<Integer, UIControlDelegate> e = it.next();
                if ((e.getKey().intValue() & TouchUpInside) > 0) {
                    e.getValue().raiseEvent(this, UIControlEvent.TouchUpInside);
                }
            }
            setOn(!this.isOn);
            for (Iterator<Map.Entry<Integer, UIControlDelegate>> it = delegates.entrySet()
                    .iterator(); it.hasNext();) {
                Map.Entry<Integer, UIControlDelegate> e = it.next();
                if ((e.getKey().intValue() & ValueChanged) > 0) {
                    e.getValue().raiseEvent(this, UIControlEvent.ValueChanged);
                }
            }
        }
    }
}
