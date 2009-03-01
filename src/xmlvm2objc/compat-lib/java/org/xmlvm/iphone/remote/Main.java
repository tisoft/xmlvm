
package org.xmlvm.iphone.remote;

import org.xmlvm.iphone.*;



public class Main
    extends UIApplication
{

    private Settings settings;



    public void applicationDidFinishLaunching(NSNotification aNotification)
    {
        settings = null;
        UIScreen screen = UIScreen.mainScreen();
        CGRect rect = screen.applicationFrame();
        UIWindow window = new UIWindow(rect);

        rect.origin.x = rect.origin.y = 0;
        MainView mainView = new MainView(rect);
        settings = mainView.getSettings();

        window.addSubview(mainView);
        window.makeKeyAndVisible();
    }



    public void accelerated(float xAxis, float yAxis, float zAxis)
    {
        if (settings == null)
            return;
        if (settings.getAccelerometerSetting() == 0)
            return;
        String ip = settings.getIPAddress();
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

        // if (data != null) {
        // String str = data.toString();
        // System.out.println(str);
        // }
    }



    /**
     * @param args
     */
    public static void main(String[] args)
    {
        UIApplication.main(args, Main.class);
    }
}
