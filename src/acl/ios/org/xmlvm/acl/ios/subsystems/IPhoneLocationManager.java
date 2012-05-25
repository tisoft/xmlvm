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

package org.xmlvm.acl.ios.subsystems;

import org.xmlvm.acl.common.subsystems.CommonLocationManager;
import org.xmlvm.iphone.CLLocation;
import org.xmlvm.iphone.CLLocationCoordinate2D;
import org.xmlvm.iphone.CLLocationManager;
import org.xmlvm.iphone.CLLocationManagerDelegate;

import android.location.Location;
import android.location.LocationListener;
import android.location.LocationManager;

/**
 *
 */
public class IPhoneLocationManager extends CLLocationManagerDelegate implements CommonLocationManager {
    
    private LocationManager locationManager;
    private CLLocationManager clLocationManager;

    public IPhoneLocationManager(LocationManager locationManager) {
        this.locationManager = locationManager;
    }

    @Override
    public void startMonitoringSignificantLocationChanges() {
        clLocationManager.startMonitoringSignificantLocationChanges();
    }

    @Override
    public void stopMonitoringSignificantLocationChanges() {
        clLocationManager.stopMonitoringSignificantLocationChanges();
    }
    
    @Override
    public void didUpdateToLocation(CLLocationManager manager, CLLocation newLocation, CLLocation oldLocation) {
        Location lastKnownLocation = convertCLLocation(newLocation);
        for (LocationListener props : locationManager.xmlvmGetFineListeners()) {
            props.onLocationChanged(lastKnownLocation);
        }
        for (LocationListener props : locationManager.xmlvmGetCoarseListeners()) {
            props.onLocationChanged(lastKnownLocation);
        }
        locationManager.xmlvmSetLastKnownLocation(lastKnownLocation);
    }
    
    private static Location convertCLLocation(CLLocation loc) {
        if (loc == null) {
            return null;
        }

        Location location = new Location(LocationManager.GPS_PROVIDER);
        CLLocationCoordinate2D coords = loc.getCoordinate();
        location.setLatitude(coords.latitude);
        location.setLongitude(coords.longitude);
        location.setAltitude(loc.getAltitude());
        location.setAccuracy((float) loc.getHorizontalAccuracy());
        double heading = loc.getCourse();
        if (heading >= 0) {
            location.setBearing((float) heading);
        }
        return location;
    }

    @Override
    public void startUpdatingLocation() {
        clLocationManager.startUpdatingLocation();
    }
    
    @Override
    public void stopUpdatingLocation() {
        clLocationManager.stopUpdatingLocation();
    }

    @Override
    public void setDistanceFilter(float minDistance) {
        clLocationManager.setDistanceFilter(minDistance);
    }

    @Override
    public Location getLocation() {
        return convertCLLocation(clLocationManager.getLocation());
    }

    @Override
    public boolean locationServicesEnabled() {
        return CLLocationManager.locationServicesEnabled();
    }

}
