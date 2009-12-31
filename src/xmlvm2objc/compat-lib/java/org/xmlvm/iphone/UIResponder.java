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

    public void xmlvmInternalTouchesBegan(Set<UITouch> touches, UIEvent event) {
        if (getResponderDelegate() != null) {
            if (getResponderDelegate().touchesBegan(touches, event))
                return;
        }

        touchesBegan(touches, event);
        if (getNextResponder() != null) {
            getNextResponder().xmlvmInternalTouchesBegan(touches, event);
        }
    }

    public void xmlvmInternalTouchesCancelled(Set<UITouch> touches, UIEvent event) {
        if (getResponderDelegate() != null) {
            if (getResponderDelegate().touchesCancelled(touches, event))
                return;
        }

        touchesCancelled(touches, event);
        if (getNextResponder() != null) {
            getNextResponder().xmlvmInternalTouchesCancelled(touches, event);
        }
    }

    public void xmlvmInternalTouchesEnded(Set<UITouch> touches, UIEvent event) {
        if (getResponderDelegate() != null) {
            if (getResponderDelegate().touchesEnded(touches, event))
                return;
        }

        touchesEnded(touches, event);
        if (getNextResponder() != null) {
            getNextResponder().xmlvmInternalTouchesEnded(touches, event);
        }
    }

    public void xmlvmInternalTouchesMoved(Set<UITouch> touches, UIEvent event) {
        if (getResponderDelegate() != null) {
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
