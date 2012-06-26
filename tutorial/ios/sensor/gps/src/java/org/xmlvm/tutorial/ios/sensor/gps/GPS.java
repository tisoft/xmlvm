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

package org.xmlvm.tutorial.ios.sensor.gps;

import java.util.Map;

import org.xmlvm.iphone.CGRect;
import org.xmlvm.iphone.NSError;
import org.xmlvm.iphone.UIApplication;
import org.xmlvm.iphone.UIApplicationDelegate;
import org.xmlvm.iphone.UIColor;
import org.xmlvm.iphone.UILabel;
import org.xmlvm.iphone.UIScreen;
import org.xmlvm.iphone.UIWindow;
import org.xmlvm.iphone.CLLocation;
import org.xmlvm.iphone.CLLocationManager;
import org.xmlvm.iphone.CLLocationManagerDelegate;
import org.xmlvm.iphone.NSLog;

/**
 * The GPS application allows the user to see their current location in
 * longitude and latitude. Both longitude and latitude will get updated when
 * there is a change of location.
 */
public class GPS extends UIApplicationDelegate {

    private UILabel labelLongitude;
    private UILabel labelLatitude;


    @Override
    public boolean applicationDidFinishLaunchingWithOptions(UIApplication app, Map<String, Object> launchOptions) {
        CGRect rect = UIScreen.mainScreen().getApplicationFrame();
        UIWindow window = new UIWindow(rect);
        window.setBackgroundColor(UIColor.whiteColor);

        UILabel label = new UILabel(new CGRect(20, 20, 80, 30));
        label.setText("Longitude:");
        window.addSubview(label);

        /*
         * labelLongitude will display the current longitude.
         */
        labelLongitude = new UILabel(new CGRect(110, 20, 250, 30));
        labelLongitude.setText("-");
        window.addSubview(labelLongitude);

        label = new UILabel(new CGRect(20, 50, 80, 30));
        label.setText("Latitude:");
        window.addSubview(label);

        /*
         * labelLatitude will display the current latitude.
         */
        labelLatitude = new UILabel(new CGRect(110, 50, 250, 30));
        labelLatitude.setText("-");
        window.addSubview(labelLatitude);

        /*
         * Create a Location Manager from the Core Location Framework.
         */
        CLLocationManager manager = new CLLocationManager();

        /*
         * Set a delegate that will be invoked whenever there is an update to
         * the current location.
         */
        manager.setDelegate(new CLLocationManagerDelegate() {

            @Override
            public void didUpdateToLocation(CLLocationManager manager, CLLocation newLocation,
                    CLLocation oldLocation) {
                /*
                 * Whenever the location updates, this callback will be called
                 * by iOS. Retrieve the current longitude and latitude and
                 * display them in the appropriate labels.
                 */
                labelLongitude.setText("" + newLocation.getCoordinate().longitude);
                labelLatitude.setText("" + newLocation.getCoordinate().latitude);
            }

            @Override
            public void didFailWithError(CLLocationManager manager, NSError error) {
                super.didFailWithError(manager, error);
                NSLog.log(error);
            }

        });

        /*
         * When iOS asks the user whether this application is allowed to use
         * location services, it will also display the so-called "purpose" to
         * the user as an explanation why the application requests this service.
         */
        manager.setPurpose("XMLVM GPS Demo");

        /*
         * Start delivering location updates to the delegate.
         */
        manager.startUpdatingLocation();

        window.makeKeyAndVisible();
        return false;
    }

    public static void main(String[] args) {
        UIApplication.main(args, null, GPS.class);
    }

}
