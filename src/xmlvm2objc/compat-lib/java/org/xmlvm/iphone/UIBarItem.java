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

import java.lang.reflect.Method;

import org.xmlvm.XMLVMSkeletonOnly;

/**
 * 
 * @author teras
 */
@XMLVMSkeletonOnly
public abstract class UIBarItem extends NSObject {

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
