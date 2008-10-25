
package org.xmlvm.test.iphone;

import org.xmlvm.iphone.*;



public class Android
    extends UIApplication
{

    private UIWindow    window;
    private UIView      mainView;
    private UIImageView androidView;
    private UIImage     image;



    public void applicationDidFinishLaunching(NSNotification aNotification)
    {
        CGRect rect = UIHardware.fullScreenApplicationContentRect();

        /* Initialize the main window */
        window = new UIWindow(rect);
        window.orderFront(this);
        window.makeKey(this);
        window._setHidden(false);

        /* Initialize the main view */
        rect.origin.x = rect.origin.y = 0;
        mainView = new UIView(rect);
        window.setContentView(mainView);

        androidView = new UIImageView(new CGRect(100, 180, 104, 124));
        image = UIImage.imageAtPath("/Applications/Android.app/android.png");
        androidView.setImage(image);
        mainView.addSubview(androidView);
    }



    public void accelerated(float xAxis, float yAxis, float zAxis)
    {
        xAxis *= 100;
        yAxis *= 100;
        float alpha = (float) Math.asin(xAxis
                / Math.sqrt(xAxis * xAxis + yAxis * yAxis));
        if (yAxis > 0) {
            alpha = 3.1415f - alpha;
        }
        CGAffineTransform rotate = CGAffineTransform.makeRotation(alpha);
        androidView.setTransform(rotate);
    }



    /**
     * @param args
     */
    public static void main(String[] args)
    {
        UIApplication.main(args, Android.class);
    }
}
