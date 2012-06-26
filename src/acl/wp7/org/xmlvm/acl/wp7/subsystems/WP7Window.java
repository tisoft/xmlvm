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

package org.xmlvm.acl.wp7.subsystems;

import org.xmlvm.acl.common.objects.CommonView;
import org.xmlvm.acl.common.subsystems.CommonWindow;
import org.xmlvm.acl.wp7.objects.WP7View;

import Compatlib.System.Windows.Application;
import android.graphics.RectF;
import android.util.Log;

/**
 *
 */
public class WP7Window implements CommonWindow {

    @Override
    public void addSubview(CommonView view) {
        Log.w("ACL", "addSubview is not implemented");
    }

    /* (non-Javadoc)
     * @see org.xmlvm.common.subsystems.CommonDeviceWindow#setFrame(android.graphics.RectF)
     */
    @Override
    public void setFrame(RectF rect) {
        Log.w("ACL", "setFrame is not implemented");
    }

    /* (non-Javadoc)
     * @see org.xmlvm.common.subsystems.CommonDeviceWindow#setNeedsDisplay()
     */
    @Override
    public void setNeedsDisplay() {
        Log.w("ACL", "setNeedsDisplay is not implemented");
    }

    /* (non-Javadoc)
     * @see org.xmlvm.common.subsystems.CommonDeviceWindow#makeKeyAndVisible()
     */
    @Override
    public void makeKeyAndVisible() {
        Log.w("ACL", "makeKeyAndVisible is not implemented");
    }

    /* (non-Javadoc)
     * @see org.xmlvm.common.subsystems.CommonDeviceWindow#setStatusBarHidden(boolean)
     */
    @Override
    public void setStatusBarHidden(boolean b) {
        Application.getCurrent().setStatusBarHidden(true);
    }

    /* (non-Javadoc)
     * @see org.xmlvm.acl.common.subsystems.CommonWindow#setTopLevelViewController(org.xmlvm.acl.common.objects.CommonView)
     */
    @Override
    public void setTopLevelViewController(CommonView view) {
        Application.getCurrent().setRootVisual(((WP7View)view).getElement());
    }

}
