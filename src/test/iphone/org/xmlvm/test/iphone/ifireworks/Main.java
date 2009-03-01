
package org.xmlvm.test.iphone.ifireworks;

import org.xmlvm.iphone.*;



public class Main
    extends UIApplication implements IAccelerated
{

    UIWindow window;
    UIView   mainView;
    UIAccelerometer accel;

    
    
    public void applicationDidFinishLaunching(NSNotification aNotification)
    {
        this.setStatusBarHidden(true);

        UIScreen screen = UIScreen.mainScreen();
        window = new UIWindow(screen.applicationFrame());

        mainView = new FireworksView(screen.applicationFrame());

        window.addSubview(mainView);
        window.makeKeyAndVisible();
        
        accel = new UIAccelerometer();
        accel.setUpdateInterval(1.0/40);
        accel.setDelegate(this);
    }



    public void OnAccelerate (float xAxis, float yAxis, float zAxis)
    {
        // NSLog(@"X:%f Y:%f Z:%f", xAxis, yAxis, zAxis);
        Gravity.xGV = xAxis * 2;
        Gravity.yGV = -yAxis * 2;
        xAxis *= 100;
        yAxis *= 100;
    }



    public static void main(String[] args)
    {
        UIApplication.main(args, Main.class);
    }

}
