
package org.xmlvm.iphone.internal;

import org.xmlvm.iphone.CGRect;
import org.xmlvm.iphone.UIColor;
import org.xmlvm.iphone.internal.renderer.UIToolbarRenderer;

/**
 * 
 * @author teras
 */
public abstract class UIGenericToolbar extends UIGenericBar {

    private UIColor tintColor;
    private boolean translucent;
    private int     barStyle;

    public UIGenericToolbar() {
        this(new CGRect(0, 0, 0, 0));
    }

    public UIGenericToolbar(CGRect frame) {
        super(frame);
        translucent = false;
        setTintColor(UIToolbarRenderer.defaultColor);
        xmlvmSetRenderer(new UIToolbarRenderer(this));
    }

    public int getBarStyle() {
        return barStyle;
    }

    public void setBarStyle(int UIBarStyle) {
        this.barStyle = UIBarStyle;
        updateViews();
    }

    public UIColor getTintColor() {
        return tintColor;
    }

    public void setTintColor(UIColor tintColor) {
        if (tintColor == null)
            throw new NullPointerException("Tint color can not be null");
        this.tintColor = tintColor;
        updateViews();
    }

    public boolean isTranslucent() {
        return translucent;
    }

    public void setTranslucent(boolean translucent) {
        this.translucent = translucent;
        updateViews();
    }

}
