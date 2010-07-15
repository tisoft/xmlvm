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

/**
 *
 * @author teras
 */
public class UIDevice extends NSObject {

    private static final UIDevice current      = new UIDevice();
    private boolean proximityMonitoringEnabled = false;
    private boolean batteryMonitoringEnabled   = false;

    private UIDevice() {
    }

    public static UIDevice currentDevice() {
        return current;
    }

    public boolean getMultitaskingSupported() {
        return false;
    }

    public String getUniqueIdentifier() {
        return "00000000-0000-0000-0000-000000000000";
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
        return UIDeviceOrientation.Unknown;
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
