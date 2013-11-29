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

package org.xmlvm.acl.ios.subsystems;

import org.xmlvm.acl.common.subsystems.CommonProperties;
import org.xmlvm.iphone.CGRect;
import org.xmlvm.iphone.CGSize;
import org.xmlvm.iphone.UIApplication;
import org.xmlvm.iphone.UIDevice;
import org.xmlvm.iphone.UIDeviceOrientation;
import org.xmlvm.iphone.UIInterfaceOrientation;
import org.xmlvm.iphone.UIScreen;

import android.graphics.RectF;
import android.internal.CommonDeviceAPIFinder;

/**
 *
 */
public class IPhoneProperties implements CommonProperties {

    @Override
    public RectF getScreenBounds() {
        CGSize size = UIScreen.mainScreen().getBounds().size;
        return new RectF(0, 0, (int) size.width, (int) size.height);
    }

    @Override
    public RectF getApplicationFrame() {
        CGRect rect = UIScreen.mainScreen().getApplicationFrame();
        return new RectF((int) rect.origin.x, (int) rect.origin.y,
                (int) (rect.origin.x + rect.size.width), (int) (rect.origin.y + rect.size.height));
    }

    @Override
    public int detectDevice() {
        RectF rect = CommonDeviceAPIFinder.instance().getProperties().getScreenBounds();

        // Determine configuration based on the sum of width and height, which
        // is unique for all iPhone and iPad devices
        int totalPixels = (int) rect.width() + (int) rect.height();

        switch (totalPixels) {
            // iPhone 4
        case 1600:
            return CommonProperties.DEVICE_IPHONE4;

            // iPad
        case 1792:
            return CommonProperties.DEVICE_IPAD;
            
            // Failsafe
        default:
            return CommonProperties.DEVICE_IPHONE;

        }
    }

    /*
     * (non-Javadoc)
     * 
     * @see org.xmlvm.commondevice.CommonDeviceAPI#getOrientation()
     */
    @Override
    public int getOrientation() {
        int nativeOrientation = UIDevice.currentDevice().getOrientation();
        int orientation = ORIENTATION_UNKNOWN;

        switch (nativeOrientation) {
        case UIDeviceOrientation.Portrait:
            orientation = ORIENTATION_PORTRAIT;
            break;
        case UIDeviceOrientation.PortraitUpsideDown:
            orientation = ORIENTATION_PORTRAIT_UPSIDE_DOWN;
            break;
        case UIDeviceOrientation.FaceUp:
            orientation = ORIENTATION_FACE_UP;
            break;
        case UIDeviceOrientation.FaceDown:
            orientation = ORIENTATION_FACE_DOWN;
            break;
        case UIDeviceOrientation.LandscapeLeft:
            orientation = ORIENTATION_LANDSCAPE_LEFT;
            break;
        case UIDeviceOrientation.LandscapeRight:
            orientation = ORIENTATION_LANDSCAPE_RIGHT;
            break;
        }

        return orientation;
    }

    @Override
    public void setOrientation(int orientation) {
        switch (orientation) {
        case CommonProperties.ORIENTATION_LANDSCAPE_LEFT:
            UIApplication.sharedApplication().setStatusBarOrientation(
                    UIInterfaceOrientation.LandscapeLeft);
            break;
        case CommonProperties.ORIENTATION_PORTRAIT:
            UIApplication.sharedApplication().setStatusBarOrientation(
                    UIInterfaceOrientation.Portrait);
            break;
        }
    }

    @Override
    public void setStatusBarHidden(boolean b) {
        UIApplication.sharedApplication().setStatusBarHidden(b);
    }

    @Override
    public float getSwitchButtonWidth() {
        return 94;
    }

    @Override
    public float getSwitchButtonHeight() {
        return 27;
    }

}
