
package org.xmlvm.iphone;

import java.util.ArrayList;

/**
 * 
 * @author teras
 */
public abstract class UITabBarDelegate {

    public void willBeginCustomizingItems(UITabBar bar, ArrayList<UITabBarItem> items) {
    }

    public void didBeginCustomizingItems(UITabBar bar, ArrayList<UITabBarItem> items) {
    }

    public void willEndCustomizingItems(UITabBar bar, ArrayList<UITabBarItem> items, boolean changed) {
    }

    public void didEndCustomizingItems(UITabBar bar, ArrayList<UITabBarItem> items, boolean changed) {
    }

    public abstract void didSelectItem(UITabBar bar, UITabBarItem item);
}
