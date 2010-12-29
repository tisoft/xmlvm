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
