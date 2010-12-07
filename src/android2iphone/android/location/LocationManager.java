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

package android.location;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import org.xmlvm.iphone.CLLocation;
import org.xmlvm.iphone.CLLocationCoordinate2D;
import org.xmlvm.iphone.CLLocationManager;
import org.xmlvm.iphone.CLLocationManagerDelegate;

public class LocationManager {

    public static final String NETWORK_PROVIDER = "network";
    public static final String GPS_PROVIDER = "gps";
    private final CLLocationManager manager;
    private final HashSet<LocationListener> fine_listeners;
    private final HashSet<LocationListener> coarse_listeners;
    private Location lastKnownLocation = null;

    public LocationManager() {
        fine_listeners = new HashSet<LocationListener>();
        coarse_listeners = new HashSet<LocationListener>();

        manager = new CLLocationManager();
        manager.setDelegate(new CLLocationManagerDelegate() {

            @Override
            public void didUpdateToLocation(CLLocationManager manager, CLLocation newLocation, CLLocation oldLocation) {
                lastKnownLocation = convertCLLocation(newLocation);
                for (LocationListener props : fine_listeners) {
                    props.onLocationChanged(lastKnownLocation);
                }
                for (LocationListener props : coarse_listeners) {
                    props.onLocationChanged(lastKnownLocation);
                }
            }
        });
        manager.startMonitoringSignificantLocationChanges();
    }

    @SuppressWarnings("SleepWhileInLoop")
    public Location getLastKnownLocation(String provider) {
        // 500 milliseconds maximum delay
        for (int i = 0; i < 5; i++) {
            try {
                Thread.sleep(100);
            } catch (InterruptedException ex) {
            }
            lastKnownLocation = convertCLLocation(manager.getLocation());
            if (lastKnownLocation != null) {
                break;
            }
        }
        if (coarse_listeners.isEmpty()) {
            manager.stopMonitoringSignificantLocationChanges();
        }
        return lastKnownLocation;
    }

    public boolean isProviderEnabled(String provider) {
        return CLLocationManager.locationServicesEnabled();
    }

    public void removeUpdates(LocationListener locationListener) {
        if (locationListener == null) {
            return;
        }
        if (fine_listeners.remove(locationListener) && fine_listeners.isEmpty()) {
            manager.stopUpdatingLocation();
        } else if (coarse_listeners.remove(locationListener) && coarse_listeners.isEmpty()) {
            manager.stopMonitoringSignificantLocationChanges();
        }
    }

    public void requestLocationUpdates(String provider, long minTime, float minDistance,
            LocationListener locationListener) {
        if (locationListener == null) {
            return;
        }

        if (GPS_PROVIDER.equals(provider)) {
            fine_listeners.add(locationListener);
            manager.startUpdatingLocation();
        } else if (NETWORK_PROVIDER.equals(provider)) {
            coarse_listeners.add(locationListener);
            manager.stopMonitoringSignificantLocationChanges();
        } else {
            // Not a valid provider
            return;
        }
        // TODO : There is an issue here, the minimum distance is set globally
        // and not for every different LocationListener. Probably create more
        // than one CLLocationManager ?
        manager.setDistanceFilter(minDistance);
    }

    public List<String> getProviders(boolean enabledOnly) {
        return getProviders(null, enabledOnly);
    }

    public List<String> getProviders(Criteria criteria, boolean enabledOnly) {
        ArrayList<String> result = new ArrayList<String>();
        if ((!enabledOnly) || CLLocationManager.locationServicesEnabled()) {
            result.add(NETWORK_PROVIDER);
            result.add(GPS_PROVIDER);
        }
        return result;
    }

    private static Location convertCLLocation(CLLocation loc) {
        if (loc == null) {
            return null;
        }

        Location location = new Location(GPS_PROVIDER);
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
}
