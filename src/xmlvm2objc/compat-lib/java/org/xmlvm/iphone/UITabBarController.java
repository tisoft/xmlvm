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
public class UITabBarController extends UIViewController {

    private UITabBarControllerDelegate  delegate;
    private final UITabBar              tabBar;
    private ArrayList<UIViewController> viewControllers;
    private ArrayList<UIViewController> customizableViewControllers;
    private int                         selectedIndex;


    public UITabBarController() {
        super();
        delegate = null;
        tabBar = new UITabBar();
        tabBar.tbcontrol = this;
        viewControllers = null;
        customizableViewControllers = null;
        selectedIndex = 0;
    }

    @Override
    protected CGRect requestInternalFrame() {
        return new CGRect(getSelectedViewController().getView().getFrame());
    }

    public ArrayList<UIViewController> getCustomizableViewControllers() {
        return new ArrayList<UIViewController>(customizableViewControllers);
    }

    public void setCustomizableViewControllers(
            ArrayList<UIViewController> customizableViewControllers) {
        this.customizableViewControllers = new ArrayList<UIViewController>(
                customizableViewControllers);
    }

    public UITabBarControllerDelegate getDelegate() {
        return delegate;
    }

    public void setDelegate(UITabBarControllerDelegate delegate) {
        this.delegate = delegate;
    }

    public UINavigationController getMoreNavigationController() {
        return null;
    }

    public UIViewController getSelectedViewController() {
        return viewControllers.get(selectedIndex);
    }

    public void setSelectedViewController(UIViewController selectedViewController) {
        setSelectedIndex(viewControllers.indexOf(selectedViewController));
    }

    public int getSelectedIndex() {
        return selectedIndex;
    }

    public void setSelectedIndex(int selectedIndex) {
        if (selectedIndex < 0 || selectedIndex >= viewControllers.size())
            throw new ArrayIndexOutOfBoundsException("UITabbar index " + selectedIndex
                    + " is out of bounds");
        if (selectedIndex == this.selectedIndex)
            return;
        this.selectedIndex = selectedIndex; // First this
        tabBar.setSelectedIndex(selectedIndex); // Then this for cyclic
        // reference
        updateViews();
    }

    public UITabBar getTabBar() {
        return tabBar;
    }

    public ArrayList<UIViewController> getViewControllers() {
        return new ArrayList<UIViewController>(viewControllers);
    }

    public void setViewControllers(ArrayList<UIViewController> viewControllers) {
        setViewControllers(viewControllers, false);
    }

    public void setViewControllers(ArrayList<UIViewController> viewControllers, boolean animated) {
        ArrayList<UITabBarItem> tabs = new ArrayList<UITabBarItem>();
        this.viewControllers = new ArrayList<UIViewController>(viewControllers);
        for (UIViewController contr : viewControllers) {
            contr.setParentController(this);
            tabs.add(contr.getTabBarItem());
        }
        tabBar.setItems(tabs, animated);
        updateViews();
    }

    @Override
    protected void updateViews() {
        /* Calculate metrics */
        UIView master = getView();
        CGRect frame = master.getFrame();
        float w = frame.size.width;
        float h = frame.size.height;

        /* Remove old views */
        for (UIView child : master.getSubviews())
            child.removeFromSuperview();

        /* Add tabbar */
        tabBar.setFrame(new CGRect(0, h - UITabBarRenderer.TABBAR_HEIGHT, w,
                UITabBarRenderer.TABBAR_HEIGHT));
        master.addSubview(tabBar);
        tabBar.updateViews();

        /* Add base bar */
        UIView base = getSelectedViewController().getView();
        base.setFrame(new CGRect(0, 0, w, h - UITabBarRenderer.TABBAR_HEIGHT));
        master.addSubview(base);
        getSelectedViewController().updateViews();

        master.setNeedsDisplay();
    }
}
