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

package org.xmlvm.demo.iremote;

import org.xmlvm.iphone.*;

public class Main extends UIApplication implements UIAccelerometerDelegate {

    private SettingsTableDataSource settings     = null;
    private UIAccelerometer         accel        = null;
    private boolean                 httpRunning  = false;
    private NSURLConnectionDelegate httpDelegate = null;

    @Override
    public void applicationDidFinishLaunching(UIApplication app) {
        UIScreen screen = UIScreen.mainScreen();
        CGRect rect = screen.getApplicationFrame();
        UIWindow window = new UIWindow(rect);

        rect.origin.x = rect.origin.y = 0;
        UITableView table = new UITableView(rect, UITableViewStyle.Grouped);
        window.addSubview(table);
        settings = new SettingsTableDataSource();
        table.setDataSource(settings);
        UITableViewDelegate dg = new SettingsTableDelegate();
        table.setDelegate(dg);

        window.makeKeyAndVisible();

        httpDelegate = new NSURLConnectionDelegate() {
            @Override
            public void connectionDidFinishLoading(NSURLConnection connection) {
                httpRunning = false;
            }

            @Override
            public void connectionDidFailWithError(NSURLConnection connection, NSError error) {
                httpRunning = false;
            }
        };

        accel = UIAccelerometer.sharedAccelerometer();
        accel.setUpdateInterval(1.0 / 40);
        accel.setDelegate(this);
    }

    public void accelerometerDidAccelerate(UIAccelerometer accelerometer,
            UIAcceleration acceleration) {
        if (settings == null)
            return;
        if (!settings.accelerometer.isOn())
            return;
        if (httpRunning)
            return;
        String ip = settings.ipAddress.getText();
        if (ip.equals(""))
            return;
        httpRunning = true;
        String server = new String("http://" + ip + ":8080/ACC/");
        server += String.valueOf(acceleration.x());
        server += "/";
        server += String.valueOf(acceleration.y());
        server += "/";
        server += String.valueOf(acceleration.z());
        NSURL url = NSURL.URLWithString(server);
        NSMutableURLRequest request = new NSMutableURLRequest(url);

        NSURLConnection.connectionWithRequest(request, httpDelegate);
        /*
         * NSErrorHolder error = new NSErrorHolder(); NSHTTPURLResponseHolder
         * response = new NSHTTPURLResponseHolder(); NSData data =
         * NSURLConnection.sendSynchronousRequest(request, response, error);
         */
    }

    /**
     * @param args
     */
    public static void main(String[] args) {
        UIApplication.main(args, Main.class);
    }
}
