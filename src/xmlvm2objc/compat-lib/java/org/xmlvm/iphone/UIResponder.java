package org.xmlvm.iphone;

import java.util.Set;

import org.xmlvm.iphone.internal.Simulator;

public class UIResponder {

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
}
