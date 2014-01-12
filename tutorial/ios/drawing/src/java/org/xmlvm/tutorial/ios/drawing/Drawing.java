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

package org.xmlvm.tutorial.ios.drawing;

import java.util.Map;

import org.xmlvm.iphone.CGContext;
import org.xmlvm.iphone.CGRect;
import org.xmlvm.iphone.UIApplication;
import org.xmlvm.iphone.UIApplicationDelegate;
import org.xmlvm.iphone.UIColor;
import org.xmlvm.iphone.UIGraphics;
import org.xmlvm.iphone.UIImage;
import org.xmlvm.iphone.UIScreen;
import org.xmlvm.iphone.UIView;
import org.xmlvm.iphone.UIViewController;
import org.xmlvm.iphone.UIWindow;

/**
 * This application demonstrates some custom drawing. It subsclasses
 * <code>UIView</code> to override method <code>drawRect()</code>. A
 * <code>CGContext</code> is used to do some drawing operations.
 */
public class Drawing extends UIApplicationDelegate {

    UIImage logo;


    @Override
    public boolean didFinishLaunchingWithOptions(UIApplication app, Map<String, Object> launchOptions) {
        UIWindow window = new UIWindow(UIScreen.mainScreen().getBounds());
        logo = UIImage.imageNamed("logo.png");
        UIViewController vc = new UIViewController() {
            @Override
            public boolean shouldAutorotateToInterfaceOrientation(int orientation) {
                return true;
            }

            @Override
            public void loadView() {
                /*
                 * Subclass a UIView in order to override method drawRect().
                 * This method will be invoked whenever the view needs to be
                 * redrawn. The CGRect parameter designates the area of the
                 * UIView that needs to be redrawn. In this particular example
                 * we do not make use of this parameter but redraw the complete
                 * view instead.
                 */
                UIView root = new UIView(UIScreen.mainScreen().getApplicationFrame()) {
                    @Override
                    public void drawRect(CGRect rect) {
                        /*
                         * UIGraphics.getCurrentContext() will retrieve the
                         * current CGContext that can be used to draw directly
                         * to the UIView's view.
                         */
                        CGContext ctx = UIGraphics.getCurrentContext();
                        /*
                         * The color is defined as an array of float values in
                         * the interval 0-1 representing an RGBA (Red, Green,
                         * Blue, Alpha) value. The fill color below represents
                         * red with no transparency.
                         */
                        ctx.setFillColor(new float[] { 1, 0, 0, 1 });
                        /*
                         * Draw a rectangle at coordinate (50, 50) with size
                         * (50, 50)
                         */
                        ctx.fillRect(new CGRect(50, 50, 50, 50));
                        /*
                         * Change color to green with a 40% transparency.
                         */
                        ctx.setFillColor(new float[] { 0, 1, 0, 0.4f });
                        /*
                         * Draw a circle in within the bounding box given as an
                         * argument.
                         */
                        ctx.fillEllipseInRect(new CGRect(80, 50, 50, 50));
                        logo.drawInRect(new CGRect(150, 50, 100, 79));
                    }
                };
                root.setBackgroundColor(UIColor.whiteColor);
                setView(root);
            }
        };
        window.setRootViewController(vc);
        window.addSubview(vc.getView());
        window.makeKeyAndVisible();
        return false;
    }

    public static void main(String[] args) {
        UIApplication.main(args, null, Drawing.class);
    }

}
