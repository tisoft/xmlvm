
package org.xmlvm.iphone.internal;

import org.xmlvm.iphone.CGRect;
import org.xmlvm.iphone.UIView;

/**
 * 
 * @author teras
 */
public abstract class UIGenericBar extends UIView {

    public UIGenericBar() {
        this(new CGRect(0, 0, 0, 0));
    }

    public UIGenericBar(CGRect frame) {
        super(frame);
    }

    protected abstract void updateViews();
}
