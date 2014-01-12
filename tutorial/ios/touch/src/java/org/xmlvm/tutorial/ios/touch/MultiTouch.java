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

package org.xmlvm.tutorial.ios.touch;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Set;

import org.xmlvm.iphone.CGContext;
import org.xmlvm.iphone.CGPoint;
import org.xmlvm.iphone.CGRect;
import org.xmlvm.iphone.UIApplication;
import org.xmlvm.iphone.UIApplicationDelegate;
import org.xmlvm.iphone.UIEvent;
import org.xmlvm.iphone.UIGraphics;
import org.xmlvm.iphone.UIScreen;
import org.xmlvm.iphone.UITouch;
import org.xmlvm.iphone.UITouchPhase;
import org.xmlvm.iphone.UIView;
import org.xmlvm.iphone.UIWindow;

/**
 * A simple multi-touch demo for iOS. A circle is drawn wherever the user
 * touches the screen. Touch events are tracked over the screen. The application
 * also works when using more than one finger.
 */
public class MultiTouch extends UIApplicationDelegate {

    @Override
    public boolean didFinishLaunchingWithOptions(UIApplication app, Map<String, Object> launchOptions) {
        UIWindow window = new UIWindow(UIScreen.mainScreen().getBounds());
        /*
         * A custom UIView that covers the complete screen. Various methods are
         * overridden to intercept touches events.
         */
        UIView view = new UIView(UIScreen.mainScreen().getApplicationFrame()) {

            /*
             * List of points that represents the locations of fingers on the
             * screen.
             */
            private List<CGPoint> points = new ArrayList<CGPoint>();


            /*
             * This method converts the events encapsulated by an UIEvent into a
             * list of CGPoints. The list is stored in 'points'.
             */
            private void getTouches(UIEvent event) {
                /*
                 * Erase previous list of points.
                 */
                points.clear();
                /*
                 * Iterate over all UITouches that are associated with this
                 * UIEvent
                 */
                for (UITouch touch : event.allTouches()) {
                    /*
                     * If a UITouch has the phase UITouchPhaseEnded (finger
                     * lifted from screen) it is not included.
                     */
                    if (touch.getPhase() != UITouchPhase.Ended) {
                        /*
                         * The locationInView() method retrieves the coordinates
                         * of the UITouch relative to a specific view (which is
                         * the custom view in this case).
                         */
                        points.add(touch.locationInView(this));
                    }
                }
                /*
                 * Cause a redraw of the custom view.
                 */
                this.setNeedsDisplay();
            }

            /*
             * Called whenever a finger touches the screen.
             */
            @Override
            public void touchesBegan(Set<UITouch> touches, UIEvent event) {
                getTouches(event);
            }

            /*
             * Called whenever a finger is lifted from the screen.
             */
            @Override
            public void touchesEnded(Set<UITouch> touches, UIEvent event) {
                getTouches(event);
            }

            /*
             * Called whenever a finger that is already touching the screen is
             * moved across the screen.
             */
            @Override
            public void touchesMoved(Set<UITouch> touches, UIEvent event) {
                getTouches(event);
            }

            @Override
            public void drawRect(CGRect rect) {
                CGContext ctx = UIGraphics.getCurrentContext();
                /*
                 * Fill background with black. This will remove all previously
                 * drawn circles.
                 */
                ctx.fillRect(rect);
                /*
                 * Set fill color to white.
                 */
                ctx.setFillColor(new float[] { 1, 1, 1, 1 });
                for (CGPoint p : points) {
                    /*
                     * For each point, draw a circle with a radius of 20px
                     * around the center point.
                     */
                    ctx.fillEllipseInRect(new CGRect(p.x - 20, p.y - 20, 40, 40));
                }
            }
        };
        /*
         * Calling setMultipleTouchEnabled(true) is necessary. Otherwise only
         * one UITouch will be delivered even for multi-touch gestures.
         */
        view.setMultipleTouchEnabled(true);
        window.addSubview(view);
        window.makeKeyAndVisible();
        return false;
    }

    public static void main(String[] args) {
        UIApplication.main(args, null, MultiTouch.class);
    }

}
