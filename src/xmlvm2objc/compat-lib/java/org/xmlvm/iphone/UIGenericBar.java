package org.xmlvm.iphone;

/**
 * 
 * @author teras
 */
// TODO this class should be in 'internal' but we have to have it here because
// it is used as a base class
public abstract class UIGenericBar extends UIView {

    public UIGenericBar() {
        this(new CGRect(0, 0, 0, 0));
    }

    public UIGenericBar(CGRect frame) {
        super(frame);
    }

    protected abstract void updateViews();
}
