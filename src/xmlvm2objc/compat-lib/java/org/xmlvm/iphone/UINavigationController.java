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

import static org.xmlvm.iphone.internal.renderer.UIToolbarRenderer.HEIGHT_NOPROMT;
import static org.xmlvm.iphone.internal.renderer.UIToolbarRenderer.HEIGHT_WITHPROMT;

import java.util.ArrayList;

/**
 * 
 * @author teras
 */
public final class UINavigationController extends UIViewController {

    private ArrayList<UIViewController>    items;
    private UINavigationControllerDelegate delegate;
    private UINavigationBar                navigationBar;
    private boolean                        navigationBarHidden;
    private UIToolbar                      toolbar;
    private boolean                        toolbarHidden;

    public UINavigationController(UIViewController rootViewController) {
        super();
        toolbarHidden = true;
        navigationBarHidden = false;
        navigationBar = new UINavigationBar();
        navigationBar.controller = this;
        toolbar = new UIToolbar();
        items = new ArrayList<UIViewController>();
        pushViewController(rootViewController, false);
    }

    protected CGRect requestInternalFrame() {
        return new CGRect(getTopViewController().getView().getFrame());
    }

    public UIViewController getTopViewController() {
        return items.get(items.size() - 1);
    }

    public UIViewController getVisibleViewController() {
        return getTopViewController();
    }

    public ArrayList<UIViewController> getViewControllers() {
        return new ArrayList<UIViewController>(items);
    }

    public void setViewControllers(ArrayList<UIViewController> controllers) {
        setViewControllers(controllers, false);
    }

    public void setViewControllers(ArrayList<UIViewController> controllers, boolean animated) {
        if (controllers == null || controllers.size() < 1)
            throw new RuntimeException("Attempting to assing empty Navigation list!");
        items = new ArrayList<UIViewController>(controllers);
        for (UIViewController c : items)
            c.setParentController(this);
        updateViews(true, animated);
    }

    public void pushViewController(UIViewController controller, boolean animated) {
        items.add(controller);
        controller.setParentController(this);
        navigationBar.pushNavigationItem(new UINavigationItem(controller.getTitle()), animated);
        updateViews(true, animated);
    }

    public UIViewController popViewControllerAnimated(boolean animated) {
        int idx = items.size() - 1;
        if (idx < 0)
            return null;
        UIViewController viewc = items.get(idx);
        items.remove(idx);
        viewc.setParentController(this);
        navigationBar.popNavigationItemAnimated(animated);
        updateViews(true, animated);
        return viewc;
    }

    public ArrayList<UIViewController> popToRootViewControllerAnimated(boolean animated) {
        if (items.size() == 1)
            return new ArrayList<UIViewController>();
        ArrayList<UIViewController> res = new ArrayList<UIViewController>();
        res.add(items.get(0));
        items.remove(0);
        updateViews(true, animated);
        return res;
    }

    public ArrayList<UIViewController> popToViewController(UIViewController controller,
            boolean animated) {
        int idx = items.lastIndexOf(controller);
        if (idx > 0) {
            ArrayList<UIViewController> res = new ArrayList<UIViewController>();
            res.addAll(idx, items);
            for (UIViewController vc : res)
                vc.setParentController(this);

            for (int i = items.size() - 1; i >= idx; i--)
                items.remove(i);
            updateViews(true, animated);
            return res;
        }
        return new ArrayList<UIViewController>();
    }

    public boolean isNavigationBarHidden() {
        return navigationBarHidden;
    }

    public void setNavigationBarHidden(boolean navigationBarHidden) {
        setNavigationBarHidden(navigationBarHidden, false);
    }

    public void setNavigationBarHidden(boolean navigationBarHidden, boolean animated) {
        this.navigationBarHidden = navigationBarHidden;
        updateViews(false, animated);
    }

    public UINavigationBar getNavigationBar() {
        return navigationBar;
    }

    public boolean isToolbarHidden() {
        return toolbarHidden;
    }

    public void setToolbarHidden(boolean toolbarHidden) {
        setToolbarHidden(toolbarHidden, false);
    }

    public void setToolbarHidden(boolean toolbarHidden, boolean animated) {
        this.toolbarHidden = toolbarHidden;
        updateViews(false, animated);
    }

    public UIToolbar getToolbar() {
        return toolbar;
    }

    public void setDelegate(UINavigationControllerDelegate delegate) {
        this.delegate = delegate;
    }

    public UINavigationControllerDelegate getNavigationDelegate() {
        return this.delegate;
    }

    @Override
    public void loadView() {
        super.loadView();
        updateViews(true, false);
    }

    private void updateViews(boolean informDelegate, boolean animated) {
        if (!isViewLoaded())
            return;
        if (informDelegate && delegate != null)
            delegate.willShowViewController(this, getTopViewController(), animated);
        updateViews();
        if (informDelegate && delegate != null)
            delegate.didShowViewController(this, getTopViewController(), animated);
    }

    protected void updateViews() {
        /* Calculate metrics */
        CGRect frame = getView().getFrame();
        float w = frame.size.width;
        float h = frame.size.height;
        float navh = navigationBarHidden ? 0 : (false ? HEIGHT_WITHPROMT : HEIGHT_NOPROMT);
        float toolh = toolbarHidden ? 0 : HEIGHT_NOPROMT;

        /* Remove old visual items */
        UIView v = getView();
        for (UIView child : v.getSubviews())
            child.removeFromSuperview();

        /* Add base view */
        UIView base = getTopViewController().getView();
        base.setFrame(new CGRect(0, navh, w, h - (navh + toolh)));
        v.addSubview(base);

        /* Add navigation bar */
        if (!navigationBarHidden) {
            navigationBar.setFrame(new CGRect(0, 0, w, navh));
            navigationBar.updateViews();
            v.addSubview(navigationBar);
        }

        /* Add tool bar */
        if (!toolbarHidden) {
            toolbar.setFrame(new CGRect(0, h - toolh, w, toolh));
            toolbar.setItems(getTopViewController().getToolbarItems());
            // toolbar.updateViews(); // Not needed, it's executed by
            // toolbar.setItems
            v.addSubview(toolbar);
        }

        /* Update displays */
        getTopViewController().updateViews();
        getView().setNeedsDisplay();
    }
}
