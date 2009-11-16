package org.xmlvm.iphone;

import java.util.HashMap;
import java.util.Map;

public class UIControl extends UIView {

    protected Map<Integer, UIControlDelegate> delegates;

    public UIControl() {
        this(new CGRect(0, 0, 0, 0));
    }

    public UIControl(CGRect rect) {
        super(rect);
        delegates = new HashMap<Integer, UIControlDelegate>();
    }

    public void addTarget(UIControlDelegate delegate, int UIControlEvent) {
        delegates.put(UIControlEvent, delegate);
    }
}
