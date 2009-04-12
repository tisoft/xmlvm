package org.xmlvm.test.iphone.ihelloworld.portrait;

import org.xmlvm.iphone.*;

public class HelloWorld extends UIApplication {

    public void applicationDidFinishLaunching(NSNotification aNotification) {
        UIScreen screen = UIScreen.mainScreen();
        CGRect rect = screen.applicationFrame();
        UIWindow window = new UIWindow(rect);

        rect.origin.x = rect.origin.y = 0;
        UIView mainView = new UIView(rect);
        window.addSubview(mainView);

        UILabel title = new UILabel(rect);
        title.setText("Hello World!");
        title.setTextAlignment(UITextAlignment.UITextAlignmentCenter);
        mainView.addSubview(title);

        window.makeKeyAndVisible();
    }

    public static void main(String[] args) {
        UIApplication.main(args, HelloWorld.class);
    }

}
