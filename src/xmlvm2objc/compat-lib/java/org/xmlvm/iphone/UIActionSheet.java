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

import org.xmlvm.XMLVMSkeletonOnly;

@XMLVMSkeletonOnly
public class UIActionSheet extends UIView {

    private UIActionSheet() {
    }

    public static UIActionSheet init(String title, UIActionSheetDelegate delegate,
            String cancelButtonTitle, String destructiveButtonTitle, String... otherButtonTitles) {
        return new UIActionSheet();
    }

    public void showFromTabBar(UITabBar bar) {
    }

    public void showFromToolbar(UIToolbar bar) {
    }

    public void showInView(UIView view) {
    }

    // public void showFromBarButtonItem(UIBarButtonItem item, boolean animated)
    // {
    // }
    //
    // public void showFromRect(CGRect rect, UIView inView, boolean animated) {
    // }
    //
    public void dismissWithClickedButtonIndex(int buttonIndex, boolean animated) {
    }
}
