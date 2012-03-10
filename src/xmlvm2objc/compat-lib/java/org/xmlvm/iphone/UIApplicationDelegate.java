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

    public boolean applicationDidFinishLaunchingWithOptions(UIApplication app, Map<String, Object> launchOptions) {
        return true;
    }

    public void applicationDidFinishLaunching(UIApplication app) {
    }

    public void applicationWillTerminate(UIApplication app) {
    }

    public void applicationDidBecomeActive(UIApplication app) {
    }

    public void applicationWillResignActive(UIApplication app) {
    }

    public void applicationDidReceiveMemoryWarning(UIApplication app) {
    }

    /**
     * - (BOOL)application:(UIApplication *)application openURL:(NSURL *)url
     * sourceApplication:(NSString *)sourceApplication annotation:(id)annotation
     * ;
     */
    public boolean openURL(UIApplication application, NSURL url, String sourceApplication,
            Object annotation) {
        return false;
    }

}
