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

package org.xmlvm.tutorial.ios.sensor.gyroscope;

import java.util.Map;

import org.xmlvm.iphone.CGRect;
import org.xmlvm.iphone.CMGyroData;
import org.xmlvm.iphone.CMMotionManager;
import org.xmlvm.iphone.CMRotationRate;
import org.xmlvm.iphone.NSError;
import org.xmlvm.iphone.UIApplication;
import org.xmlvm.iphone.UIApplicationDelegate;
import org.xmlvm.iphone.UIColor;
import org.xmlvm.iphone.UILabel;
import org.xmlvm.iphone.UIScreen;
import org.xmlvm.iphone.UIWindow;
import org.xmlvm.iphone.NSOperationQueue;
import org.xmlvm.iphone.CMGyroHandler;

/**
 * This application demonstrates the use of gyroscope in iOS using the 'pull'
 * method. The gyroscope is available on iPhone4. To access the gyroscope data,
 * we use the Core Motion Framework. The rate of rotation along the 3 axes are
 * updated in the form of <code>CMGyroData</code> object. The GyroData has the
 * <code>rotationRate</code> which has the values of rotation rate along the 3
 * axes. The Gyro updates can be obtained using 'pull' or 'push' method. In this
 * example, we use the 'push' method where the updates are queued in the
 * operation queue everytime there is an update in the gyroscope data.
 */
public class Gyroscope extends UIApplicationDelegate {

    private UILabel labelX;
    private UILabel labelY;
    private UILabel labelZ;
    CMMotionManager motionManager;


    @Override
    public boolean applicationDidFinishLaunchingWithOptions(UIApplication app, Map<String, Object> launchOptions) {

        CGRect rect = UIScreen.mainScreen().getApplicationFrame();
        UIWindow window = new UIWindow(rect);
        window.setBackgroundColor(UIColor.whiteColor);

        /*
         * Label to display rate of rotation along x axis
         */
        UILabel label = new UILabel(new CGRect(20, 20, 30, 30));
        label.setText("x:");
        window.addSubview(label);

        labelX = new UILabel(new CGRect(50, 20, 250, 30));
        labelX.setText("-");
        window.addSubview(labelX);

        /*
         * Label to display rate of rotation along y axis
         */
        label = new UILabel(new CGRect(20, 50, 30, 30));
        label.setText("y:");
        window.addSubview(label);

        labelY = new UILabel(new CGRect(50, 50, 250, 30));
        labelY.setText("-");
        window.addSubview(labelY);

        /*
         * Label to display rate of rotation along z axis
         */
        label = new UILabel(new CGRect(20, 80, 30, 30));
        label.setText("z:");
        window.addSubview(label);

        labelZ = new UILabel(new CGRect(50, 80, 250, 30));
        labelZ.setText("-");
        window.addSubview(labelZ);

        /*
         * Create an instance of CMMotionManager. This instance can be used to
         * get raw accelerometer data, raw gyroscope data, and processed
         * device-motion data. Specify the update interval to receive the gyro
         * updates using setGyroUpdateInterval()
         */
        motionManager = new CMMotionManager();
        motionManager.setGyroUpdateInterval(1.0 / 2.0);

        /*
         * Check if the gyroscope is available
         */
        if (motionManager.isGyroAvailable()) {

            /*
             * Start the gyroscope updates to be queued. Using the main
             * operation queue is not recommended here since the updates can
             * arrive at high frequency. The overridden method run() is invoked
             * for every update to handle the gyroscope data. This uses the
             * 'push' method, where the updates in the Gyro data are queued in
             * the operation queue.
             */
            motionManager.startGyroUpdatesToQueue(NSOperationQueue.getCurrentQueue(),
                    new CMGyroHandler() {
                        @Override
                        public void run(CMGyroData gyroData, NSError error) {
                            /*
                             * If an Error occurs, it is good practice to
                             * stopGyroUpdates and notify the user. If no error
                             * has occurred then 'error' is null.
                             */
                            CMRotationRate rotationData = gyroData.rotationRate();
                            labelX.setText("" + rotationData.x);
                            labelY.setText("" + rotationData.y);
                            labelZ.setText("" + rotationData.z);
                        }
                    });

        }
        window.makeKeyAndVisible();
        return false;
    }

    @Override
    public void applicationWillTerminate(UIApplication app) {
        /*
         * Call stopGyroUpdates() when you no longer require the updates
         */
        motionManager.stopGyroUpdates();
        motionManager.release();
    }

    public static void main(String[] args) {
        UIApplication.main(args, null, Gyroscope.class);
    }

}