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
