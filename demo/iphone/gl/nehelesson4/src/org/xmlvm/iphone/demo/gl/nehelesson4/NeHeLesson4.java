/*
 * Copyright (c) 2004-2009 XMLVM --- An XML-based Programming Language
 * 
 * This program is free software; you can redistribute it and/or modify it under
 * the terms of the GNU General Public License as published by the Free Software
 * Foundation; either version 2 of the License, or (at your option) any later
 * version.
 * 
 * This program is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
 * FOR A PARTICULAR PURPOSE. See the GNU General Public License for more
 * details.
 * 
 * You should have received a copy of the GNU General Public License along with
 * this program; if not, write to the Free Software Foundation, Inc., 675 Mass
 * Ave, Cambridge, MA 02139, USA.
 * 
 * For more information, visit the XMLVM Home Page at http://www.xmlvm.org
 */

package org.xmlvm.iphone.demo.gl.nehelesson4;

import org.xmlvm.iphone.UIApplication;
import org.xmlvm.iphone.UIScreen;
import org.xmlvm.iphone.UIWindow;

public class NeHeLesson4 extends UIApplication {
    UIWindow window;
    GLView   mainView;

    @Override
    public void applicationDidFinishLaunching(UIApplication application) {
        this.setStatusBarHidden(true);

        UIScreen screen = UIScreen.mainScreen();
        window = new UIWindow(screen.getApplicationFrame());

        mainView = new NeHeLesson4View(screen.getApplicationFrame());

        window.addSubview(mainView);
        window.makeKeyAndVisible();
    }

    public static void main(String[] argv) {
        System.setProperty("xmlvm.gl", "true");
        UIApplication.main(argv, NeHeLesson4.class);
    }
}
