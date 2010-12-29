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

import java.util.Set;

import org.xmlvm.XMLVMSkeletonOnly;

@XMLVMSkeletonOnly
public class UIResponder extends NSObject {

    protected boolean callDelegates = true;


    public UIResponder() {
    }

    public void touchesBegan(Set<UITouch> touches, UIEvent event) {
        // Do nothing
    }

    public void touchesCancelled(Set<UITouch> touches, UIEvent event) {
        // Do nothing
    }

    public void touchesEnded(Set<UITouch> touches, UIEvent event) {
        // Do nothing
    }

    public void touchesMoved(Set<UITouch> touches, UIEvent event) {
        // Do nothing
    }

    public UIResponder getNextResponder() {
        if (this instanceof UIView) {
            UIView superView = ((UIView) this).getSuperview();
            return superView != null ? superView : UIApplication.sharedApplication();
        } else {
            return null;
        }
    }

    public boolean resignFirstResponder() {
        // Do nothing
        return true;
    }

    public boolean becomeFirstResponder() {
        // TODO Implement this
        return true;
    }
}
