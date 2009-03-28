
package org.xmlvm.iphone.iremote;

import org.xmlvm.iphone.*;



public class Main
    extends UIApplication
    implements IAccelerated
{

	private SettingsTableDataSource settings = null;
	private UIAccelerometer accel = null;

	
	
    public void applicationDidFinishLaunching(NSNotification aNotification)
    {
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

        accel = new UIAccelerometer();
        accel.setUpdateInterval(1.0/40);
        accel.setDelegate(this);
    }



    public void OnAccelerate(float xAxis, float yAxis, float zAxis)
    {
        if (settings == null)
            return;
        if (!settings.accelerometer.isOn())
            return;
        String ip = settings.ipAddress.getText();
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
