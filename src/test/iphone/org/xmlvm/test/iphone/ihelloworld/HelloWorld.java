
package org.xmlvm.test.iphone.ihelloworld;

import org.xmlvm.iphone.*;



public class HelloWorld
    extends UIApplication
{

    public void applicationDidFinishLaunching(NSNotification aNotification)
    {
        UIScreen screen = UIScreen.mainScreen();
        CGRect rect = screen.applicationFrame();
        UIWindow window = new UIWindow(rect);

        rect.origin.x = rect.origin.y = 0;
        UIView mainView = new UIView(rect);
        window.addSubview(mainView);

        /* Initialize a text label with static, uneditable text */
        UITextLabel _title = new UITextLabel(rect);
        _title.setText("Hello World!");
        _title.setCentersHorizontally(true);
        mainView.addSubview(_title);

        window.makeKeyAndVisible();
    }



    /**
     * @param args
     */
    public static void main(String[] args)
    {
        UIApplication.main(args, HelloWorld.class);
    }

}


