/*
 * XMLVM demo template of Hello World application
 */
package iphone;

import org.xmlvm.iphone.CGRect;
import org.xmlvm.iphone.UIApplication;
import org.xmlvm.iphone.UIApplicationDelegate;
import org.xmlvm.iphone.UIColor;
import org.xmlvm.iphone.UIImage;
import org.xmlvm.iphone.UIImageView;
import org.xmlvm.iphone.UILabel;
import org.xmlvm.iphone.UIScreen;
import org.xmlvm.iphone.UITextAlignment;
import org.xmlvm.iphone.UIView;
import org.xmlvm.iphone.UIWindow;

public class Main extends UIApplicationDelegate {

    @Override
    public void applicationDidFinishLaunching(UIApplication app) {
        UIWindow window = new UIWindow(UIScreen.mainScreen().getBounds());

        UIView mainView = new UIView(window.getFrame());
        mainView.setBackgroundColor(UIColor.whiteColor);
        window.addSubview(mainView);

        UILabel title = new UILabel(new CGRect(0, 150, 320, 40));
        title.setText("Hello");
        title.setTextAlignment(UITextAlignment.Center);

        UIImageView img = new UIImageView(new CGRect(60, 200, 200, 140));
        img.setImage(UIImage.imageWithContentsOfFile("demo.png"));

        mainView.addSubview(title);
        mainView.addSubview(img);

        window.makeKeyAndVisible();
    }

    public static void main(String[] args) {
        UIApplication.main(args, null, Main.class);
    }
}
