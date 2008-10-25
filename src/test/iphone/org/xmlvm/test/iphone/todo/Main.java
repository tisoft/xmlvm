
package org.xmlvm.test.iphone.todo;

import org.xmlvm.iphone.*;



public class Main
    extends UIApplication
{

    public void applicationDidFinishLaunching(NSNotification aNotification)
    {
        CGRect rect = UIHardware.fullScreenApplicationContentRect();

        /* Initialize the main window */
        UIWindow window = new UIWindow(rect);
        window.orderFront(this);
        window.makeKey(this);
        window._setHidden(false);

        /* Initialize the main view */
        rect.origin.x = rect.origin.y = 0;
        UITable mainView = new List(rect);
        window.setContentView(mainView);
    }



    /**
     * @param args
     */
    public static void main(String[] args)
    {
        UIApplication.main(args, Main.class);
    }

}
