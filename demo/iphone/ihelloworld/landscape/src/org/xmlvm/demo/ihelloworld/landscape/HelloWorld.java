package org.xmlvm.demo.ihelloworld.landscape;

import org.xmlvm.iphone.*;

public class HelloWorld extends UIApplication {

    public void applicationDidFinishLaunching(UIApplication app) {
        this.setStatusBarOrientation(UIInterfaceOrientation.LandscapeRight);
        UIScreen screen = UIScreen.mainScreen();
        CGRect rect = screen.getApplicationFrame();
        float t = rect.size.height;
        rect.size.height = rect.size.width;
        rect.size.width = t;
        UIWindow window = new UIWindow(rect);
        CGAffineTransform rotate = CGAffineTransform.makeRotation((float) ((Math.PI / 180) * -90));
        CGAffineTransform translate = CGAffineTransform.translate(rotate, -90, -90);
        window.setTransform(translate);

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
