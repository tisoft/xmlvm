
package org.xmlvm.iphone;

import java.util.ArrayList;

import org.xmlvm.iphone.internal.UIGenericBar;
import org.xmlvm.iphone.internal.renderer.UITabBarRenderer;

/**
 * 
 * @author teras
 */
public class UITabBar extends UIGenericBar {

    private UITabBarDelegate        delegate;
    private ArrayList<UITabBarItem> items;
    private UITabBarItem            selectedItem;
    /* For connectivity with UITabBarController */
    UITabBarController              tbcontrol;

    public UITabBar() {
        this(new CGRect(0, 0, 0, 0));
    }

    public UITabBar(CGRect rect) {
        super(rect);
        xmlvmSetRenderer(new UITabBarRenderer(this));
    }

    public UITabBarDelegate getTabBarDelegate() {
        return delegate;
    }

    public void setDelegate(UITabBarDelegate delegate) {
        this.delegate = delegate;
    }

    public ArrayList<UITabBarItem> getItems() {
        return items;
    }

    public void setItems(ArrayList<UITabBarItem> items) {
        setItems(items, false);
    }

    public void setItems(ArrayList<UITabBarItem> items, boolean animated) {
        this.items = items;
        for (UITabBarItem item : items)
            item.setBar(this);
        setSelectedItem(items.get(0));
        updateViews();
    }

    public UITabBarItem getSelectedItem() {
        return selectedItem;
    }

    public void setSelectedItem(UITabBarItem selectedItem) {
        if (selectedItem != this.selectedItem) {
            int which = items.indexOf(selectedItem);
            if (which < 0)
                return;
            this.selectedItem = selectedItem; // First this
            if (tbcontrol != null)
                tbcontrol.setSelectedIndex(which); // Then this for cyclic
            // reference
            updateViews();
            if (delegate != null)
                delegate.didSelectItem(this, selectedItem);
        }
    }

    void setSelectedIndex(int index) {
        setSelectedItem(items.get(index));
    }

    public void beginCustomizingItems(ArrayList<UITabBarItem> items) {
        if (delegate != null)
            delegate.willBeginCustomizingItems(this, items);
        if (delegate != null)
            delegate.didBeginCustomizingItems(this, items);
    }

    public boolean endCustomizingAnimated(boolean animated) {
        boolean changed = false;
        if (delegate != null)
            delegate.willEndCustomizingItems(this, items, changed);
        if (delegate != null)
            delegate.didEndCustomizingItems(this, items, changed);
        return changed;
    }

    public boolean isCustomizing() {
        return false;
    }

    protected void updateViews() {
        if (items == null || items.size() < 1)
            return;

        for (UIView v : getSubviews())
            v.removeFromSuperview();

        CGRect frame = getFrame();
        float width = frame.size.width / items.size();
        frame.size.width = width - 1;
        frame.origin.y = 0;
        for (int i = 0; i < items.size(); i++) {
            UITabBarItem item = items.get(i);
            frame.origin.x = width * i;
            item.view.setFrame(frame);
            addSubview(item.view);
        }
        setNeedsDisplay();
    }
}
