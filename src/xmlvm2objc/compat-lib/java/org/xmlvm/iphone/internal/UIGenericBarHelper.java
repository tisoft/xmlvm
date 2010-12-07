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

package org.xmlvm.iphone.internal;

import org.xmlvm.iphone.UIColor;
import org.xmlvm.iphone.UINavigationBar;
import org.xmlvm.iphone.UITabBar;
import org.xmlvm.iphone.UIToolbar;
import org.xmlvm.iphone.UIView;
import org.xmlvm.iphone.internal.renderer.UIToolbarRenderer;

/**
 * 
 * @author teras
 */
public class UIGenericBarHelper {

    public static UIColor getTintColor(UIView view) {
        if (view instanceof UITabBar)
            return ((UITabBar) view).getTintColor();
        if (view instanceof UIToolbar)
            return ((UIToolbar) view).getTintColor();
        if (view instanceof UINavigationBar)
            return ((UINavigationBar) view).getTintColor();
        return UIToolbarRenderer.defaultColor;
    }

    public static boolean isTranslucent(UIView view) {
        if (view instanceof UITabBar)
            return ((UITabBar) view).isTranslucent();
        if (view instanceof UIToolbar)
            return ((UIToolbar) view).isTranslucent();
        if (view instanceof UINavigationBar)
            return ((UINavigationBar) view).isTranslucent();
        return false;
    }
}
