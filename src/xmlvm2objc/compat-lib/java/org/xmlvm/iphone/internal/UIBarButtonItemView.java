package org.xmlvm.iphone.internal;

import org.xmlvm.iphone.CGSize;
import org.xmlvm.iphone.UIBarButtonItem;
import org.xmlvm.iphone.UIColor;
import org.xmlvm.iphone.internal.renderer.UIBarButtonItemRenderer;

/**
 * 
 * @author teras
 */
public class UIBarButtonItemView extends UIBarItemView {

    public UIBarButtonItemView(UIBarButtonItem item, boolean isBack) {
        super();
        xmlvmSetRenderer(new UIBarButtonItemRenderer(item, this));
        setTitleColor(UIColor.whiteColor, 0);
        setTitleShadowColor(UIColor.grayColor, 0);
        setTitleShadowOffset(new CGSize(0, -1), 0);
    }

    public void setBack(boolean back) {
        ((UIBarButtonItemRenderer) xmlvmGetRenderer()).setBack(back);

    }
}
