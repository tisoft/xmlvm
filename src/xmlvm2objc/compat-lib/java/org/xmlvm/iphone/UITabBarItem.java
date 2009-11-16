
package org.xmlvm.iphone;

import org.xmlvm.iphone.internal.UITabBarItemView;

/**
 * 
 * @author teras
 */
public class UITabBarItem extends UIBarItem {

    final UITabBarItemView view;
    private String         badgeValue;

    public UITabBarItem() {
        view = new UITabBarItemView(this);
        view.addTarget(new UIControlDelegate() {

            public void raiseEvent() {
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

    public void setTitle(String title) {
        view.setTitle(title, 0);
        super.setTitle(title);
        updateViews();
    }
}
