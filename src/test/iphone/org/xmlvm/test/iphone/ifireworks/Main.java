
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

        UIScreen._setStatusBarHeight(0.0f);
        this.setStatusBarModeAndDuration(2, 0);

        CGRect rect = UIScreen.fullScreenApplicationContentRect();
        window = new UIWindow(rect);

        rect.origin.x = rect.origin.y = 0.0f;

        mainView = new FireworksView(rect);

        window.setContentView(mainView);
        window.orderFront(this);
        window.makeKey(this);
        window._setHidden(false);
        
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
