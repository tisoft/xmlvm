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

import java.util.Set;

public class UIResponder extends NSObject {

    private UIResponderDelegate delegate      = null;
    protected boolean           callDelegates = true;

    public UIResponder() {
    }

    public void xmlvmInternalTouchesBegan(Set<UITouch> touches, UIEvent event) {
        if (callDelegates && getResponderDelegate() != null) {
            if (getResponderDelegate().touchesBegan(touches, event))
                return;
        }

        touchesBegan(touches, event);
        if (getNextResponder() != null) {
            getNextResponder().xmlvmInternalTouchesBegan(touches, event);
        }
    }

    public void xmlvmInternalTouchesCancelled(Set<UITouch> touches, UIEvent event) {
        if (callDelegates && getResponderDelegate() != null) {
            if (getResponderDelegate().touchesCancelled(touches, event))
                return;
        }

        touchesCancelled(touches, event);
        if (getNextResponder() != null) {
            getNextResponder().xmlvmInternalTouchesCancelled(touches, event);
        }
    }

    public void xmlvmInternalTouchesEnded(Set<UITouch> touches, UIEvent event) {
        if (callDelegates && getResponderDelegate() != null) {
            if (getResponderDelegate().touchesEnded(touches, event))
                return;
        }

        touchesEnded(touches, event);
        if (getNextResponder() != null) {
            getNextResponder().xmlvmInternalTouchesEnded(touches, event);
        }
    }

    public void xmlvmInternalTouchesMoved(Set<UITouch> touches, UIEvent event) {
        if (callDelegates && getResponderDelegate() != null) {
            if (getResponderDelegate().touchesMoved(touches, event))
                return;
        }

        touchesMoved(touches, event);
        if (getNextResponder() != null) {
            getNextResponder().xmlvmInternalTouchesMoved(touches, event);
        }
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

    public UIResponderDelegate getResponderDelegate() {
        return delegate;
    }

    public void setDelegate(UIResponderDelegate delegate) {
        this.delegate = delegate;
    }
}
