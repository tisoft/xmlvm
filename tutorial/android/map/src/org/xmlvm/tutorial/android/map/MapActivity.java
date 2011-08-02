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

package org.xmlvm.tutorial.android.map;

import com.google.android.maps.GeoPoint;
import com.google.android.maps.MapController;
import com.google.android.maps.MapView;

import android.os.Bundle;

/**
 * This application uses the Google API to display a map of San Francisco. This
 * API is not part of the core Android API but is Google-specific. The Google
 * API offers its own MapActivity from which the application can be derived.
 * Note that certain permissions need to be set in AndroidManifest.xml to make
 * this application work. Furthermore, it is required that every application
 * using the Google Maps API has to register with Google to obtain a Map API
 * Key. The key needs to be included in the android:apiKey attribute of the
 * layout resource referencing the map. See the following link for details:
 * http://code.google.com/android/add-ons/google-apis/mapkey.html
 */
public class MapActivity extends com.google.android.maps.MapActivity {

    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);

        setContentView(R.layout.main);

        MapView mapView = (MapView) findViewById(R.id.mapview);
        mapView.setBuiltInZoomControls(true);

        /**
         * To show a map of San Francisco, we need to create a geo point object
         * with longitude and latitude in center of SF.
         */
        GeoPoint point = new GeoPoint(37779300, -122419200);

        /**
         * MapController is needed to set view location and zooming.
         */
        MapController mc = mapView.getController();
        mc.setCenter(point);
        mc.setZoom(14);
    }

    @Override
    protected boolean isRouteDisplayed() {
        return false;
    }

}