package org.xmlvm.iphone;

import org.xmlvm.iphone.internal.Simulator;

public class UIScreen {
    CGRect bounds;
    CGRect applicationFrame;

    public UIScreen() {
        bounds = new CGRect(0.0f, 0.0f, 320.0f, 480.0f);
        float offset = Simulator.getStatusBarHeight();
        int orientation = Simulator.getStatusBarOrientation();
        switch (orientation) {
        case UIInterfaceOrientation.UIInterfaceOrientationPortrait:
            applicationFrame = new CGRect(0, offset, 320, 480 - offset);
            break;
        case UIInterfaceOrientation.UIInterfaceOrientationLandscapeLeft:
            applicationFrame = new CGRect(offset, 0, 320 - offset, 480);
            break;
        case UIInterfaceOrientation.UIInterfaceOrientationLandscapeRight:
            applicationFrame = new CGRect(0, 0, 320 - offset, 480);
            break;
        case UIInterfaceOrientation.UIInterfaceOrientationPortraitUpsideDown:
            applicationFrame = new CGRect(0, 0, 320, 480 - offset);
            break;
        }
    }

    public static UIScreen mainScreen() {
        return new UIScreen();
    }

    public CGRect bounds() {
        return new CGRect(this.bounds);
    }

    public CGRect applicationFrame() {
        return new CGRect(this.applicationFrame);
    }
}
