/** Copyright (c) 2002-2011 by XMLVM.org
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

package org.xmlvm.tutorial.android.sensor.gps;

import org.xmlvm.tutorial.android.sensor.gps.R;

import android.app.Activity;
import android.content.Context;
import android.location.Location;
import android.location.LocationListener;
import android.location.LocationManager;
import android.os.Bundle;
import android.widget.TextView;

/**
 * The GPSActivity application allows the user to see their current location
 * based on longitude and latitude. Both longitude and latitude will get updated
 * when there is a change of location. The main callback is a so-called
 * LocationListener that will be used by the Android system whenever there are
 * location events to be delivered to the application. The following tag needs
 * to be inserted into the manifest AndroidManifest.xml as a child node for
 * manifest node in order for the GPS application to work:
 * <code>&lt;uses-permission
 * android:name="android.permission.ACCESS_FINE_LOCATION" /&gt;</code>
 */
public class GPSActivity extends Activity {

    /**
     * LocationManager is needed to access the GPS information on the device.
     */
    LocationManager  locationManager;

    /**
     * Text label to display the current longitude.
     */
    private TextView labelLongitude;

    /**
     * Text label to display the current latitude.
     */
    private TextView labelLatitude;

    /**
     * Text label to display the current status.
     */
    private TextView labelStatus;

    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.main);

        labelLongitude = (TextView) findViewById(R.id.lblLongitude);
        labelLatitude = (TextView) findViewById(R.id.lblLatitude);
        labelStatus = (TextView) findViewById(R.id.lblStatus);

        /*
         * Retrieve the LocationManager instance that allows to access the
         * location-based API.
         */
        locationManager = (LocationManager) getSystemService(Context.LOCATION_SERVICE);

        /*
         * Implementing the LocationListener will allow us to customize what
         * happens when different location events happen. In this application,
         * we like to see our current location, so the most important method to
         * override is onLocationChanged() because we want to update our text
         * labels every time we get new location information.
         */
        LocationListener locationListener = new LocationListener() {

            /**
             * Called when the location has changed.
             */
            public void onLocationChanged(Location location) {
                labelLongitude.setText("" + location.getLongitude());
                labelLatitude.setText("" + location.getLatitude());
            }

            /**
             * Called when the provider is disabled by the user.
             */
            public void onProviderDisabled(String provider) {
                labelStatus.setText("GPS Disabled");
            }

            /**
             * Called when the provider is enabled by the user.
             */
            public void onProviderEnabled(String provider) {
                labelStatus.setText("GPS Enabled");
            }

            /**
             * Called when the provider status changes.
             */
            public void onStatusChanged(String provider, int status, Bundle extras) {
                labelStatus.setText("GPS Status Changed");
            }
        };

        /*
         * It is a good practice to display the last known location whenever
         * available, because it might take a while for the GPS information to
         * be obtained.
         */
        showLastKnownLocation();

        /*
         * There are two ways to obtain location information, an approximation
         * from the network or GPS information. We choose GPS information for
         * the purpose of this application. The other option is to use
         * LocationManager.NETWORK_PROVIDER as the first argument to
         * reguestLocationUpdates().
         */
        locationManager
                .requestLocationUpdates(LocationManager.GPS_PROVIDER, 0, 0, locationListener);
    }

    /**
     * Getting the last known location, all we need to do is to call
     * <code>getLastKnownLocation()</code> from the sensor manager. It returns a
     * Location object which has <code>getLongitude()</code> and
     * <code>getLatitude()</code> methods that can be used to obtain the
     * longitude and latitude information from previous sessions.
     */
    private void showLastKnownLocation() {
        Location loc = locationManager.getLastKnownLocation(LocationManager.GPS_PROVIDER);

        if (loc != null) {
            labelLongitude.setText("" + loc.getLongitude());
            labelLatitude.setText("" + loc.getLatitude());
        } else {
            labelLongitude.setText("unknown");
            labelLatitude.setText("unknown");
        }
    }

}