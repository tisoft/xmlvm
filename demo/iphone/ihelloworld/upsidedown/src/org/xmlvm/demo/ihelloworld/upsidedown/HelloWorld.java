package org.xmlvm.demo.ihelloworld.upsidedown;

import org.xmlvm.iphone.*;

public class HelloWorld extends UIApplication {

    public void applicationDidFinishLaunching(UIApplication app) {
        this.setStatusBarOrientation(UIInterfaceOrientation.PortraitUpsideDown);
        UIScreen screen = UIScreen.mainScreen();
        CGRect rect = screen.getApplicationFrame();
        UIWindow window = new UIWindow(rect);
        CGAffineTransform trans = CGAffineTransform.makeRotation((float) ((Math.PI / 180) * 180));
        window.setTransform(trans);

        rect.origin.x = rect.origin.y = 0;
        UIView mainView = new UIView(rect);
        window.addSubview(mainView);

        UILabel title = new UILabel(rect);
        title.setText("Hello World!");
        title.setTextAlignment(UITextAlignment.Center);
        mainView.addSubview(title);

        window.makeKeyAndVisible();
    }

    public static void main(String[] args) {
        UIApplication.main(args, HelloWorld.class);
    }

}
