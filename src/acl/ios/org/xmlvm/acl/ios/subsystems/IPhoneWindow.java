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

import org.xmlvm.acl.common.objects.CommonView;
import org.xmlvm.acl.common.subsystems.CommonWindow;
import org.xmlvm.acl.ios.objects.IPhoneView;
import org.xmlvm.iphone.UIApplication;
import org.xmlvm.iphone.UIInterfaceOrientation;
import org.xmlvm.iphone.UIViewController;
import org.xmlvm.iphone.UIWindow;

import android.app.Application;
import android.content.pm.ActivityInfo;
import android.graphics.RectF;
import android.internal.TopActivity;

/**
 *
 */
public class IPhoneWindow implements CommonWindow {

    private UIWindow         window;
    private UIViewController viewController;


    /**
     * 
     */
    public IPhoneWindow() {
        this.window = new UIWindow();
    }

    @Override
    public void addSubview(CommonView view) {
        window.addSubview(((IPhoneView) view).getView());
    }

    @Override
    public void setFrame(RectF rect) {
        window.setFrame(IPhoneView.toCGRect(rect));
    }

    @Override
    public void setNeedsDisplay() {
        window.setNeedsDisplay();
    }

    /*
     * (non-Javadoc)
     * 
     * @see org.xmlvm.common.subsystems.CommonDeviceWindow#makeKeyAndVisible()
     */
    @Override
    public void makeKeyAndVisible() {
        window.makeKeyAndVisible();
    }

    /*
     * (non-Javadoc)
     * 
     * @see
     * org.xmlvm.common.subsystems.CommonDeviceWindow#setStatusBarHidden(boolean
     * )
     */
    @Override
    public void setStatusBarHidden(boolean b) {
        UIApplication.sharedApplication().setStatusBarHidden(b);
    }

    /*
     * (non-Javadoc)
     * 
     * @see
     * org.xmlvm.common.objects.CommonDeviceView#setTopLevelViewController()
     */
    @Override
    public void setTopLevelViewController(final CommonView view) {
        viewController = new UIViewController() {

            @Override
            public boolean shouldAutorotateToInterfaceOrientation(int orientation) {
                if (Application.getApplication().xmlvmShouldFreezeInterfaceOrientation()) {
                    /*
                     * Orientation should be frozen because the application uses
                     * the accelerometer. Only allow the current interface
                     * orientation.
                     */
                    return orientation == Application.getApplication()
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
                Application.getApplication().xmlvmSetCurrentInterfaceOrientation(
                        this.getInterfaceOrientation());
            }

            @Override
            public void loadView() {
                setView(((IPhoneView) view).getView());
            }
        };
        window.setRootViewController(viewController);
    }

}
