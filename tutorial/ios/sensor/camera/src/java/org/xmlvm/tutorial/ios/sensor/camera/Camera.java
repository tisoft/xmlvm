package org.xmlvm.tutorial.ios.sensor.camera;

import org.xmlvm.iphone.UIApplication;
import org.xmlvm.iphone.UIApplicationDelegate;
import org.xmlvm.iphone.UIScreen;
import org.xmlvm.iphone.UIWindow;

/**
 * This application demonstrates the use of camera sensor on iOS. An instance of
 * <code> UIImagePickerController</code> is created in order to access the
 * camera resource. A delegate <code> UIImagePickerControllerDelegate</code> is
 * set for the <code> UIImagePickerController</code> instance which handles the
 * results of user interaction. The callback methods are overridden to perform
 * appropriate tasks like saving the image to album when image is captured.
 * <code> presentModalViewController() </code> is used to display the camera
 * interface. In simulator, the camera resource is not accessible and the photo
 * library can be used as the source.
 * 
 */
public class Camera extends UIApplicationDelegate {

    @Override
    public void applicationDidFinishLaunching(UIApplication app) {
        UIWindow window = new UIWindow(UIScreen.mainScreen().getBounds());
        CameraHelper vc = new CameraHelper();
        window.setRootViewController(vc);
        window.makeKeyAndVisible();
    }

    public static void main(String[] args) {
        UIApplication.main(args, null, Camera.class);
    }

}
