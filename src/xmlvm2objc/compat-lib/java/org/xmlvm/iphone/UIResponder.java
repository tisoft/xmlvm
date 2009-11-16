package org.xmlvm.iphone;

import java.util.Set;

import org.xmlvm.iphone.internal.Simulator;

public class UIResponder {

    private UIResponderDelegate delegate = null;

    public UIResponder() {
        Simulator.addTouchesListener(this);
    }

    public UIResponder(boolean add) {
        if (add) {
            Simulator.addTouchesListener(this);
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
            return ((UIView) this).getSuperview();
        } else {
            return UIApplication.sharedApplication();
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
