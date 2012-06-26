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

package org.xmlvm.tutorial.ios.map;

import org.xmlvm.iphone.CGRect;
import org.xmlvm.iphone.CLLocationCoordinate2D;
import org.xmlvm.iphone.MKMapView;
import org.xmlvm.iphone.MKCoordinateRegion;
import org.xmlvm.iphone.MKCoordinateSpan;
import org.xmlvm.iphone.UIApplication;
import org.xmlvm.iphone.UIApplicationDelegate;
import org.xmlvm.iphone.UIScreen;
import org.xmlvm.iphone.UIWindow;

/**
 * This application displays a map of San Francisco (the coolest place to live!)
 * spanning the whole screen. It makes use of the MKMapView class.
 */
public class Map extends UIApplicationDelegate {

    @Override
    public boolean applicationDidFinishLaunchingWithOptions(UIApplication app, java.util.Map<String, Object> launchOptions) {
        CGRect rect = UIScreen.mainScreen().getApplicationFrame();
        UIWindow window = new UIWindow(rect);

        /*
         * Create the MKMapView instance whose geometry will span the complete
         * visible screen. Since a regular CGRect is passed to its constructor,
         * the map could span any size and location on the screen depending on
         * the application's needs.
         */
        rect.origin.x = rect.origin.y = 0;
        MKMapView mapView = new MKMapView(rect);

        /*
         * Define a region to display. It consists of: 1. Center point:
         * CLLocatoonCoordinate2D (latitude + longitude) 2. Span: the zoom, how
         * far out you want to display from center point.
         */
        MKCoordinateRegion region;
        MKCoordinateSpan span = new MKCoordinateSpan(0.2, 0.2);
        CLLocationCoordinate2D location = new CLLocationCoordinate2D(37.779300, -122.419200);
        region = new MKCoordinateRegion(location, span);
        mapView.setRegion(region);

        window.addSubview(mapView);

        window.makeKeyAndVisible();
        return false;
    }

    public static void main(String[] args) {
        UIApplication.main(args, null, Map.class);
    }

}
