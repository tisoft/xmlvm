
package org.xmlvm.iphone;

import java.lang.reflect.Method;

import org.xmlvm.iphone.internal.UIGenericBar;

/**
 * 
 * @author teras
 */
public abstract class UIBarItem {

    private boolean      enabled;
    private UIImage      image;
    private UIEdgeInsets imageInsets;
    private int          tag;
    private String       title;
    private UIGenericBar bar;

    public UIBarItem() {
        enabled = true;
        image = null;
        imageInsets = new UIEdgeInsets();
        tag = 0;
        title = null;
    }

    protected UIGenericBar getBar() {
        return bar;
    }

    protected void setBar(UIGenericBar bar) {
        this.bar = bar;
    }

    public boolean isEnabled() {
        return enabled;
    }

    public void setEnabled(boolean enabled) {
        this.enabled = enabled;
        updateViews();
    }

    public UIImage getImage() {
        return image;
    }

    public void setImage(UIImage image) {
        this.image = image;
        updateViews();
    }

    public UIEdgeInsets getImageInsets() {
        return imageInsets;
    }

    public void setImageInsets(UIEdgeInsets imageInsets) {
        this.imageInsets = imageInsets;
        updateViews();
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
        updateViews();
    }

    public int getTag() {
        return tag;
    }

    public void setTag(int tag) {
        this.tag = tag;
    }

    protected final void updateViews() {
        if (bar == null)
            return;
        try {
            /* Need reflection not to present non-documented API */
            Method m = UIGenericBar.class.getDeclaredMethod("updateViews", new Class[0]);
            m.setAccessible(true);
            m.invoke(bar, new Object[0]);
        } catch (Exception ex) {
            ex.printStackTrace();
        }
    }
}
