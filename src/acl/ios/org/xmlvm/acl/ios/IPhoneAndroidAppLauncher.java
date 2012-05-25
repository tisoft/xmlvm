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
package org.xmlvm.acl.ios;

import android.app.Application;
import android.internal.CommonDeviceAPIFinder;

import org.xmlvm.iphone.UIApplication;
import org.xmlvm.iphone.UIApplicationDelegate;

/**
 * Wiring code for launching an Android Activity inside the iPhone simulator
 */
public class IPhoneAndroidAppLauncher extends UIApplicationDelegate {

    static {
        CommonDeviceAPIFinder.commonDeviceAPI = new IPhoneAPI();
    }
    
    @Override
    public void applicationDidFinishLaunching(UIApplication iphone_app) {
        Application.getApplication().onCreate();
    }

    @Override
    public void applicationWillTerminate(UIApplication iphone_app) {
        Application.getApplication().onTerminate();
    }

    @Override
    public void applicationDidReceiveMemoryWarning(UIApplication iphone_app) {
        Application.getApplication().onLowMemory();
    }

    @Override
    public void applicationDidBecomeActive(UIApplication iphone_app) {
        Application.getApplication().onRestart();
    }

    @Override
    public void applicationWillResignActive(UIApplication iphone_app) {
        Application.getApplication().onStop();
    }

    public static void main(String[] args) {
        UIApplication.main(null, null, IPhoneAndroidAppLauncher.class);
    }
}
