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

import org.xmlvm.XMLVMSkeletonOnly;
import org.xmlvm.iphone.internal.Simulator;

@XMLVMSkeletonOnly
public class UIDevice extends NSObject {

    private static final UIDevice current                    = new UIDevice();
    private boolean               proximityMonitoringEnabled = false;
    private boolean               batteryMonitoringEnabled   = false;


    private UIDevice() {
    }

    public static UIDevice currentDevice() {
        return current;
    }

    public boolean getMultitaskingSupported() {
        return false;
    }

    public String getName() {
        return "iPhone Java Simulator";
    }

    public String getSystemName() {
        return "iOS";
    }

    public String getSystemVersion() {
        return "3.1";
    }

    public String getModel() {
        return "iPhone Java Simulator";
    }

    public String getLocalizedModel() {
        return "iPhone Java Simulator";
    }

    public int getUserInterfaceIdiom() {
        return UIUserInterfaceIdiom.Phone;
    }

    public int getOrientation() {
        return Simulator.getStatusBarOrientation();
    }

    public boolean isGeneratingDeviceOrientationNotifications() {
        return false;
    }

    public void beginGeneratingDeviceOrientationNotifications() {
        // TODO: Java implementation
    }

    public void endGeneratingDeviceOrientationNotifications() {
        // TODO: Java implementation
    }

    public float getBatteryLevel() {
        if (batteryMonitoringEnabled) {
            return 0.5f;
        } else {
            return -1;
        }
    }

    public boolean isBatteryMonitoringEnabled() {
        return batteryMonitoringEnabled;
    }

    public void setBatteryMonitoringEnabled(boolean batteryMonitoringEnabled) {
        this.batteryMonitoringEnabled = batteryMonitoringEnabled;
    }

    public int getBatteryState() {
        return UIDeviceBatteryState.Unknown;
    }

    public boolean isProximityMonitoringEnabled() {
        return proximityMonitoringEnabled;
    }

    public void setProximityMonitoringEnabled(boolean proximityMonitoringEnabled) {
        this.proximityMonitoringEnabled = proximityMonitoringEnabled;
    }

    public boolean getProximityState() {
        return false;
    }
}
