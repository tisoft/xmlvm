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
package org.xmlvm.acl.wp7;

import Compatlib.System.Object;
import Compatlib.System.String;
import Compatlib.System.Windows.StartupEventArgs;
import Compatlib.System.Windows.StartupEventHandler;
import android.app.Application;
import android.internal.CommonDeviceAPIFinder;

/**
 * Wiring code for launching an Android Activity inside the iPhone simulator
 */
public class WP7AndroidAppLauncher extends Compatlib.System.Windows.Application {

    static {
        CommonDeviceAPIFinder.commonDeviceAPI = new WP7API();
    }
    
    public WP7AndroidAppLauncher() {
        this.Startup.__add(new StartupEventHandler(this, new String("StartUp")));
    }
   
    public void StartUp(Object sender, StartupEventArgs args) {
        Application.getApplication().onCreate();
    }
}
