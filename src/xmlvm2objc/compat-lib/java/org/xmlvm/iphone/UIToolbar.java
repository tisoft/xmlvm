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

import static org.xmlvm.iphone.internal.renderer.UIToolbarRenderer.BOTTOM_OFFSET;
import static org.xmlvm.iphone.internal.renderer.UIToolbarRenderer.INIT_OFFSET;
import static org.xmlvm.iphone.internal.renderer.UIToolbarRenderer.OFFSET;
import static org.xmlvm.iphone.internal.renderer.UIToolbarRenderer.TOP_OFFSET;

import java.util.ArrayList;
import java.util.List;

import org.xmlvm.XMLVMSkeletonOnly;
import org.xmlvm.iphone.internal.renderer.UIToolbarRenderer;

@XMLVMSkeletonOnly
public class UIToolbar extends UIView {

    private List<UIBarButtonItem> items;
    private UIColor               barTintColor;
    private boolean               translucent;
    private int                   barStyle;


    public UIToolbar() {
        this(CGRect.Zero());
        translucent = false;
        barTintColor = UIToolbarRenderer.defaultColor;
        xmlvmSetRenderer(new UIToolbarRenderer(this));
    }

    public UIToolbar(CGRect frame) {
        super(frame);
        items = new ArrayList<UIBarButtonItem>();
    }

    public List<UIBarButtonItem> getItems() {
        return new ArrayList<UIBarButtonItem>(items);
    }

    public void setItems(List<UIBarButtonItem> items) {
        setItems(items, true);
    }

    public void setItems(List<UIBarButtonItem> items, boolean animated) {
        if (items == null)
            items = new ArrayList<UIBarButtonItem>();
        this.items = new ArrayList<UIBarButtonItem>(items);
        for (UIBarButtonItem it : items)
            it.setBar(this);
        updateViews();
    }

    public int getBarStyle() {
        return barStyle;
    }

    public void setBarStyle(int UIBarStyle) {
        this.barStyle = UIBarStyle;
        updateViews();
    }

    public UIColor getBarTintColor() {
        return barTintColor;
    }

    public final void setBarTintColor(UIColor tintColor) {
        if (tintColor == null)
            throw new NullPointerException("Tint color can not be null");
        this.barTintColor = tintColor;
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
        if (items == null)
            return;

        for (UIView v : getSubviews())
            v.removeFromSuperview();

        CGRect frame = getFrame();
        float h = frame.size.height;
        float lastX = INIT_OFFSET;
        for (UIBarButtonItem item : items) {
            UIView v = item.getCustomView();
            float width = item.getWidth();
            v.setFrame(new CGRect(lastX + OFFSET, TOP_OFFSET, width, h
                    - (TOP_OFFSET + BOTTOM_OFFSET)));
            addSubview(item.getCustomView());
            lastX += width + OFFSET;
        }
        setNeedsDisplay();
    }
}
