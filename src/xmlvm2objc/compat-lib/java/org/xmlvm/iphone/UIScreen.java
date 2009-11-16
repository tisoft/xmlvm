package org.xmlvm.iphone;

import java.awt.Rectangle;

import org.xmlvm.iphone.internal.Device;
import org.xmlvm.iphone.internal.Simulator;

public class UIScreen {

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
