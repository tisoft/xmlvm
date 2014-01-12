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

package org.xmlvm.iphone.demo.gl.nehelesson4;

import java.util.Map;

import org.xmlvm.iphone.UIApplication;
import org.xmlvm.iphone.UIApplicationDelegate;
import org.xmlvm.iphone.UIScreen;
import org.xmlvm.iphone.UIWindow;

public class NeHeLesson4 extends UIApplicationDelegate {
    UIWindow window;
    GLView   mainView;

    @Override
    public boolean didFinishLaunchingWithOptions(UIApplication app, Map<String, Object> launchOptions) {
        app.setStatusBarHidden(true);

        UIScreen screen = UIScreen.mainScreen();
        window = new UIWindow(screen.getApplicationFrame());

        mainView = new NeHeLesson4View(screen.getApplicationFrame());

        window.addSubview(mainView);
        window.makeKeyAndVisible();
        return false;
    }

    public static void main(String[] argv) {
        System.setProperty("xmlvm.gl", "true");
        UIApplication.main(argv, null, NeHeLesson4.class);
    }
}
