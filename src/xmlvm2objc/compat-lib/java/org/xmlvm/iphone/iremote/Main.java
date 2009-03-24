
package org.xmlvm.iphone.iremote;

import org.xmlvm.iphone.*;



public class Main
    extends UIApplication
    implements IAccelerated
{

    private UIAccelerometer accel;
    private UITextField ipAddress = null;
    private UISwitch useAccelerometer = null;

    public void applicationDidFinishLaunching(NSNotification aNotification)
    {
        UIScreen screen = UIScreen.mainScreen();
        CGRect rect = screen.applicationFrame();
        UIWindow window = new UIWindow(rect);

        rect.origin.x = rect.origin.y = 0;
        UITableView table = new UITableView(rect, UITableViewStyle.UITableViewStyleGrouped);
        window.addSubview(table);
        UITableViewDataSource ds = new SettingsTableDataSource();
        table.setDataSource(ds);
        
        /*
        CGRect ipAddressRect = new CGRect(0,50,100,20);
        ipAddress = new UITextField(ipAddressRect);
        ipAddress.setText("127.0.0.1");
        ipAddress.setTextColor(UIColor.whiteColor());
        window.addSubview(ipAddress);

        CGRect useAccelerometerRect = new CGRect(0, 150, 100, 20);
        useAccelerometer = new UISwitch(useAccelerometerRect);
        window.addSubview(useAccelerometer);
        */
        
        window.makeKeyAndVisible();
/*
        accel = new UIAccelerometer();
        accel.setUpdateInterval(1.0/40);
        accel.setDelegate(this);
        */
    }



    public void OnAccelerate(float xAxis, float yAxis, float zAxis)
    {
        if (ipAddress == null || useAccelerometer == null)
            return;
        if (useAccelerometer.isOn())
            return;
        String ip = ipAddress.getText();
        if (ip.equals(""))
        	return;
        String server = new String("http://" + ip + ":8080/ACC/");
        server += String.valueOf(xAxis);
        server += "/";
        server += String.valueOf(yAxis);
        server += "/";
        server += String.valueOf(zAxis);
        NSURL url = NSURL.URLWithString(server);
        NSMutableURLRequest request = new NSMutableURLRequest(url);

        NSErrorHolder error = new NSErrorHolder();
        NSHTTPURLResponseHolder response = new NSHTTPURLResponseHolder();
        NSData data = NSURLConnection.sendSynchronousRequest(request, response,
                error);
    }



    /**
     * @param args
     */
    public static void main(String[] args)
    {
        UIApplication.main(args, Main.class);
    }
}
