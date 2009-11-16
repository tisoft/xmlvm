
package org.xmlvm.iphone;

import java.util.ArrayList;

import org.xmlvm.iphone.internal.Simulator;

/**
 * 
 * @author teras
 */
public class UIViewController extends UIResponder {

    private UIView                     view;
    private String                     title;
    private boolean                    wantsFullScreenLayout;
    private boolean                    editing;
    private boolean                    hidesBottomBarWhenPushed;
    private UITabBarItem               tabBarItem;
    private ArrayList<UIBarButtonItem> toolbarItems;
    UIViewController                   pcontroller;

    public UIViewController() {
        super();
        setTitle("");
        pcontroller = null;
        setEditing(false);
    }

    public void loadView() {
        if (view == null) {
            view = new UIView();
            view.controller = this;
            view.setBackgroundColor(UIColor.whiteColor);

            int offset = wantsFullScreenLayout ? 0 : 20;
            CGRect b = UIScreen.mainScreen().getBounds();
            b.origin.y += offset;
            b.size.height -= offset;
            view.setFrame(b);
        }
        viewDidLoad();
    }

    public boolean isViewLoaded() {
        return view != null;
    }

    public void viewDidLoad() {
    }

    public void viewDidUnload() {
    }

    void viewWillAppearInternal(boolean animated) {
        if (pcontroller != null)
            view.setFrame(pcontroller.requestInternalFrame());
        updateViews();
        viewWillAppear(animated);
    }

    CGRect requestInternalFrame() {
        return view.getFrame();
    }

    protected void updateViews() {
    }

    public void viewWillAppear(boolean animated) {
    }

    public void viewDidAppear(boolean animated) {
    }

    public void viewWillDisappear(boolean animated) {
    }

    public void viewDidDisappear(boolean animated) {
    }

    public boolean shouldAutorotateToInterfaceOrientation(int orientation) {
        if (UIInterfaceOrientation.Portrait == orientation)
            return true;
        return false;
    }

    public UIView rotatingHeaderView() {
        return null;
    }

    public UIView rotatingFooterView() {
        return null;
    }

    public void willRotateToInterfaceOrientation(int orientation, double duration) {
    }

    public void willAnimateRotationToInterfaceOrientation(int orientation, double duration) {
    }

    public void didRotateFromInterfaceOrientation(int orientation) {
    }

    public void willAnimateFirstHalfOfRotationToInterfaceOrientation(int orientation,
            double duration) {
    }

    public void didAnimateFirstHalfOfRotationToInterfaceOrientation(int orientation) {
    }

    public void willAnimateSecondHalfOfRotationFromInterfaceOrientation(int orientation,
            double duration) {
    }

    public void didReceiveMemoryWarning() {
    }

    public UIView getView() {
        if (view == null)
            loadView();
        return view;
    }

    public void setView(UIView view) {
        if (this.view != null) // Old
            view.controller = null;
        this.view = view;
        if (this.view != null) // New
            view.controller = this;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        if (title == null)
            title = "";
        if (tabBarItem != null)
            tabBarItem.setTitle(getTitle());
        this.title = title;
    }

    public boolean wantsFullScreenLayout() {
        return wantsFullScreenLayout;
    }

    public void setWantsFullScreenLayout(boolean wantsFullScreenLayout) {
        this.wantsFullScreenLayout = wantsFullScreenLayout;
    }

    public int getInterfaceOrientation() {
        return Simulator.getStatusBarOrientation();
    }

    public UINavigationController getNavigationController() {
        UIViewController p = pcontroller;
        while (p != null) {
            if (p instanceof UINavigationController)
                return (UINavigationController) p;
            p = p.pcontroller;
        }
        return null;
    }

    public boolean isEditing() {
        return editing;
    }

    public void setEditing(boolean editing) {
        this.editing = editing;
    }

    public void setEditing(boolean editing, boolean animated) {
    }

    /* Simulator ignores animations */
    public boolean hidesBottomBarWhenPushed() {
        return hidesBottomBarWhenPushed;
    }

    /* Simulator ignores animations */
    public void setHidesBottomBarWhenPushed(boolean hidesBottomBarWhenPushed) {
        this.hidesBottomBarWhenPushed = hidesBottomBarWhenPushed;
    }

    public UITabBarController getTabBarController() {
        UIViewController p = pcontroller;
        while (p != null) {
            if (p instanceof UITabBarController)
                return (UITabBarController) p;
            p = p.pcontroller;
        }
        return null;
    }

    void setParentController(UIViewController parentController) {
        pcontroller = parentController;
    }

    public UITabBarItem getTabBarItem() {
        if (tabBarItem == null) {
            tabBarItem = new UITabBarItem();
            tabBarItem.setTitle(getTitle());
        }
        return tabBarItem;
    }

    public void setTabBarItem(UITabBarItem tabBarItem) {
        this.tabBarItem = tabBarItem;
    }

    public ArrayList<UIBarButtonItem> getToolbarItems() {
        return toolbarItems;
    }

    public void setToolbarItems(ArrayList<UIBarButtonItem> items) {
        setToolbarItems(items, true);
    }

    public void setToolbarItems(ArrayList<UIBarButtonItem> items, boolean animated) {
        this.toolbarItems = items;
        if (pcontroller != null)
            pcontroller.updateViews();
    }
}
