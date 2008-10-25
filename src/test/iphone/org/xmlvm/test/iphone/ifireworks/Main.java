
package org.xmlvm.test.iphone.ifireworks;

import org.xmlvm.iphone.*;



public class Main
    extends UIApplication
{

    UIWindow window;
    UIView   mainView;



    public void applicationDidFinishLaunching(NSNotification aNotification)
    {

        UIHardware._setStatusBarHeight(0.0f);
        this.setStatusBarModeAndDuration(2, 0);

        CGRect rect = UIHardware.fullScreenApplicationContentRect();
        window = new UIWindow(rect);

        rect.origin.x = rect.origin.y = 0.0f;

        mainView = new FireworksView(rect);

        window.setContentView(mainView);
        window.orderFront(this);
        window.makeKey(this);
        window._setHidden(false);
    }



    public void accelerated(float xAxis, float yAxis, float zAxis)
    {
        // NSLog(@"X:%f Y:%f Z:%f", xAxis, yAxis, zAxis);
        Gravity.xGV = -xAxis * 2;
        Gravity.yGV = -yAxis * 2;
        xAxis *= 100;
        yAxis *= 100;
    }



    public static void main(String[] args)
    {
        UIApplication.main(args, Main.class);
    }

}
