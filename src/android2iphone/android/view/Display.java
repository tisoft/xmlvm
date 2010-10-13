/*
 * Copyright (c) 2004-2009 XMLVM --- An XML-based Programming Language
 * 
 * This program is free software; you can redistribute it and/or modify it under
 * the terms of the GNU General Public License as published by the Free Software
 * Foundation; either version 2 of the License, or (at your option) any later
 * version.
 * 
 * This program is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
 * FOR A PARTICULAR PURPOSE. See the GNU General Public License for more
 * details.
 * 
 * You should have received a copy of the GNU General Public License along with
 * this program; if not, write to the Free Software Foundation, Inc., 675 Mass
 * Ave, Cambridge, MA 02139, USA.
 * 
 * For more information, visit the XMLVM Home Page at http://www.xmlvm.org
 */

package android.view;

import android.app.Activity;
import android.content.pm.ActivityInfo;
import android.internal.ConfigurationFactory;
import android.internal.TopActivity;
import android.util.DisplayMetrics;

import org.xmlvm.iphone.CGSize;
import org.xmlvm.iphone.UIScreen;

public class Display {

    /**
     * Return the current width of the screen TODO: Implement for real. This is
     * only a dummy.
     */
    public int getWidth() {
        Activity activity = TopActivity.get();
        CGSize s = UIScreen.mainScreen().getBounds().size;
        return (int) (activity.getRequestedOrientation() == ActivityInfo.SCREEN_ORIENTATION_LANDSCAPE ? s.height
                : s.width);
    }

    /**
     * Return the current height of the screen TODO: Implement for real. This is
     * only a dummy.
     */
    public int getHeight() {
        Activity activity = TopActivity.get();
        CGSize s = UIScreen.mainScreen().getBounds().size;
        return (int) (activity.getRequestedOrientation() == ActivityInfo.SCREEN_ORIENTATION_LANDSCAPE ? s.width
                : s.height);
    }

    public void getMetrics(DisplayMetrics metrics) {
        CGSize size = UIScreen.mainScreen().getBounds().size;
        metrics.heightPixels = (int) size.height;
        metrics.widthPixels = (int) size.width;

        int device = ConfigurationFactory.detectDevice();
        switch (device) {
        case ConfigurationFactory.DEVICE_IPHONE4:
            metrics.density = 326.0f / 160.0f;
            metrics.densityDpi = DisplayMetrics.DENSITY_HIGH;
            metrics.heightPixels = (int) (960.0f / metrics.density);
            metrics.widthPixels = (int) (640.f / metrics.density);
            metrics.xdpi = metrics.ydpi = 326;
            break;
            
        case ConfigurationFactory.DEVICE_IPAD:
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
}
