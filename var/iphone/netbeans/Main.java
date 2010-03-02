/*
 * XMLVM demo template of Hello World application
 */
package xmlvm;

import org.xmlvm.iphone.UIApplication;
import org.xmlvm.iphone.UILabel;
import org.xmlvm.iphone.UIScreen;
import org.xmlvm.iphone.UITextAlignment;
import org.xmlvm.iphone.UIView;
import org.xmlvm.iphone.UIWindow;

public class Main extends UIApplication {

    public void applicationDidFinishLaunching(UIApplication app) {
        UIWindow window = new UIWindow(UIScreen.mainScreen().getBounds());

        UIView mainView = new UIView(window.getFrame());
        window.addSubview(mainView);

        UILabel title = new UILabel(window.getFrame());
        title.setText("Hello World!");
        title.setTextAlignment(UITextAlignment.Center);
        
        mainView.addSubview(title);

        window.makeKeyAndVisible();
    }

    public static void main(String[] args) {
        UIApplication.main(args, Main.class);
    }
}
