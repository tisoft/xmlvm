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

package org.xmlvm.tutorial.ios.helloworld.autorotate;

import java.util.Map;

import org.xmlvm.iphone.CGRect;
import org.xmlvm.iphone.UIApplication;
import org.xmlvm.iphone.UIApplicationDelegate;
import org.xmlvm.iphone.UIColor;
import org.xmlvm.iphone.UILabel;
import org.xmlvm.iphone.UIScreen;
import org.xmlvm.iphone.UIView;
import org.xmlvm.iphone.UIViewController;
import org.xmlvm.iphone.UIWindow;

/**
 * This variation of the "Hello World" will use a <code>UIViewController</code>
 * to manage autorotation, i.e., the application screen will automatically
 * rotate depending of the orientation of the device.
 * <code>UIViewController</code> is used to implement the Model/View/Controller
 * (MVC) paradigm and will automatically handle things like autorotation. The
 * application subclasses <code>UIViewController</code> and overrides two
 * methods. <code>loadView()</code> will be called when the view is created. It
 * will build up the view hierarchy and associates it with the view controller.
 * Method <code>shouldAutorotateToInterfaceOrientation()</code> will be called
 * whenever the device changes orientation. The view controller is asked via
 * this method whether the rotation to a given orientation should be permitted
 * or not. In this example, rotation is always permitted. Note that the view
 * controller will handle all aspects of the rotation (such as defining affine
 * transformations to adjust the view).
 * 
 * <p>
 * 
 * The sequence of events is as follows:
 * 
 * <ul>
 * <li> <code>applicationDidFinishLaunching()</code> will be called.
 * <li>the view controller is associated with the window via
 * <code>setRootViewController()</code>
 * <li>the view controller is asked for its view via <code>getView()</code>
 * <li>this will trigger the invocation of method <code>loadView()</code> of the
 * view controller.
 * <li>the view is added as a subview to the window
 * </ul>
 * 
 * <p>
 * 
 * When running the example, use the Device/Rotate menu option of the iOS
 * simulator to rotate the device.
 */
public class HelloWorld extends UIApplicationDelegate {

    @Override
    public boolean applicationDidFinishLaunchingWithOptions(UIApplication app, Map<String, Object> launchOptions) {
        UIWindow window = new UIWindow(UIScreen.mainScreen().getBounds());
        UIViewController vc = new UIViewController() {
            @Override
            public boolean shouldAutorotateToInterfaceOrientation(int orientation) {
                return true;
            }

            @Override
            public void loadView() {
                UIView root = new UIView(UIScreen.mainScreen().getApplicationFrame());
                root.setBackgroundColor(UIColor.whiteColor);
                UILabel label = new UILabel(new CGRect(10, 100, 150, 20));
                label.setText("Hello World");
                root.addSubview(label);
                setView(root);
            }
        };
        window.setRootViewController(vc);
        window.addSubview(vc.getView());
        window.makeKeyAndVisible();
        return false;
    }

    public static void main(String[] args) {
        UIApplication.main(args, null, HelloWorld.class);
    }

}