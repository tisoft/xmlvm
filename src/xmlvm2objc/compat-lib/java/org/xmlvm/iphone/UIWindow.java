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

@XMLVMSkeletonOnly
public class UIWindow extends UIView {

    public UIWindow() {
        this(CGRect.Zero());
    }

    public UIWindow(CGRect rect) {
        super(rect);
    }

    public void makeKeyAndVisible() {
        if (UIApplication.sharedApplication().getKeyWindow() == this)
            return;
        UIApplication.sharedApplication().setKeyWindow(this);
    }

    public void sendEvent(UIEvent event) {
        // TODO : Java implementation
    }

    public CGPoint convertPointToWindow(CGPoint point, UIWindow window) {
        // TODO : Java implementation
        return null;
    }

    public CGPoint convertPointFromWindow(CGPoint point, UIWindow window) {
        // TODO : Java implementation
        return null;
    }

    public CGRect convertRectToWindow(CGRect point, UIWindow window) {
        // TODO : Java implementation
        return null;
    }

    public CGRect convertRectFromWindow(CGRect point, UIWindow window) {
        // TODO : Java implementation
        return null;
    }
}
