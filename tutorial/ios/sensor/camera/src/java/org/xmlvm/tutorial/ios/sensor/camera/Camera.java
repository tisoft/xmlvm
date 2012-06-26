/* Copyright (c) 2002-2011 by XMLVM.org
 *
 * Project Info:  http://www.xmlvm.org
 *
 * This program is free software; you can redistribute it and/or modify it
 * under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 *
 * This library is distributed in the hope that it will be useful, but
 * WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY
 * or FITNESS FOR A PARTICULAR PURPOSE. See the GNU Lesser General Public
 * License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public
 * License along with this library; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301,
 * USA.
 */

package org.xmlvm.tutorial.ios.sensor.camera;

import java.util.Map;

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
    public boolean applicationDidFinishLaunchingWithOptions(UIApplication app, Map<String, Object> launchOptions) {
        UIWindow window = new UIWindow(UIScreen.mainScreen().getBounds());
        CameraHelper vc = new CameraHelper();
        window.setRootViewController(vc);
        window.makeKeyAndVisible();
        return false;
    }

    public static void main(String[] args) {
        UIApplication.main(args, null, Camera.class);
    }

}
