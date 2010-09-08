package org.xmlvm.iphone;

import org.xmlvm.iphone.internal.renderer.UIToolbarRenderer;

/**
 * 
 * @author teras
 */
//TODO this class should be in 'internal' but we have to have it here because it is used as a base class
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
