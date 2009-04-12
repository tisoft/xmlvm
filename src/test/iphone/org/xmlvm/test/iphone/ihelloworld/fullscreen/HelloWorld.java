package org.xmlvm.test.iphone.ihelloworld.fullscreen;

import org.xmlvm.iphone.*;

public class HelloWorld extends UIApplication {

    public void applicationDidFinishLaunching(NSNotification aNotification) {
        this.setStatusBarHidden(true);
        this.setStatusBarOrientation(UIInterfaceOrientation.UIInterfaceOrientationLandscapeRight);
        UIScreen screen = UIScreen.mainScreen();
        CGRect rect = screen.applicationFrame();
        float t = rect.size.height;
        rect.size.height = rect.size.width;
        rect.size.width = t;
        UIWindow window = new UIWindow(rect);
        CGAffineTransform trans = CGAffineTransform.makeRotation((float) ((Math.PI / 180) * -90));
        trans.translate(-80, -80);
        window.setTransform(trans);

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
