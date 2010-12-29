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

package org.xmlvm.iphone;

import org.xmlvm.XMLVMIgnore;
import org.xmlvm.XMLVMSkeletonOnly;
import org.xmlvm.iphone.internal.Simulator;

@XMLVMSkeletonOnly
public class UIAccelerometer extends NSObject {

    private static UIAccelerometer  sharedAccelerometer = new UIAccelerometer();

    private UIAccelerometerDelegate delegate            = null;


    private UIAccelerometer() {
    }

    public static UIAccelerometer sharedAccelerometer() {
        return sharedAccelerometer;
    }

    @XMLVMIgnore
    public static void setAcceleratedInternal(double x, double y, double z) {
        Simulator.setAccelerated(x, y, z);
        if (sharedAccelerometer.delegate != null) {
            UIAcceleration acceleration = new UIAcceleration(x, y, z);
            sharedAccelerometer.delegate.accelerometerDidAccelerate(sharedAccelerometer,
                    acceleration);
        }
    }

    public void setUpdateInterval(double i) {

    }

    public void setDelegate(UIAccelerometerDelegate delegate) {
        this.delegate = delegate;
    }
}
