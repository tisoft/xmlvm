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

package android.location;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;

import org.xmlvm.acl.common.subsystems.CommonLocationManager;

import android.internal.CommonDeviceAPIFinder;

public class LocationManager {

    public static final String NETWORK_PROVIDER = "network";
    public static final String GPS_PROVIDER = "gps";
    private final CommonLocationManager manager;
    private final HashSet<LocationListener> fine_listeners;
    private final HashSet<LocationListener> coarse_listeners;
    private Location lastKnownLocation = null;

    public LocationManager() {
        fine_listeners = new HashSet<LocationListener>();
        coarse_listeners = new HashSet<LocationListener>();

        manager = CommonDeviceAPIFinder.instance().getLocationManager(this);
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
            lastKnownLocation = manager.getLocation();
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
        return CommonDeviceAPIFinder.instance().getLocationManager(this).locationServicesEnabled();
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
        if ((!enabledOnly) || CommonDeviceAPIFinder.instance().getLocationManager(this).locationServicesEnabled()) {
            result.add(NETWORK_PROVIDER);
            result.add(GPS_PROVIDER);
        }
        return result;
    }

    public HashSet<LocationListener> xmlvmGetFineListeners() {
        return fine_listeners;
    }

    public HashSet<LocationListener> xmlvmGetCoarseListeners() {
        return coarse_listeners;
    }
    
    public void xmlvmSetLastKnownLocation(Location location) {
        this.lastKnownLocation = location;
    }

}
