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

package org.xmlvm.acl.common.subsystems;

import android.graphics.RectF;

/**
 *
 */
public interface CommonProperties {
    
    //Orientations
    public static final int ORIENTATION_UNKNOWN            = 0;
    public static final int ORIENTATION_PORTRAIT           = 1;
    public static final int ORIENTATION_PORTRAIT_UPSIDE_DOWN = 2;
    public static final int ORIENTATION_LANDSCAPE_LEFT      = 3;
    public static final int ORIENTATION_LANDSCAPE_RIGHT     = 4;
    public static final int ORIENTATION_FACE_UP             = 5;
    public static final int ORIENTATION_FACE_DOWN           = 6;
    
    /** Constant indicating an unknown device. */
    public static final int DEVICE_UNKNOWN = 0;

    /** Constant indicating a 1st, 2nd or 3rd generation iPhone device. */
    public static final int DEVICE_IPHONE  = 1;

    /** Constant indicating a 4th generation iPhone device. */
    public static final int DEVICE_IPHONE4 = 2;

    /** Constant indicating an iPad device. */
    public static final int DEVICE_IPAD    = 3;
    
    /** Constant indicating an WP7 device. */
    public static final int DEVICE_WP7 = 4;

    public int detectDevice();
    public RectF getScreenBounds();
    public RectF getApplicationFrame();
    public int getOrientation();
    public void setOrientation(int orientation);
    public void setStatusBarHidden(boolean b);
    
}
