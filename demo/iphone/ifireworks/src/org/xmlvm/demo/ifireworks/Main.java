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

package org.xmlvm.demo.ifireworks;

import org.xmlvm.iphone.*;

public class Main extends UIApplication implements UIAccelerometerDelegate {

    UIWindow        window;
    UIView          mainView;
    UIAccelerometer accel;

    @Override
    public void applicationDidFinishLaunching(UIApplication app) {
        this.setStatusBarHidden(true);

        UIScreen screen = UIScreen.mainScreen();
        window = new UIWindow(screen.getApplicationFrame());

        mainView = new FireworksView(screen.getApplicationFrame());

        window.addSubview(mainView);
        window.makeKeyAndVisible();

        accel = UIAccelerometer.sharedAccelerometer();
        accel.setUpdateInterval(1.0 / 40);
        accel.setDelegate(this);
    }

    public void accelerometerDidAccelerate(UIAccelerometer accelerometer,
            UIAcceleration acceleration) {
        // NSLog(@"X:%f Y:%f Z:%f", xAxis, yAxis, zAxis);
        Gravity.xGV = acceleration.x() * 2;
        Gravity.yGV = -acceleration.y() * 2;
    }

    public static void main(String[] args) {
        UIApplication.main(args, Main.class);
    }

}
