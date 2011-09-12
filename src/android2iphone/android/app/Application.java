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
package android.app;

import java.util.ArrayList;
import java.util.List;

import org.xmlvm.iphone.CGRect;
import org.xmlvm.iphone.UIInterfaceOrientation;
import org.xmlvm.iphone.UIScreen;
import org.xmlvm.iphone.UIView;
import org.xmlvm.iphone.UIViewController;
import org.xmlvm.iphone.UIWindow;

import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.res.Configuration;
import android.content.ContextWrapper;
import android.internal.AndroidAppLauncher;
import android.internal.TopActivity;

public class Application extends ContextWrapper {

    /**
     * Top-level UIWindow for the Android application. According to Apple
     * guidelines there should only be one UIWindow instance per iOS
     * application.
     */
    private UIWindow         topLevelWindow;

    /**
     * Top-level UIView that serves as a container for all subviews belonging to
     * various activities.
     */
    private UIView           topLevelView;

    /**
     * View controller that manages the topLevelView.
     */
    private UIViewController viewController;

    private boolean          appJustCreated;
    private boolean          firstActivityView;
    private int              currentInterfaceOrientation;
    private boolean          freezeInterfaceOrientation;


    public void onCreate() {
        // Important: the UIWindow instance should *not* be created in the
        // constructor of class Application because it will then be created
        // before UIAppication exists. That seems to be illegal in iOS.
        appJustCreated = true;
        firstActivityView = true;
        xmlvmFreezeInterfaceOrientation(false);
        xmlvmSetCurrentInterfaceOrientation(UIInterfaceOrientation.Portrait);
        topLevelWindow = new UIWindow();
        CGRect rect = UIScreen.mainScreen().getBounds();
        topLevelWindow.setFrame(rect);
        topLevelView = new UIView(rect);
        viewController = new UIViewController() {

            @Override
            public boolean shouldAutorotateToInterfaceOrientation(int orientation) {
                if (AndroidAppLauncher.getApplication().xmlvmShouldFreezeInterfaceOrientation()) {
                    /*
                     * Orientation should be frozen because the application uses
                     * the accelerometer. Only allow the current interface
                     * orientation.
                     */
                    return orientation == AndroidAppLauncher.getApplication()
                            .xmlvmGetCurrentInterfaceOrientation();
                }
                int requestedOrientation = TopActivity.get().getRequestedOrientation();
                if (requestedOrientation == ActivityInfo.SCREEN_ORIENTATION_LANDSCAPE) {
                    return (orientation == UIInterfaceOrientation.LandscapeLeft)
                            || (orientation == UIInterfaceOrientation.LandscapeRight);
                }
                if (requestedOrientation == ActivityInfo.SCREEN_ORIENTATION_PORTRAIT) {
                    return (orientation == UIInterfaceOrientation.Portrait)
                            || (orientation == UIInterfaceOrientation.PortraitUpsideDown);
                }
                return false;
            }

            @Override
            public void didRotateFromInterfaceOrientation(int orientation) {
                AndroidAppLauncher.getApplication().xmlvmSetCurrentInterfaceOrientation(
                        this.getInterfaceOrientation());
            }

            @Override
            public void loadView() {
                setView(topLevelView);
            }
        };
        //topLevelWindow.setRootViewController(viewController);
        startActivity(new Intent("android.intent.action.MAIN"));
    }

    public void onRestart() {
        if (!appJustCreated) {
            // Only call onRestart() when this application is brought back to
            // the foreground.
            TopActivity.get().xmlvmRestart();
        }
        appJustCreated = false;
        topLevelWindow.setNeedsDisplay();
    }

    public void onStop() {
        TopActivity.get().xmlvmStop();
    }

    public void onTerminate() {
        while (TopActivity.get() != null)
            TopActivity.get().xmlvmDestroy();
    }

    public void onLowMemory() {
    }

    public void onConfigurationChanged(Configuration newConfig) {
        // Configuration doesn't change in iPhone
    }

    public void xmlvmAddActivityView(UIView view) {
        topLevelView.addSubview(view);
        if (firstActivityView) {
            firstActivityView = false;
            topLevelWindow.addSubview(viewController.getView());
            /*
             * Only after the first activity registered its view we tell the
             * main UIWindow to become visible. That is because a call to
             * makeKeyAndVisible() will trigger the view controller to load the
             * view (which doesn't exist before the first activity becomes
             * visible).
             */
            topLevelWindow.makeKeyAndVisible();
        }
    }

    public void xmlvmRemoveActivityView(UIView view) {
        view.removeFromSuperview();
    }

    public void xmlvmFreezeInterfaceOrientation(boolean flag) {
        freezeInterfaceOrientation = flag;
    }

    public boolean xmlvmShouldFreezeInterfaceOrientation() {
        return freezeInterfaceOrientation;
    }

    public void xmlvmSetCurrentInterfaceOrientation(int orientation) {
        currentInterfaceOrientation = orientation;
    }

    public int xmlvmGetCurrentInterfaceOrientation() {
        return currentInterfaceOrientation;
    }
}
