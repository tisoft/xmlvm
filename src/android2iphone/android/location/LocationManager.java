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

import android.internal.Assert;

public class LocationManager {

    /**
     * Name of the network location provider. This provider determines location
     * based on availability of cell tower and WiFi access points. Results are
     * retrieved by means of a network lookup.
     * 
     * Requires either of the permissions
     * android.permission.ACCESS_COARSE_LOCATION or
     * android.permission.ACCESS_FINE_LOCATION.
     */
    public static final String NETWORK_PROVIDER = "network";

    /**
     * Name of the GPS location provider. This provider determines location
     * using satellites. Depending on conditions, this provider may take a while
     * to return a location fix.
     * 
     * Requires the permission android.permission.ACCESS_FINE_LOCATION.
     * 
     * <p>
     * The extras Bundle for the GPS location provider can contain the following
     * key/value pairs:
     * 
     * <ul>
     * <li>satellites - the number of satellites used to derive the fix
     * </ul>
     */
    public static final String GPS_PROVIDER     = "gps";

    public Location getLastKnownLocation(String provider) {
        Assert.NOT_IMPLEMENTED();
        return null;
    }

    public boolean isProviderEnabled(String provider) {
        Assert.NOT_IMPLEMENTED();
        return false;
    }

    public void removeUpdates(LocationListener locationListener) {
        Assert.NOT_IMPLEMENTED();
    }

    public void requestLocationUpdates(String provider, long minTime, float minDistance,
            LocationListener listener) {
        Assert.NOT_IMPLEMENTED();
    }
}
