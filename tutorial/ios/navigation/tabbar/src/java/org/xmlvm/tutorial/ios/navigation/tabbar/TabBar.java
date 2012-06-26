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

package org.xmlvm.tutorial.ios.navigation.tabbar;

import java.util.ArrayList;
import java.util.Map;

import org.xmlvm.iphone.CGRect;
import org.xmlvm.iphone.UIApplication;
import org.xmlvm.iphone.UIApplicationDelegate;
import org.xmlvm.iphone.UIColor;
import org.xmlvm.iphone.UIImage;
import org.xmlvm.iphone.UILabel;
import org.xmlvm.iphone.UIScreen;
import org.xmlvm.iphone.UITabBarController;
import org.xmlvm.iphone.UIView;
import org.xmlvm.iphone.UIViewController;
import org.xmlvm.iphone.UIWindow;

/**
 * This example shows the use of the <code>UITabBarController</code> that
 * displays different tabs on the bottom of the screen. A
 * <code>UITabBarController</code> is derived from <code>UIViewController</code>
 * , thereby inheriting all features from its base class. Each tab has an
 * associated <code>UIViewController</code> that defines its view. The user can
 * change between views by selecting the respective tab. If there are more than
 * six tabs, the <code>UITabBarController</code> will automatically add a "More"
 * tab. The <code>UITabBarController</code> also allows to rearrange the order
 * of the tabs.
 */
public class TabBar extends UIApplicationDelegate {

    /**
     * <code>Page</code> is a helper class. It it derived from
     * <code>UIViewController</code>. Each tab will be represented by one
     * instance of class <code>Page</code>. Ordinarily, each tab would have its
     * own unique <code>UIViewController</code> depending on what the respective
     * view should accomplish. Class <code>Page</code> simply displays a label
     * in the top-left portion of the screen.
     */
    class Page extends UIViewController {

        private int pageNumber;


        public Page(int pageNumber) {
            this.pageNumber = pageNumber;
            /*
             * The title is used by the UITabBarController as the caption for
             * the tab.
             */
            this.setTitle("Tab " + pageNumber);
            /*
             * The following statement associates an icon with the tab.
             * Ordinarily each tab would have an individual icon.
             */
            getTabBarItem().setImage(UIImage.imageNamed("info.png"));
        }

        @Override
        public void loadView() {
            /*
             * The view simply displays a label with the number of this page.
             */
            UIView root = new UIView(UIScreen.mainScreen().getApplicationFrame());
            root.setBackgroundColor(UIColor.whiteColor);
            UILabel label = new UILabel(new CGRect(50, 100, 150, 20));
            label.setText("Page: " + pageNumber);
            root.addSubview(label);
            setView(root);
        }
    }


    @Override
    public boolean applicationDidFinishLaunchingWithOptions(UIApplication app, Map<String, Object> launchOptions) {
        UIWindow window = new UIWindow(UIScreen.mainScreen().getBounds());

        /*
         * 'list' will contain the list of UIViewControllers that will be
         * managed by the UITabBarController.
         */
        ArrayList<UIViewController> list = new ArrayList<UIViewController>();

        /*
         * This example uses 10 tabs. This will force the "More" tab that allows
         * the selection of tabs 5-10. Only the first 4 tabs will be shown on
         * the main screen. The "More" button will not be shown if the
         * UITabBarController has to manage at most 5 tabs.
         */
        for (int i = 1; i <= 10; i++) {
            Page page = new Page(i);
            list.add(page);
        }

        /*
         * Create the UITabBarController.
         */
        UITabBarController tabController = new UITabBarController();
        /*
         * Give the UITabBarController the list of tabs it should manage. Each
         * tab needs to be derived from UIViewController. By default, the
         * UITabBarController allows reordering of the tabs. The list of
         * UIViewControllers passed to
         * UITabBarController.setCustomizableViewController() controls which
         * items in the tab bar can be rearranged by the user.
         */
        tabController.setViewControllers(list);

        window.setRootViewController(tabController);
        window.makeKeyAndVisible();
        return false;
    }

    public static void main(String[] args) {
        UIApplication.main(args, null, TabBar.class);
    }
}
