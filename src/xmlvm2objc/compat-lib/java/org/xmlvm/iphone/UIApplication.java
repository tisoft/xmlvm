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

import org.xmlvm.iphone.internal.Simulator;
import org.xmlvm.iphone.internal.SimulatorDesktop;

public abstract class UIApplication extends UIResponder {

    private boolean              idleTimerDisabled;
    private static UIApplication instance;
    List<UIWindow>               windows;
    UIWindow                     keyWindow;
    private int                  statusBarStyle;

    public UIApplication() {
        windows = new ArrayList<UIWindow>();
        instance = this;
        setIdleTimerDisabled(false);
        if (!Simulator.initialized) {
            // We run on the desktop
            new SimulatorDesktop();
        }
        setStatusBarOrientation(UIInterfaceOrientation.Portrait);
    }

    public static UIApplication sharedApplication() {
        return instance;
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

    public abstract void applicationDidFinishLaunching(UIApplication app);

    public void applicationWillTerminate(UIApplication app) {
    }

    public void applicationDidBecomeActive(UIApplication app) {
    }

    public void applicationWillResignActive(UIApplication app) {
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

    public static void main(String[] args, Class appClass) {
        try {
            final UIApplication theApp = (UIApplication) appClass.newInstance();
            Runnable r = new Runnable() {

                public void run() {
                    theApp.applicationDidFinishLaunching(theApp);
                }
            };

            SwingUtilities.invokeLater(r);
        } catch (Throwable e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
    }
}
