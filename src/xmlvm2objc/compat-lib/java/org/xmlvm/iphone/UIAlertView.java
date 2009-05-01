package org.xmlvm.iphone;

public class UIAlertView extends UIView {

    private String              title;
    private String              message;
    private UIAlertViewDelegate delegate;
    private String              cancelButtonTitle;

    public UIAlertView(String title, String message, UIAlertViewDelegate delegate,
            String cancelButtonTitle) {
        this.title = title;
        this.message = message;
        this.delegate = delegate;
        this.cancelButtonTitle = cancelButtonTitle;
    }

    public void show() {
        // TODO just a dummy implementation
        delegate.clickedButtonAtIndex(this, 0);
    }
    
    public void setTitle(String title) {
        // TODO
    }
    
    public int addButtonWithTitle(String title) {
        // TODO
        return 0;
    }
}
