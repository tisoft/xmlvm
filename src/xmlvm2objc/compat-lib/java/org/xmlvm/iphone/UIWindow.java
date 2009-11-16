package org.xmlvm.iphone;

public class UIWindow extends UIView {

    public UIWindow() {
        this(new CGRect(0, 0, 0, 0));
    }

    public UIWindow(CGRect rect) {
        super(rect);
    }

    public void makeKeyAndVisible() {
        if (UIApplication.sharedApplication().getKeyWindow() == this)
            return;
        UIApplication.sharedApplication().setKeyWindow(this);
    }
}
