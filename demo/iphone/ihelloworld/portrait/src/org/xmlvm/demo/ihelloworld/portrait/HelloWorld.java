package org.xmlvm.demo.ihelloworld.portrait;

import java.util.Set;

import org.xmlvm.iphone.*;

public class HelloWorld extends UIApplication implements UIResponderDelegate {

    public void applicationDidFinishLaunching(UIApplication app) {
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

        mainView.setDelegate(this);
        
        window.makeKeyAndVisible();
    }

    public static void main(String[] args) {
        UIApplication.main(args, HelloWorld.class);
    }

    @Override
    public void touchesBegan(Set<UITouch> touches, UIEvent event) {
        System.out.println("Touches began");
    }

    @Override
    public void touchesEnded(Set<UITouch> touches, UIEvent event) {
        System.out.println("Touches ended");
    }

}
