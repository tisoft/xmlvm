/* Copyright (c) 2002-2011 by XMLVM.org
 *
 * Project Info:  http://www.xmlvm.org
 *
 * This program is free software; you can redistribute it and/or modify it
 * under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 *
 * This library is distributed in the hope that it will be useful, but
 * WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY
 * or FITNESS FOR A PARTICULAR PURPOSE. See the GNU Lesser General Public
 * License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public
 * License along with this library; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301,
 * USA.
 */

package org.xmlvm.iphone;

import java.util.ArrayList;

import org.xmlvm.XMLVMSkeletonOnly;
import org.xmlvm.iphone.internal.renderer.UITabBarRenderer;

@XMLVMSkeletonOnly
public class UITabBar extends UIView {

    private UITabBarDelegate        delegate;
    private ArrayList<UITabBarItem> items;
    private UITabBarItem            selectedItem;
    /* For connectivity with UITabBarController */
    UITabBarController              tbcontrol;
    private UIColor                 tintColor;
    private boolean                 translucent;
    private int                     barStyle;


    public UITabBar() {
        this(CGRect.Zero());
    }

    public UITabBar(CGRect rect) {
        super(rect);
        xmlvmSetRenderer(new UITabBarRenderer(this));
    }

    public UITabBarDelegate getDelegate() {
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

    public final void setTintColor(UIColor tintColor) {
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
