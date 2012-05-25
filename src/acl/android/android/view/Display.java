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

package android.view;

import org.xmlvm.acl.common.subsystems.CommonProperties;

import android.app.Activity;
import android.app.Application;
import android.content.pm.ActivityInfo;
import android.graphics.RectF;
import android.internal.Assert;
import android.internal.CommonDeviceAPIFinder;
import android.internal.ConfigurationFactory;
import android.internal.TopActivity;
import android.util.DisplayMetrics;

public class Display {

    /**
     * Return the current width of the screen TODO: Implement for real. This is
     * only a dummy.
     */
    public int getWidth() {
        Activity activity = TopActivity.get();
        RectF s = CommonDeviceAPIFinder.instance().getProperties().getScreenBounds();
        return (int) (activity.getRequestedOrientation() == ActivityInfo.SCREEN_ORIENTATION_LANDSCAPE ? s.bottom
                : s.right);
    }

    /**
     * Return the current height of the screen TODO: Implement for real. This is
     * only a dummy.
     */
    public int getHeight() {
        Activity activity = TopActivity.get();
        RectF s = CommonDeviceAPIFinder.instance().getProperties().getScreenBounds();
        return (int) (activity.getRequestedOrientation() == ActivityInfo.SCREEN_ORIENTATION_LANDSCAPE ? s.right
                : s.bottom);
    }

    public void getMetrics(DisplayMetrics metrics) {
        RectF size = CommonDeviceAPIFinder.instance().getProperties().getScreenBounds();
        metrics.heightPixels = (int) size.height();
        metrics.widthPixels = (int) size.width();

        int device = ConfigurationFactory.detectDevice();
        switch (device) {
        case CommonProperties.DEVICE_IPHONE4:
            metrics.density = 326.0f / 160.0f;
            metrics.densityDpi = DisplayMetrics.DENSITY_HIGH;
            metrics.heightPixels = (int) (960.0f / metrics.density);
            metrics.widthPixels = (int) (640.f / metrics.density);
            metrics.xdpi = metrics.ydpi = 326;
            break;

        case CommonProperties.DEVICE_IPAD:
            metrics.density = 132.0f / 160.0f;
            metrics.densityDpi = DisplayMetrics.DENSITY_MEDIUM;
            metrics.heightPixels = (int) (768.0f / metrics.density);
            metrics.widthPixels = (int) (1024.f / metrics.density);
            metrics.xdpi = metrics.ydpi = 132;
            break;

        default:
            metrics.density = 1;
            metrics.densityDpi = DisplayMetrics.DENSITY_MEDIUM;
            metrics.heightPixels = 480;
            metrics.widthPixels = 320;
            metrics.xdpi = metrics.ydpi = 160;
        }

        metrics.scaledDensity = metrics.density;
    }

    public int getRotation() {
        
        switch (Application.getApplication().xmlvmGetCurrentInterfaceOrientation()) {
        case CommonProperties.ORIENTATION_PORTRAIT:
            return Surface.ROTATION_0;
        case CommonProperties.ORIENTATION_LANDSCAPE_LEFT:
            return Surface.ROTATION_90;
        case CommonProperties.ORIENTATION_PORTRAIT_UPSIDE_DOWN:
            return Surface.ROTATION_180;
        case CommonProperties.ORIENTATION_LANDSCAPE_RIGHT:
            return Surface.ROTATION_270;
        }
        Assert.FAIL("Illegal device orientation");
        return Surface.ROTATION_0;
    }
}
