
package org.xmlvm.test.iphone.todo;

import org.xmlvm.iphone.*;



public class Main
    extends UIApplication
{

    public void applicationDidFinishLaunching(UIApplication app)
    {
        UIScreen screen = UIScreen.mainScreen();
        CGRect rect = screen.applicationFrame();
        UIWindow window = new UIWindow(rect);

        rect.origin.x = rect.origin.y = 0;
        UIView mainView = new List(screen.applicationFrame());

        window.addSubview(mainView);
        window.makeKeyAndVisible();
    }



    /**
     * @param args
     */
    public static void main(String[] args)
    {
        UIApplication.main(args, Main.class);
    }

}
