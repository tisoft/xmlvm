package org.xmlvm.iphone.demo.gl.nehelesson4;

import org.xmlvm.iphone.UIApplication;
import org.xmlvm.iphone.UIScreen;
import org.xmlvm.iphone.UIView;
import org.xmlvm.iphone.UIWindow;

public class NeHeLesson4 extends UIApplication {
	UIWindow window;
	GLView mainView;
	
	public void applicationDidFinishLaunching(UIApplication application) {  
		this.setStatusBarHidden(true);

	    UIScreen screen = UIScreen.mainScreen();
	    window = new UIWindow(screen.getApplicationFrame());
	
	    mainView = new NeHeLesson4View(screen.getApplicationFrame());
	    
	    window.addSubview(mainView);
	    window.makeKeyAndVisible();
	}
	
	public static void main(String[] argv) {
		System.setProperty("xmlvm.gl", "true");
		UIApplication.main(argv, NeHeLesson4.class);
	}
}
