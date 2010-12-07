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

package org.xmlvm.demo.navigation;

import java.util.ArrayList;
import org.xmlvm.iphone.UIApplication;
import org.xmlvm.iphone.UIApplicationDelegate;
import org.xmlvm.iphone.UINavigationController;
import org.xmlvm.iphone.UIScreen;
import org.xmlvm.iphone.UITabBarController;
import org.xmlvm.iphone.UIViewController;
import org.xmlvm.iphone.UIWindow;

public class Main extends UIApplicationDelegate {

    private UITabBarController controller;
    
    @Override
    public void applicationDidFinishLaunching(UIApplication app) {
        UIWindow window = new UIWindow(UIScreen.mainScreen().getBounds());

        
        ArrayList<UIViewController> list = new ArrayList<UIViewController>();
        list.add(new WelcomePage());
        list.add(new SecondPage());
        
        controller = new UITabBarController();
        controller.setViewControllers(list);
        
        window.addSubview(controller.getView());
        window.makeKeyAndVisible();
    }

    public static void main(String[] args) {
        UIApplication.main(args, null, Main.class);
    }
}
