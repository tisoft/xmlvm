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
import static org.xmlvm.iphone.internal.renderer.UIToolbarRenderer.PROMPT_DIFF;
import static org.xmlvm.iphone.internal.renderer.UIToolbarRenderer.TOP_OFFSET;

import java.util.ArrayList;

import org.xmlvm.iphone.internal.UIGenericToolbar;

/**
 * @author teras
 */
public class UINavigationBar extends UIGenericToolbar {

    private ArrayList<UINavigationItem> items;
    private UINavigationBarDelegate     delegate;
    UINavigationController              controller;

    public UINavigationBar() {
        this(new CGRect(0, 0, 0, 0));
    }

    public UINavigationBar(CGRect rect) {
        super(rect);
        items = new ArrayList<UINavigationItem>();
    }

    public void pushNavigationItem(UINavigationItem item, boolean animated) {
        if (delegate != null)
            if (!delegate.shouldPushItem(this, item))
                return;
        items.add(item);
        item.setToolbar(this);
        updateViews();
        if (delegate != null)
            delegate.didPushItem(this, item);
    }

    public UINavigationItem popNavigationItemAnimated(boolean animated) {
        if (delegate != null)
            if (!delegate.shouldPopItem(this, null))
                return null;
        UINavigationItem pop = items.get(items.size() - 1);
        items.remove(items.size() - 1);
        updateViews();
        pop.setToolbar(this);
        if (delegate != null)
            delegate.didPopItem(this, pop);
        return pop;
    }

    public void setItems(ArrayList<UINavigationItem> items) {
        setItems(items, false);
    }

    public void setItems(ArrayList<UINavigationItem> items, boolean animated) {
        this.items = items;
        for (UINavigationItem item : items)
            item.setToolbar(this);
        updateViews();
    }

    public UINavigationBarDelegate getDelegate() {
        return delegate;
    }

    public void setDelegate(UINavigationBarDelegate delegate) {
        this.delegate = delegate;
    }

    public UINavigationItem getTopItem() {
        if (items == null || items.size() == 0)
            return null;
        return items.get(items.size() - 1);
    }

    public UINavigationItem getBackitem() {
        return items.get(items.size() - 2);
    }

    public ArrayList<UINavigationItem> getItems() {
        return items;
    }

    @Override
    protected void updateViews() {
        UINavigationItem item = getTopItem();
        if (item == null)
            return;

        /* First clear lists */
        for (UIView old : getSubviews())
            old.removeFromSuperview();

        /* Find metrics */
        String prompt = item.getPrompt();
        boolean hasPrompt = !(prompt == null || prompt.equals(""));
        float deltaY = TOP_OFFSET;
        if (hasPrompt)
            deltaY += PROMPT_DIFF;
        float w = getFrame().size.width;
        float h = getFrame().size.height;
        float offset_from_edge = OFFSET + INIT_OFFSET;
        float right_width = 50, left_width = 50;// some random number, to keep
        // up space

        /* Create right bar */
        UIBarButtonItem right = item.getRightBarButtonItem();
        if (right != null) {
            right.getCustomView().setFrame(
                    new CGRect(w - right.getWidth() - offset_from_edge, deltaY, right.getWidth(), h
                            - deltaY - BOTTOM_OFFSET));
            addSubview(right.getCustomView());
            right_width = right.getWidth();
        }

        /* Create left bar */
        if (items.size() > 1) {
            UIBarButtonItem left = item.getLeftBarButtonItem() == null ? item
                    .getBackBarButtonItem() : item.getLeftBarButtonItem();
            left.getCustomView().setFrame(
                    new CGRect(offset_from_edge, deltaY, left.getWidth(), h - deltaY
                            - BOTTOM_OFFSET));
            addSubview(left.getCustomView());
            left_width = left.getWidth();
        }

        /* Create title */
        UIView v = item.getTitleView();
        float nw = OFFSET * 2 + offset_from_edge * 2 + left_width + right_width;
        v.setFrame(new CGRect(offset_from_edge + left_width + OFFSET, deltaY, w - (nw), h - deltaY
                - BOTTOM_OFFSET));
        addSubview(v);

        /* Redisplay */
        setNeedsDisplay();
    }
}
