package org.xmlvm.iphone;

public class UIWindow extends UIView {

    public UIWindow() {
        this(new CGRect(0, 0, 0, 0));
    }

    public UIWindow(CGRect rect) {
        super(rect);
        UIApplication.sharedApplication().xmlvmAddWindow(this);
    }

    public void makeKeyAndVisible() {
        if (UIApplication.sharedApplication().getKeyWindow() == this)
            return;
        UIApplication.sharedApplication().setKeyWindow(this);
    }
    
    public void xmlvmDestroy() {
        UIApplication.sharedApplication().xmlvmRemoveWindow(this);
    }
}
