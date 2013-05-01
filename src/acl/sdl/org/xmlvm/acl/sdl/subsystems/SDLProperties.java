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

package org.xmlvm.acl.sdl.subsystems;

import org.xmlvm.acl.common.subsystems.CommonProperties;

import android.graphics.RectF;
import android.internal.Assert;

/**
 *
 */
public class SDLProperties implements CommonProperties {
    //TODO: Query resolution from SDL?
    private static final RectF RECTANGLE = new RectF(0,0,600,800);
    
    private int orientation = CommonProperties.ORIENTATION_UNKNOWN;

    /* (non-Javadoc)
     * @see org.xmlvm.acl.common.subsystems.CommonProperties#detectDevice()
     */
    @Override
    public int detectDevice() {
        return CommonProperties.DEVICE_SDL;
    }

    /* (non-Javadoc)
     * @see org.xmlvm.acl.common.subsystems.CommonProperties#getApplicationFrame()
     */
    @Override
    public RectF getApplicationFrame() {
        return RECTANGLE;
    }

    /* (non-Javadoc)
     * @see org.xmlvm.acl.common.subsystems.CommonProperties#getOrientation()
     */
    @Override
    public int getOrientation() {     
        return orientation;
    }

    /* (non-Javadoc)
     * @see org.xmlvm.acl.common.subsystems.CommonProperties#getScreenBounds()
     */
    @Override
    public RectF getScreenBounds() {
        return RECTANGLE;
    }

    /* (non-Javadoc)
     * @see org.xmlvm.acl.common.subsystems.CommonProperties#getSwitchButtonHeight()
     */
    @Override
    public float getSwitchButtonHeight() {
        return 16;
    }

    /* (non-Javadoc)
     * @see org.xmlvm.acl.common.subsystems.CommonProperties#getSwitchButtonWidth()
     */
    @Override
    public float getSwitchButtonWidth() {
        return 16;
    }

    /* (non-Javadoc)
     * @see org.xmlvm.acl.common.subsystems.CommonProperties#setOrientation(int)
     */
    @Override
    public void setOrientation(int orientation) {
        this.orientation = orientation;
    }

    /* (non-Javadoc)
     * @see org.xmlvm.acl.common.subsystems.CommonProperties#setStatusBarHidden(boolean)
     */
    @Override
    public void setStatusBarHidden(boolean b) {
        Assert.NOT_IMPLEMENTED();
    }

}
