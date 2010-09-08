/*
 * Copyright (c) 2004-2009 XMLVM --- An XML-based Programming Language
 * 
 * This program is free software; you can redistribute it and/or modify it under
 * the terms of the GNU General Public License as published by the Free Software
 * Foundation; either version 2 of the License, or (at your option) any later
 * version.
 * 
 * This program is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
 * FOR A PARTICULAR PURPOSE. See the GNU General Public License for more
 * details.
 * 
 * You should have received a copy of the GNU General Public License along with
 * this program; if not, write to the Free Software Foundation, Inc., 675 Mass
 * Ave, Cambridge, MA 02139, USA.
 * 
 * For more information, visit the XMLVM Home Page at http://www.xmlvm.org
 */

package org.xmlvm.iphone;

import static org.xmlvm.iphone.internal.renderer.UIToolbarRenderer.BOTTOM_OFFSET;
import static org.xmlvm.iphone.internal.renderer.UIToolbarRenderer.INIT_OFFSET;
import static org.xmlvm.iphone.internal.renderer.UIToolbarRenderer.OFFSET;
import static org.xmlvm.iphone.internal.renderer.UIToolbarRenderer.TOP_OFFSET;

import java.util.ArrayList;

import org.xmlvm.XMLVMSkeletonOnly;

/**
 * 
 * @author teras
 */
@XMLVMSkeletonOnly
public class UIToolbar extends UIGenericToolbar {

    private ArrayList<UIBarButtonItem> items;

    public UIToolbar() {
        this(new CGRect(0, 0, 0, 0));
    }

    public UIToolbar(CGRect frame) {
        super(frame);
        items = new ArrayList<UIBarButtonItem>();
    }

    public ArrayList<UIBarButtonItem> getItems() {
        return new ArrayList<UIBarButtonItem>(items);
    }

    public void setItems(ArrayList<UIBarButtonItem> items) {
        setItems(items, true);
    }

    public void setItems(ArrayList<UIBarButtonItem> items, boolean animated) {
        if (items == null)
            items = new ArrayList<UIBarButtonItem>();
        this.items = new ArrayList<UIBarButtonItem>(items);
        for (UIBarButtonItem it : items)
            it.setBar(this);
        updateViews();
    }

    @Override
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
