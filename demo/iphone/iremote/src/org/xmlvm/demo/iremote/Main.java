package org.xmlvm.demo.iremote;

import org.xmlvm.iphone.*;

public class Main extends UIApplication implements UIAccelerometerDelegate {

    private SettingsTableDataSource settings    = null;
    private UIAccelerometer         accel       = null;
    private boolean                 httpRunning = false;

    public void applicationDidFinishLaunching(UIApplication app) {
        UIScreen screen = UIScreen.mainScreen();
        CGRect rect = screen.applicationFrame();
        UIWindow window = new UIWindow(rect);

        rect.origin.x = rect.origin.y = 0;
        UITableView table = new UITableView(rect, UITableViewStyle.UITableViewStyleGrouped);
        window.addSubview(table);
        settings = new SettingsTableDataSource();
        table.setDataSource(settings);
        UITableViewDelegate dg = new SettingsTableDelegate();
        table.setDelegate(dg);

        window.makeKeyAndVisible();

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

        NSURLConnection.connectionWithRequest(request, new NSURLConnectionDelegate() {
            public void connectionDidFinishLoading(NSURLConnection connection) {
                httpRunning = false;
            }

            public void connectionDidFailWithError(NSURLConnection connection, NSError error) {
                httpRunning = false;
            }
        });
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
