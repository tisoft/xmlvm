
package org.xmlvm.iphone;

import java.util.ArrayList;

/**
 * 
 * @author teras
 */
public abstract class UITabBarControllerDelegate {

    public boolean shouldSelectViewController(UITabBarController controller, UIViewController view) {
        return true;
    }

    public void didSelectViewController(UITabBarController controller, UIViewController view) {
    }

    public void willBeginCustomizingViewControllers(UITabBarController controller,
            ArrayList<UIViewController> view) {
    }

    public void willEndCustomizingViewControllers(UITabBarController controller,
            ArrayList<UIViewController> view, boolean changed) {
    }

    public void didEndCustomizingViewControllers(UITabBarController controller,
            ArrayList<UIViewController> view, boolean changed) {
    }
}
