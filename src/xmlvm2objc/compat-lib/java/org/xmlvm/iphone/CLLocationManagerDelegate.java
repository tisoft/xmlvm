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

/**
 * 
 * @author teras
 */
@XMLVMSkeletonOnly
public abstract class CLLocationManagerDelegate {

    public void didUpdateToLocation(CLLocationManager manager, CLLocation newLocation,
            CLLocation oldLocation) {
    }

    public void didFailWithError(CLLocationManager manager, NSError error) {
    }

    public void didUpdateHeading(CLLocationManager manager, CLHeading newHeading) {
    }

    public boolean locationManagerShouldDisplayHeadingCalibration(CLLocationManager manager) {
        return false;
    }

    public void didEnterRegion(CLLocationManager manager, CLRegion region) {
    }

    public void didExitRegion(CLLocationManager manager, CLRegion region) {
    }

    public void monitoringDidFailForRegion(CLLocationManager manager, CLRegion region, NSError error) {
    }
}
