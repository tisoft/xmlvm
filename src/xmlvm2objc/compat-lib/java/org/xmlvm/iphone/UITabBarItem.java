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

import org.xmlvm.XMLVMSkeletonOnly;
import org.xmlvm.iphone.internal.UITabBarItemView;

/**
 * 
 * @author teras
 */
@XMLVMSkeletonOnly
public class UITabBarItem extends UIBarItem {

    final UITabBarItemView view;
    private String         badgeValue;

    public UITabBarItem() {
        view = new UITabBarItemView(this);
        view.addTarget(new UIControlDelegate() {

            public void raiseEvent(UIControl sender, int eventType) {
                buttonClicked();
            }
        }, UIControlEvent.TouchUpInside);
        view.setClipsToBounds(true);
    }

    private void buttonClicked() {
        if (getBar() != null)
            ((UITabBar) getBar()).setSelectedItem(this);
    }

    public String getBadgeValue() {
        return badgeValue;
    }

    public void setBadgeValue(String badgeValue) {
        this.badgeValue = badgeValue;
    }

    @Override
    public void setTitle(String title) {
        view.setTitle(title, 0);
        super.setTitle(title);
        updateViews();
    }
}
