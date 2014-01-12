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

import java.util.Map;
import org.xmlvm.XMLVMSkeletonOnly;

@XMLVMSkeletonOnly
public class UIApplicationDelegate extends NSObject {

    public boolean didFinishLaunchingWithOptions(UIApplication app, Map<String, Object> launchOptions) {
        return true;
    }

    public boolean openURL(UIApplication app, NSURL url, String sourceApplication, Object annotation) {
        return true;
    }

    public void didBecomeActive(UIApplication app) {
    }

    public void willResignActive(UIApplication app) {
    }

    public void didEnterBackground(UIApplication app) {
    }

    public void willEnterForeground(UIApplication app) {
    }

    public void willTerminate(UIApplication app) {
    }

    public void didReceiveRemoteNotification(UIApplication app, Map<String, Object> userinfo) {
    }

    public void didRegisterForRemoteNotificationsWithDeviceToken(UIApplication app, NSData deviceToken) {
    }

    public void didFailToRegisterForRemoteNotificationsWithError(UIApplication app, NSError error) {
    }

    public void didReceiveLocalNotification(UIApplication app, UILocalNotification notification) {
    }

    public void didReceiveMemoryWarning(UIApplication app) {
    }

    public void significantTimeChange(UIApplication app) {
    }

    public void willChangeStatusBarOrientation(UIApplication app, int oldStatusBarOrientation, double duration) {
    }

    public void didChangeStatusBarOrientation(UIApplication app, int oldStatusBarOrientation) {
    }

    public void willChangeStatusBarFrame(UIApplication app, CGRect oldStatusBarFrame) {
    }

    public void didChangeStatusBarFrame(UIApplication app, CGRect oldStatusBarFrame) {
    }

    public void protectedDataWillBecomeUnavailable(UIApplication app) {
    }

    public void protectedDataDidBecomeAvailable(UIApplication app) {
    }
}
