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

package org.xmlvm.tutorial.ios.helloworld.portrait;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.xmlvm.iphone.NSTimer;
import org.xmlvm.iphone.NSTimerDelegate;
import org.xmlvm.iphone.UIButton;
import org.xmlvm.iphone.CGRect;
import org.xmlvm.iphone.UIApplication;
import org.xmlvm.iphone.UIApplicationDelegate;
import org.xmlvm.iphone.UIButtonType;
import org.xmlvm.iphone.UIColor;
import org.xmlvm.iphone.UIControl;
import org.xmlvm.iphone.UIControlDelegate;
import org.xmlvm.iphone.UIControlEvent;
import org.xmlvm.iphone.UIControlState;
import org.xmlvm.iphone.UILabel;
import org.xmlvm.iphone.UIScreen;
import org.xmlvm.iphone.UITextAlignment;
import org.xmlvm.iphone.UIWindow;

/**
 * This is the classic "Hello World" application for iOS. The entry point is the
 * usual <code>main()</code> method of any Java application. Note that an
 * application should only contain one <code>main()</code>. The only thing
 * usually done in <code>main()</code> is to call
 * <code>UIApplication.main()</code> which passes control to iOS and will launch
 * the application. Note that <code>UIApplication.main()</code> never returns.
 * The last argument passed to <code>UIApplication.main()</code> is the class
 * object of the application delegate. iOS will instantiate the delegate (class
 * <code>HelloWorld</code> in this case) and invoke the callback
 * <code>didFinishLaunching()</code> that serves as main entry point
 * of any iOS application. All the API used in this and subsequent example is
 * compliant with the official iOS API.
 */
public class HelloWorld extends UIApplicationDelegate {

    static UIWindow window;
    static List<NSTimer> timer = new ArrayList<NSTimer>();

    @Override
    public boolean didFinishLaunchingWithOptions(UIApplication app, Map<String, Object> launchOptions) {
        /*
         * Determine the bounding box of the main screen. This will depend on
         * the resolution of the screen. The bounding box will exclude the
         * status bar (if visible). In this particular example the status bar is
         * visible and hence the origin of the bounding box will be (0, 20).
         */
        CGRect rect = UIScreen.mainScreen().getApplicationFrame();
        /*
         * Create a top-level window. Note that every application should only
         * contain one window. The size of the window is passed as an argument
         * to the constructor.
         */
        window = new UIWindow(rect);
        /*
         * By default the background color of the window is black which is why
         * it is changed to white.
         */
        window.setBackgroundColor(UIColor.whiteColor);
        /*
         * The origin of the bounding box is reset to (0,0) because the child
         * widget (the UILabel in this case) should be aligned in the top-left
         * corner of the UIWindow.
         */
        rect.origin.x = rect.origin.y = 0;
        /*
         * Create a UILabel, make it span the complete size of the UIWindow, set
         * the text and alignment and finally add it as a subview to the
         * UIWindow to build up the view hierarchy.
         */
        UIButton button = UIButton.buttonWithType(UIButtonType.RoundedRect);
        button.setFrame(rect);
        button.setTitle("Test", UIControlState.Normal);
        button.addTarget(new UIControlDelegate() {

            @Override
            public void raiseEvent(UIControl sender, int uiControlEvent) {
                timer.clear();
                for (int i = 0; i < 200; i++) {
                    NSTimer t = NSTimer.scheduledTimerWithTimeInterval(0.05, new NSTimerDelegate() {

                        @Override
                        public void timerEvent(NSTimer timer) {
                            // TODO Auto-generated method stub
                            
                        }}, null, false);
                    timer.add(t);
                }
            }
        }, UIControlEvent.TouchUpInside);
        window.addSubview(button);
        /*
         * Finally the UIWindow is told to become the main (key) window and
         * become visible.
         */
        window.makeKeyAndVisible();
        return false;
    }

    public static void main(String[] args) {
        UIApplication.main(args, null, HelloWorld.class);
    }

}
