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

package android.internal;

import org.xmlvm.iphone.CGRect;
import org.xmlvm.iphone.UIDevice;
import org.xmlvm.iphone.UIDeviceOrientation;
import org.xmlvm.iphone.UIScreen;

import android.content.res.Configuration;

/**
 * 
 * Factory to create a new Configuration instance initialized with the
 * configuration of the device the application is running on.
 * 
 */
public class ConfigurationFactory {

    /** Constant indicating an unknown device. */
    public static final int DEVICE_UNKNOWN = 0;

    /** Constant indicating a 1st, 2nd or 3rd generation iPhone device. */
    public static final int DEVICE_IPHONE  = 1;

    /** Constant indicating a 4th generation iPhone device. */
    public static final int DEVICE_IPHONE4 = 2;

    /** Constant indicating an iPad device. */
    public static final int DEVICE_IPAD    = 3;

    /**
     * 
     * Factory method to create a new Configuration instance initialized with
     * the current device configuration.
     * 
     * @return The created configuration instance.
     * 
     */

    public static Configuration create() {
        // Create configuration with the Locale already set
        Configuration config = new Configuration();

        // Initialize orientation
        initOrientation(config);

        // Initialize screen size, screen aspect and density
        initScreenConfig(config);
        return config;
    }

    /**
     * 
     * Initialize screen configuration values: size, aspect and density.
     * 
     * @param config
     *            The configuration object to be initialized.
     * 
     */

    private static void initScreenConfig(Configuration config) {
        int device = detectDevice();

        switch (device) {
        case DEVICE_IPHONE:
            config.screenLayout |= Configuration.SCREENLAYOUT_SIZE_NORMAL;
            config.screenLayout |= Configuration.SCREENLAYOUT_LONG_NO;
            break;

        case DEVICE_IPHONE4:
            config.screenLayout |= Configuration.SCREENLAYOUT_SIZE_LARGE;
            config.screenLayout |= Configuration.SCREENLAYOUT_LONG_YES;
            break;

        case DEVICE_IPAD:
            config.screenLayout |= Configuration.SCREENLAYOUT_SIZE_XLARGE;
            config.screenLayout |= Configuration.SCREENLAYOUT_LONG_NO;
            break;
        }
    }

    /**
     * 
     * Initialize orientation
     * 
     * @param config
     *            The configuration to be initialized.
     * 
     */

    private static void initOrientation(Configuration config) {
        int orientation = UIDevice.currentDevice().getOrientation();

        switch (orientation) {
        case UIDeviceOrientation.Portrait:
        case UIDeviceOrientation.PortraitUpsideDown:
        case UIDeviceOrientation.FaceUp:
        case UIDeviceOrientation.FaceDown:
            config.orientation = Configuration.ORIENTATION_PORTRAIT;
            break;

        case UIDeviceOrientation.LandscapeLeft:
        case UIDeviceOrientation.LandscapeRight:
            config.orientation = Configuration.ORIENTATION_LANDSCAPE;
            break;

        default:
            config.orientation = Configuration.ORIENTATION_UNDEFINED;
            break;
        }
    }

    /**
     * 
     * Get the device's density based on it screen resolution.
     * 
     * @return The detected density
     * 
     */

    public static int getDensity() {
        int device = detectDevice();

        switch (device) {
        case DEVICE_IPHONE:
            return Density.DENSITY_MEDIUM;

        case DEVICE_IPHONE4:
            return Density.DENSITY_HIGH;

        case DEVICE_IPAD:
            return Density.DENSITY_MEDIUM;
        }

        return Density.DENSITY_UNDEFINED;
    }

    /**
     * 
     * Determines the device based on the sum of its horizontal and vertical
     * screen pixels which is unique for each device.
     * 
     * @return The detected device.
     * 
     */

    public static int detectDevice() {
        CGRect rect = UIScreen.mainScreen().getBounds();

        // Determine configuration based on the sum of width and height, which
        // is unique for all iPhone and iPad devices
        int totalPixels = (int) rect.size.width + (int) rect.size.height;

        switch (totalPixels) {
        // All iPhone before iPhone4
        case 800:
            return DEVICE_IPHONE;

            // iPhone 4
        case 1600:
            return DEVICE_IPHONE4;

            // iPad
        case 1792:
            return DEVICE_IPAD;
        }

        return DEVICE_UNKNOWN;
    }
}
