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

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

public class UIControl extends UIView {

    protected Map<Integer, UIControlDelegate> delegates;

    public UIControl() {
        this(new CGRect(0, 0, 0, 0));
    }

    public UIControl(CGRect rect) {
        super(rect);
        delegates = new HashMap<Integer, UIControlDelegate>();
    }

    public void addTarget(UIControlDelegate delegate, int uiControlEvent) {
        delegates.put(uiControlEvent, delegate);
    }

    @Override
    public void touchesEnded(Set<UITouch> touches, UIEvent event) {
        if (touchedInsideView(touches)) {
            for (Iterator<Map.Entry<Integer, UIControlDelegate>> it = delegates.entrySet()
                    .iterator(); it.hasNext();) {
                Map.Entry<Integer, UIControlDelegate> e = it.next();
                if ((e.getKey().intValue() & TouchUpInside) > 0)
                    e.getValue().raiseEvent(this, UIControlEvent.TouchUpInside);
            }
        }
    }

}
