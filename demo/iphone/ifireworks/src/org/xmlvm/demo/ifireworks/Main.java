
package org.xmlvm.demo.ifireworks;

import org.xmlvm.iphone.*;



public class Main
    extends UIApplication implements UIAccelerometerDelegate
{

    UIWindow window;
    UIView   mainView;
    UIAccelerometer accel;

    
    
    public void applicationDidFinishLaunching(UIApplication app)
    {
        this.setStatusBarHidden(true);

        UIScreen screen = UIScreen.mainScreen();
        window = new UIWindow(screen.applicationFrame());

        mainView = new FireworksView(screen.applicationFrame());

        window.addSubview(mainView);
        window.makeKeyAndVisible();
        
        accel = UIAccelerometer.getSharedAccelerometer();
        accel.setUpdateInterval(1.0/40);
        accel.setDelegate(this);
    }



	public void accelerometerDidAccelerate(UIAccelerometer accelerometer,
			UIAcceleration acceleration) {
        // NSLog(@"X:%f Y:%f Z:%f", xAxis, yAxis, zAxis);
        Gravity.xGV = acceleration.x() * 2;
        Gravity.yGV = -acceleration.y() * 2;
    }



    public static void main(String[] args)
    {
        UIApplication.main(args, Main.class);
    }

}
