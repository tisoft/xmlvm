
package org.xmlvm.test.iphone.ihelloworld;

import org.xmlvm.iphone.*;



public class HelloWorld
    extends UIApplication
{

    public void applicationDidFinishLaunching(NSNotification aNotification)
    {
        CGRect rect = UIScreen.fullScreenApplicationContentRect();

        /* Initialize the main window */
        UIWindow window = new UIWindow(rect);
        window.orderFront(this);
        window.makeKey(this);
        window._setHidden(false);

        /* Initialize the main view */
        rect.origin.x = rect.origin.y = 0;
        UIView mainView = new UIView(rect);
        window.setContentView(mainView);

        /* Initialize a text label with static, uneditable text */
        UITextLabel _title = new UITextLabel(rect);
        _title.setText("Hello World!");
        _title.setCentersHorizontally(true);
        mainView.addSubview(_title);
        
  
    }



    /**
     * @param args
     */
    public static void main(String[] args)
    {
        UIApplication.main(args, HelloWorld.class);
    }

}


