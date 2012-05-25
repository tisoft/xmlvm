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

import org.xmlvm.acl.common.subsystems.CommonAccelerometer;
import org.xmlvm.iphone.UIAcceleration;
import org.xmlvm.iphone.UIAccelerometer;
import org.xmlvm.iphone.UIAccelerometerDelegate;

import android.content.pm.ActivityInfo;
import android.hardware.RegisteredEventListener;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorManager;
import android.internal.TopActivity;

/**
 *
 */
public class IPhoneAccelerometer implements CommonAccelerometer, UIAccelerometerDelegate {
    
    public static final float             GRAVITY_EARTH        = 9.80665f;
    public static final int               SENSOR_ACCELEROMETER = 0x00000002;
    public static final int               SENSOR_DELAY_FASTEST = 0x00000000;

    private UIAccelerometer accel;
    private SensorManager sensorManager;
    
    public IPhoneAccelerometer(SensorManager sensorManager) {
        this.sensorManager = sensorManager;
        accel = UIAccelerometer.sharedAccelerometer();
        accel.setUpdateInterval(1.0 / 40);
        accel.setDelegate(this);
    }
    
    public void accelerometerDidAccelerate(UIAccelerometer accelerometer,
            UIAcceleration acceleration) {
        float accelerometerValues[] = new float[3];
        
        // This is to adapt the iPhone value range to the Android one.
        // iPhone/iPod
        // touch scale 1G to a value of 1 whereas the Android phone delivers the
        // actual G-force value.
        accelerometerValues[0] = (float) (acceleration.x() * GRAVITY_EARTH);
        accelerometerValues[1] = (float) (acceleration.y() * GRAVITY_EARTH);
        accelerometerValues[2] = (float) (acceleration.z() * GRAVITY_EARTH);

        for (RegisteredEventListener listener : sensorManager.xmlvmGetEventListeners()) {
            if (listener.getSensor().getType() == Sensor.TYPE_ACCELEROMETER) {
                SensorEvent event = new SensorEvent(accelerometerValues.length);
                event.sensor = SensorManager.xmlvmSensorAccelerometer;
                for (int i = 0; i < accelerometerValues.length; ++i) {
                    event.values[i] = -accelerometerValues[i];
                }
                listener.getListener().onSensorChanged(event);
            }
        }
    }
    
}
