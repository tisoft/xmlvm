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

package org.xmlvm.iphone.internal;

import org.xmlvm.iphone.UIColor;
import org.xmlvm.iphone.UIFont;
import org.xmlvm.iphone.UITabBarItem;
import org.xmlvm.iphone.internal.renderer.UITabBarItemRenderer;

public class UITabBarItemView extends UIBarItemView {

    private final static UIFont  DEFAULT_FONT  = UIFont.fontWithNameSize("Arial Bold", 10);
    private final static UIColor DEFAULT_COLOR = UIColor.colorWithRGBA(0.58f, 0.58f, 0.58f, 1f);


    public UITabBarItemView(UITabBarItem item) {
        super();
        xmlvmSetRenderer(new UITabBarItemRenderer(item, this));
        setTitleColor(DEFAULT_COLOR, 0);
        setFont(DEFAULT_FONT);
    }
}
