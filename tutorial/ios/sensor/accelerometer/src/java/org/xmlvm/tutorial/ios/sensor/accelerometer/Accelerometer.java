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

package org.xmlvm.tutorial.ios.sensor.accelerometer;

import org.xmlvm.iphone.CGRect;
import org.xmlvm.iphone.UIAcceleration;
import org.xmlvm.iphone.UIAccelerometer;
import org.xmlvm.iphone.UIAccelerometerDelegate;
import org.xmlvm.iphone.UIApplication;
import org.xmlvm.iphone.UIApplicationDelegate;
import org.xmlvm.iphone.UIColor;
import org.xmlvm.iphone.UILabel;
import org.xmlvm.iphone.UIScreen;
import org.xmlvm.iphone.UIWindow;

/**
 * This application demonstrates the reading of raw accelerometer values. The
 * accelerometer delivers its readings via the
 * <code>UIAccelerometerDelegate</code>. (x, y, z) values are of type double.
 * The sampling frequency is set to 1/10 of a second. The values are displayed
 * in text labels on the main screen.
 */
public class Accelerometer extends UIApplicationDelegate {

    private UILabel labelX;
    private UILabel labelY;
    private UILabel labelZ;


    @Override
    public void applicationDidFinishLaunching(UIApplication app) {
        CGRect rect = UIScreen.mainScreen().getApplicationFrame();
        UIWindow window = new UIWindow(rect);
        window.setBackgroundColor(UIColor.whiteColor);
        UILabel label = new UILabel(new CGRect(20, 20, 30, 30));
        label.setText("x:");
        window.addSubview(label);

        /*
         * labelX will display the current x-value of the accelerometer.
         */
        labelX = new UILabel(new CGRect(50, 20, 250, 30));
        labelX.setText("-");
        window.addSubview(labelX);

        label = new UILabel(new CGRect(20, 50, 30, 30));
        label.setText("y:");
        window.addSubview(label);

        /*
         * labelY will display the current x-value of the accelerometer.
         */
        labelY = new UILabel(new CGRect(50, 50, 250, 30));
        labelY.setText("-");
        window.addSubview(labelY);

        label = new UILabel(new CGRect(20, 80, 30, 30));
        label.setText("z:");
        window.addSubview(label);

        /*
         * labelZ will display the current x-value of the accelerometer.
         */
        labelZ = new UILabel(new CGRect(50, 80, 250, 30));
        labelZ.setText("-");
        window.addSubview(labelZ);

        /*
         * The sampling frequency is set to 1/10th of a second.
         */
        UIAccelerometer.sharedAccelerometer().setUpdateInterval(0.1);
        /*
         * Calling setDelegate() installs a delegate that will be invoked at the
         * specified sampling frequency. An application should only have one
         * UIAccelerometerDelegate.
         */
        UIAccelerometer.sharedAccelerometer().setDelegate(new UIAccelerometerDelegate() {

            /*
             * Method accelerometerDidAccelerate() will be called at the
             * specified sampling frequency. The UIAcceleration object
             * encapsulates the current (x, y, z) value.
             */
            @Override
            public void accelerometerDidAccelerate(UIAccelerometer accelerometer,
                    UIAcceleration acceleration) {
                /*
                 * Retrieve the current accelerometer value, convert the double
                 * to a string and set the respective UILabel.
                 */
                labelX.setText("" + acceleration.x());
                labelY.setText("" + acceleration.y());
                labelZ.setText("" + acceleration.z());
            }

        });
        window.makeKeyAndVisible();
    }

    public static void main(String[] args) {
        UIApplication.main(args, null, Accelerometer.class);
    }

}