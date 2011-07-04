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

package org.xmlvm.tutorial.ios.navigation.stack;

import org.xmlvm.iphone.CGRect;
import org.xmlvm.iphone.UIApplication;
import org.xmlvm.iphone.UIApplicationDelegate;
import org.xmlvm.iphone.UIButton;
import org.xmlvm.iphone.UIButtonType;
import org.xmlvm.iphone.UIColor;
import org.xmlvm.iphone.UIControl;
import org.xmlvm.iphone.UIControlDelegate;
import org.xmlvm.iphone.UIControlEvent;
import org.xmlvm.iphone.UIControlState;
import org.xmlvm.iphone.UINavigationController;
import org.xmlvm.iphone.UIScreen;
import org.xmlvm.iphone.UIView;
import org.xmlvm.iphone.UIViewController;
import org.xmlvm.iphone.UIWindow;

/**
 * This application demonstrates the use of <code>UINavigationController</code>
 * that manages a stack of <code>UIViewController</code> instances.
 * <code>UINavigationController</code> will automatically show a back button
 * with the title of the previous view. Pressing that button will pop the most
 * recent <code>UIViewController</code>. This application uses two helper
 * classes: <code>ParentPage</code> and <code>ChildPage</code>. The former is
 * the top-most page managed by the <code>UINavigationController</code>.
 * Instances of <code>ChildPage</code> can be pushed multiple times onto the
 * view stack.
 */
public class Stack extends UIApplicationDelegate {

    class ParentPage extends UIViewController {

        /**
         * Top-most page managed by <code>UINavigationController</code>. Its
         * title is automatically displayed at the top of the screen by the
         * <code>UINavigationController</code>. The only functionality of
         * <code>ParentPage</code> is to push the first <code>ChildPage</code>
         * onto the view stack maintained by the
         * <code>UINavigationController</code> upon pressing a button.
         */
        public ParentPage() {
            setTitle("Parent");
        }

        @Override
        public void loadView() {
            super.loadView();
            UIView root = getView();
            root.setBackgroundColor(UIColor.whiteColor);

            /*
             * Create a button that will trigger the pushing of the first
             * ChildView onto the view stack.
             */
            UIButton button = UIButton.buttonWithType(UIButtonType.RoundedRect);
            button.setFrame(new CGRect(40, 40, 240, 30));
            button.setTitle("Start diving...", UIControlState.Normal);
            button.addTarget(new UIControlDelegate() {

                @Override
                public void raiseEvent(UIControl uic, int i) {
                    /*
                     * Retrieve the managing UINavigationController and push the
                     * first ChildView instance.
                     */
                    getNavigationController().pushViewController(new ChildPage(1), true);
                }
            }, UIControlEvent.TouchUpInside);

            root.addSubview(button);
        }
    }


    /**
     * Instances of this class are pushed onto the view stack managed by a
     * <code>UINavigationController</code>. Each <code>ChildPage</code> has an
     * associated level that helps to distinguish between different instances. A
     * <code>ChildPage</code> has a button that allows to decent deeper (by
     * pushing another <code>ChildPage</code> instance onto the view stack).
     */
    class ChildPage extends UIViewController {

        private final int level;


        public ChildPage(int level) {
            /*
             * The 'level' parameter is used to construct a title for this
             * ChildPage. The title is displayed in the navigation bar by the
             * managing UINavigationController.
             */
            if (level == 1) {
                setTitle(level + " Level Deep");
            } else {
                setTitle(level + " Levels Deep");
            }
            this.level = level;
        }

        @Override
        public void loadView() {
            super.loadView();
            UIView root = getView();
            root.setBackgroundColor(UIColor.whiteColor);

            /*
             * Create a button that will trigger the pushing of another
             * ChildView onto the view stack.
             */
            UIButton button = UIButton.buttonWithType(UIButtonType.RoundedRect);
            button.setFrame(new CGRect(40, 40, 240, 30));
            button.setTitle("Go even deeper", UIControlState.Normal);
            button.addTarget(new UIControlDelegate() {

                @Override
                public void raiseEvent(UIControl uic, int i) {
                    /*
                     * Retrieve the managing UINavigationController and push
                     * another ChildView (whose level will be one higher than
                     * the current one).
                     */
                    getNavigationController().pushViewController(new ChildPage(level + 1), true);
                }
            }, UIControlEvent.TouchUpInside);

            root.addSubview(button);
        }
    }


    @Override
    public void applicationDidFinishLaunching(UIApplication app) {
        UIWindow window = new UIWindow(UIScreen.mainScreen().getBounds());

        /*
         * Create the UINavigationController. The constructor is given the first
         * view that will be pushed onto the view stack (ParentPage in this
         * case).
         */
        UINavigationController navigationController = new UINavigationController(new ParentPage());

        window.setRootViewController(navigationController);
        window.makeKeyAndVisible();
    }

    public static void main(String[] args) {
        UIApplication.main(args, null, Stack.class);
    }
}
