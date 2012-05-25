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

import org.xmlvm.acl.common.subsystems.CommonAccelerometer;

import Compatlib.Microsoft.Devices.Sensors.Accelerometer;
import Compatlib.Microsoft.Devices.Sensors.AccelerometerReadingEventArgs;
import Compatlib.Microsoft.Devices.Sensors.ReadingChangedEventHandler;
import Compatlib.System.Object;
import android.content.pm.ActivityInfo;
import android.hardware.RegisteredEventListener;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorManager;
import android.internal.TopActivity;

/**
 *
 */
public class WP7Accelerometer extends Object implements CommonAccelerometer {
    public static final float             GRAVITY_EARTH        = 9.80665f;
    public static final int               SENSOR_ACCELEROMETER = 0x00000002;
    public static final int               SENSOR_DELAY_FASTEST = 0x00000000;

    private Accelerometer accel;
    private SensorManager sensorManager;
    
    public WP7Accelerometer(SensorManager sensorManager) {
        this.sensorManager = sensorManager;
        accel = new Accelerometer();
        accel.ReadingChanged.__add(new ReadingChangedEventHandler(this, new Compatlib.System.String("accelerometer_ReadingChanged")));
        accel.Start();
    }
    
    public void accelerometer_ReadingChanged(Object sender, AccelerometerReadingEventArgs args)
    {
        // This is to adapt the iPhone value range to the Android one.
        // iPhone/iPod
        // touch scale 1G to a value of 1 whereas the Android phone delivers the
        // actual G-force value.
        float x = (float) (args.getX() * GRAVITY_EARTH);
        float y = (float) (args.getY() * GRAVITY_EARTH);
        float z = (float) (args.getZ() * GRAVITY_EARTH);

        float[] values;
        if (TopActivity.get().getRequestedOrientation() == ActivityInfo.SCREEN_ORIENTATION_PORTRAIT) {
            values = new float[] { x, y, z, x, y, z };
        } else {
            values = new float[] { -y, x, z, x, y, z };
        }
        
        for (RegisteredEventListener listener : sensorManager.xmlvmGetEventListeners()) {
            if (listener.getSensor().getType() == Sensor.TYPE_ACCELEROMETER) {
                SensorEvent event = new SensorEvent(values.length);
                event.sensor = SensorManager.xmlvmSensorAccelerometer;
                for (int i = 0; i < values.length; ++i) {
                    event.values[i] = -values[i];
                }
                listener.getListener().onSensorChanged(event);
            }
        }
    }

}
