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
    private List<UIWindow>        windows;
    private int                   statusBarStyle;
    private boolean               networkActivityIndicatorVisible;


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

    void setKeyWindow(UIWindow window) {
        if (!windows.contains(window)) {
            windows.add(window);
        }
        Simulator.redrawDisplay();
    }

    public UIWindow getKeyWindow() {
        if (windows.size() < 1) {
            return null;
        }
        return windows.get(windows.size() - 1);
    }

    public List<UIWindow> getWindows() {
        return new ArrayList<UIWindow>(windows);
    }

    public void setStatusBarOrientation(int orientation) {
        Simulator.setStatusBarOrientation(orientation);
    }

    public void setStatusBarHidden(boolean flag) {
        setStatusBarHidden(flag, false);
    }

    public void setStatusBarHidden(boolean flag, boolean animated) {
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

    public boolean isNetworkActivityIndicatorVisible() {
        return networkActivityIndicatorVisible;
    }

    public void setNetworkActivityIndicatorVisible(boolean networkActivityIndicatorVisible) {
        this.networkActivityIndicatorVisible = networkActivityIndicatorVisible;
    }

    public boolean openURL(NSURL url) {
        // TODO : Java implementation
        return true;
    }

    public static void main(String[] args, Class<? extends UIApplication> uiApplication,
            Class<? extends UIApplicationDelegate> uiApplicationDelegate) {
        try {
            if (uiApplication == null)
                uiApplication = UIApplication.class;
            if (uiApplicationDelegate == null)
                uiApplicationDelegate = UIApplicationDelegate.class;
            instance = ((UIApplication) uiApplication.newInstance());
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
