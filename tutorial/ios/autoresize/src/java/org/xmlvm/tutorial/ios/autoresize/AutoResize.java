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

package org.xmlvm.tutorial.ios.autoresize;

import java.util.Map;

import org.xmlvm.iphone.CGRect;
import org.xmlvm.iphone.UIApplication;
import org.xmlvm.iphone.UIApplicationDelegate;
import org.xmlvm.iphone.UIButton;
import org.xmlvm.iphone.UIButtonType;
import org.xmlvm.iphone.UIControlState;
import org.xmlvm.iphone.UIScreen;
import org.xmlvm.iphone.UIView;
import org.xmlvm.iphone.UIViewAutoresizing;
import org.xmlvm.iphone.UIViewController;
import org.xmlvm.iphone.UIWindow;

/**
 * This application shows how the auto-resizing attribute can be used to adapt a
 * UI to orientation changes. Auto-resizing determines how the size of a widget
 * changes when the size of the superview changes, e.g., because of a change in
 * orientation of the device. By default, position and size of a widget are
 * rigid. Passing appropriate parameters to <code>setAutoresizingMask()</code>
 * it is possible to make various resizing attributes flexible.
 */
public class AutoResize extends UIApplicationDelegate {

    UIButton button1;
    UIButton button2;
    UIButton button3;
    UIButton button4;
    UIButton button5;


    @Override
    public boolean didFinishLaunchingWithOptions(UIApplication app, Map<String, Object> launchOptions) {
        UIWindow window = new UIWindow(UIScreen.mainScreen().getBounds());
        button1 = UIButton.buttonWithType(UIButtonType.RoundedRect);
        button2 = UIButton.buttonWithType(UIButtonType.RoundedRect);
        button3 = UIButton.buttonWithType(UIButtonType.RoundedRect);
        button4 = UIButton.buttonWithType(UIButtonType.RoundedRect);
        button5 = UIButton.buttonWithType(UIButtonType.RoundedRect);

        button1.setTitle("1", UIControlState.Normal);
        button2.setTitle("2", UIControlState.Normal);
        button3.setTitle("3", UIControlState.Normal);
        button4.setTitle("4", UIControlState.Normal);
        button5.setTitle("5", UIControlState.Normal);

        button1.setFrame(new CGRect(20, 20, 125, 50));
        button2.setFrame(new CGRect(175, 20, 125, 50));
        button3.setFrame(new CGRect(20, 205, 280, 50));
        button4.setFrame(new CGRect(20, 390, 125, 50));
        button5.setFrame(new CGRect(175, 390, 125, 50));

        /*
         * The following lines define the resizing attributes of the various
         * buttons. Several attributes can be combined with the C-style
         * or-operator. It is instructional to comment out the following lines
         * to observe the behavior of the application in the absence of any
         * flexible resizing.
         */
        button2.setAutoresizingMask(UIViewAutoresizing.FlexibleLeftMargin);
        button3.setAutoresizingMask(UIViewAutoresizing.FlexibleTopMargin
                | UIViewAutoresizing.FlexibleBottomMargin | UIViewAutoresizing.FlexibleWidth);
        button4.setAutoresizingMask(UIViewAutoresizing.FlexibleTopMargin);
        button5.setAutoresizingMask(UIViewAutoresizing.FlexibleTopMargin
                | UIViewAutoresizing.FlexibleLeftMargin);

        UIViewController vc = new UIViewController() {
            @Override
            public boolean shouldAutorotateToInterfaceOrientation(int orientation) {
                return true;
            }

            @Override
            public void loadView() {
                UIView root = new UIView(UIScreen.mainScreen().getApplicationFrame());
                root.addSubview(button1);
                root.addSubview(button2);
                root.addSubview(button3);
                root.addSubview(button4);
                root.addSubview(button5);
                setView(root);
            }
        };
        window.setRootViewController(vc);
        window.addSubview(vc.getView());
        window.makeKeyAndVisible();
        return false;
    }

    public static void main(String[] args) {
        UIApplication.main(args, null, AutoResize.class);
    }

}
