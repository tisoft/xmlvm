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

package org.xmlvm.iphone;

import java.util.ArrayList;
import java.util.List;

import javax.swing.SwingUtilities;

import org.xmlvm.XMLVMSkeletonOnly;
import org.xmlvm.iphone.internal.Simulator;
import org.xmlvm.iphone.internal.SimulatorDesktop;

@XMLVMSkeletonOnly
public class UIApplication extends UIResponder {

    private boolean               idleTimerDisabled;
    private UIApplicationDelegate delegate;
    private static UIApplication  instance;
    List<UIWindow>                windows;
    UIWindow                      keyWindow;
    private int                   statusBarStyle;

    public UIApplication() {
        windows = new ArrayList<UIWindow>();
        setIdleTimerDisabled(false);
        if (!Simulator.initialized) {
            // We run on the desktop
            new SimulatorDesktop();
        }
        setStatusBarOrientation(UIInterfaceOrientation.Portrait);
    }

    public static UIApplication sharedApplication() {
        if (instance == null)
            instance = new UIApplication();
        return instance;
    }

    public UIApplicationDelegate getDelegate() {
        return delegate;
    }

    public void setDelegate(UIApplicationDelegate delegate) {
        this.delegate = delegate;
    }

    public void setIdleTimerDisabled(boolean flag) {
        this.idleTimerDisabled = flag;
    }

    public boolean isIdleTimerDisabled() {
        return this.idleTimerDisabled;
    }

    public void setKeyWindow(UIWindow window) {
        if (!windows.contains(window))
            windows.add(window);
        keyWindow = window;
        Simulator.redrawDisplay();
    }

    public UIWindow getKeyWindow() {
        return keyWindow;
    }

    public List<UIWindow> getWindows() {
        return new ArrayList<UIWindow>(windows);
    }

    public void setStatusBarOrientation(int orientation) {
        Simulator.setStatusBarOrientation(orientation);
    }

    public void setStatusBarHidden(boolean flag) {
        Simulator.setStatusBarHidden(flag);
    }

    public int getStatusBarStyle() {
        return statusBarStyle;
    }

    public void setStatusBarStyle(int uiStatusBarStyle) {
        this.statusBarStyle = uiStatusBarStyle;
    }

    public void setStatusBarStyle(int uiStatusBarStyle, boolean animated) {
        this.statusBarStyle = uiStatusBarStyle;
    }

    public boolean openURL(NSURL url) {
        // TODO : Java implementation
        return true;
    }

    public static void main(String[] args, Class<? extends UIApplication> uiApplication, Class<? extends UIApplicationDelegate> uiApplicationDelegate) {
        try {
            if (uiApplication==null)
                uiApplication = UIApplication.class;
            if (uiApplicationDelegate==null)
                uiApplicationDelegate = UIApplicationDelegate.class;
            instance = ((UIApplication)uiApplication.newInstance());
            instance.setDelegate((UIApplicationDelegate) uiApplicationDelegate.newInstance());
            Runnable r = new Runnable() {

                public void run() {
                    instance.getDelegate().applicationDidFinishLaunching(instance);
                }
            };

            SwingUtilities.invokeLater(r);
        } catch (Throwable e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
    }
}
