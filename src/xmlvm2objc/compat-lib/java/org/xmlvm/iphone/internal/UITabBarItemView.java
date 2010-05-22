package org.xmlvm.iphone.internal;

import org.xmlvm.iphone.UIColor;
import org.xmlvm.iphone.UIFont;
import org.xmlvm.iphone.UITabBarItem;
import org.xmlvm.iphone.internal.renderer.UITabBarItemRenderer;

/**
 * 
 * @author teras
 */
public class UITabBarItemView extends UIBarItemView {

    private final static UIFont  DEFAULT_FONT  = UIFont.fontWithNameSize("Arial Bold", 10);
    private final static UIColor DEFAULT_COLOR = UIColor.colorWithRGBA(0.58f, 0.58f, 0.58f, 1f);

    public UITabBarItemView(UITabBarItem item) {
        super();
        xmlvmSetRenderer(new UITabBarItemRenderer(item, this));
        setTitleColor(DEFAULT_COLOR, 0);
        setFont(DEFAULT_FONT);
    }
}
