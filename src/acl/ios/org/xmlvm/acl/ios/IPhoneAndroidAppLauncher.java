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

import java.util.Map;

import android.app.Application;
import android.internal.CommonDeviceAPIFinder;

import org.xmlvm.iphone.CFRunLoop;
import org.xmlvm.iphone.UIApplication;
import org.xmlvm.iphone.UIApplicationDelegate;

/**
 * Wiring code for launching an Android Activity inside the iPhone simulator
 */
public class IPhoneAndroidAppLauncher extends UIApplicationDelegate {

    static {
        CommonDeviceAPIFinder.commonDeviceAPI = new IPhoneAPI();
    }


    /**
     * This method guarantees that events queued in the run loop get executed.
     * This needs to be done before an app is terminated or pushed into the
     * background in order to guarantee that any handlers queued (e.g., those
     * added for the activity lifecycle) get executed.
     */
    private void clearRunLoopQueue() {
        while (CFRunLoop.runInMode(CFRunLoop.kCFRunLoopDefaultMode, (double) 0, (byte) 1) == CFRunLoop.kCFRunLoopRunHandledSource) {
            // nothing
        }
    }

    @Override
    public boolean didFinishLaunchingWithOptions(UIApplication app, Map<String, Object> launchOptions) {
        Application.getApplication().onCreate();
        clearRunLoopQueue();
        return false;
    }

    @Override
    public void willTerminate(UIApplication iphone_app) {
        Application.getApplication().onTerminate();
        clearRunLoopQueue();
    }

    @Override
    public void didReceiveMemoryWarning(UIApplication iphone_app) {
        Application.getApplication().onLowMemory();
        clearRunLoopQueue();
    }

    @Override
    public void didBecomeActive(UIApplication iphone_app) {
        Application.getApplication().onRestart();
    }

    @Override
    public void willResignActive(UIApplication iphone_app) {
        Application.getApplication().xmlvmShouldRestartParent(false);
        Application.getApplication().onStop();
        clearRunLoopQueue();
    }

    public static void main(String[] args) {
        UIApplication.main(null, null, IPhoneAndroidAppLauncher.class);
    }
}
