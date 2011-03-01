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

package org.xmlvm.iphone;

import java.awt.Rectangle;

import org.xmlvm.XMLVMSkeletonOnly;
import org.xmlvm.iphone.internal.Device;
import org.xmlvm.iphone.internal.Simulator;

@XMLVMSkeletonOnly
public class UIScreen extends NSObject {

    private final static UIScreen mainScreen;
    private final static CGRect   bounds;

    static {
        Rectangle b = Device.ScreenSize;
        bounds = new CGRect(b.x, b.y, b.width, b.height);
        mainScreen = new UIScreen();
    }


    // Prevent someone from instantiating this class
    private UIScreen() {
    }

    public static UIScreen mainScreen() {
        return mainScreen;
    }

    public CGRect getBounds() {
        return new CGRect(bounds);
    }

    public CGRect getApplicationFrame() {
        CGRect applicationFrame = null;
        float offset = Simulator.getStatusBarHeight();
        int orientation = Simulator.getStatusBarOrientation();

        switch (orientation) {
        case UIInterfaceOrientation.Portrait:
            applicationFrame = new CGRect(bounds.origin.x, bounds.origin.y + offset,
                    bounds.size.width, bounds.size.height - offset);
            break;
        case UIInterfaceOrientation.LandscapeLeft:
            applicationFrame = new CGRect(bounds.origin.x, bounds.origin.y, bounds.size.width
                    - offset, bounds.size.height);
            break;
        case UIInterfaceOrientation.LandscapeRight:
            applicationFrame = new CGRect(bounds.origin.x + offset, bounds.origin.y,
                    bounds.size.width - offset, bounds.size.height);
            break;
        case UIInterfaceOrientation.PortraitUpsideDown:
            applicationFrame = new CGRect(bounds.origin.x, bounds.origin.y, bounds.size.width,
                    bounds.size.height - offset);
            break;
        }
        return applicationFrame;
    }
}
