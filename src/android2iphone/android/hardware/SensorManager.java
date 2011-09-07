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

package android.hardware;

import java.util.ArrayList;
import java.util.List;

import org.xmlvm.iphone.UIAcceleration;
import org.xmlvm.iphone.UIAccelerometer;
import org.xmlvm.iphone.UIAccelerometerDelegate;

import android.internal.AndroidAppLauncher;

public class SensorManager implements UIAccelerometerDelegate {
    public static final float             GRAVITY_EARTH        = 9.80665f;
    public static final int               SENSOR_ACCELEROMETER = 0x00000002;
    public static final int               SENSOR_DELAY_FASTEST = 0x00000000;
    private List<RegisteredEventListener> eventListeners       = new ArrayList<RegisteredEventListener>();

    private UIAccelerometer               accel;

    private static Sensor                 sensorAccelerometer;

    private float                         accelerometerValues[];


    public SensorManager() {
        sensorAccelerometer = new Sensor(Sensor.TYPE_ACCELEROMETER);
        accelerometerValues = new float[3];
        accel = UIAccelerometer.sharedAccelerometer();
        accel.setUpdateInterval(1.0 / 40);
        accel.setDelegate(this);
    }

    public void accelerometerDidAccelerate(UIAccelerometer accelerometer,
            UIAcceleration acceleration) {

        // This is to adapt the iPhone value range to the Android one.
        // iPhone/iPod
        // touch scale 1G to a value of 1 whereas the Android phone delivers the
        // actual G-force value.
        accelerometerValues[0] = (float) (acceleration.x() * GRAVITY_EARTH);
        accelerometerValues[1] = (float) (acceleration.y() * GRAVITY_EARTH);
        accelerometerValues[2] = (float) (acceleration.z() * GRAVITY_EARTH);

        for (RegisteredEventListener listener : eventListeners) {
            if (listener.sensor.getType() == Sensor.TYPE_ACCELEROMETER) {
                SensorEvent event = new SensorEvent(accelerometerValues.length);
                event.sensor = sensorAccelerometer;
                for (int i = 0; i < accelerometerValues.length; ++i) {
                    event.values[i] = -accelerometerValues[i];
                }
                listener.listener.onSensorChanged(event);
            }
        }
    }

    /**
     * Use this method to get the default sensor for a given type. Note that the
     * returned sensor could be a composite sensor, and its data could be
     * averaged or filtered. If you need to access the raw sensors use
     * {@link SensorManager#getSensorList(int) getSensorList}.
     * 
     * 
     * @param type
     *            of sensors requested
     * @return the default sensors matching the asked type.
     */
    public Sensor getDefaultSensor(int type) {
        // TODO: For now we just return an empty one.
        return (new Sensor(type));
    }

    /**
     * Registers a {@link android.hardware.SensorEventListener
     * SensorEventListener} for the given sensor.
     * 
     * @param listener
     *            A {@link android.hardware.SensorEventListener
     *            SensorEventListener} object.
     * @param sensor
     *            The {@link android.hardware.Sensor Sensor} to register to.
     * @param rate
     *            The rate {@link android.hardware.SensorEvent sensor events}
     *            are delivered at. This is only a hint to the system. Events
     *            may be received faster or slower than the specified rate.
     *            Usually events are received faster. The value must be one of
     *            {@link #SENSOR_DELAY_NORMAL}, {@link #SENSOR_DELAY_UI},
     *            {@link #SENSOR_DELAY_GAME}, or {@link #SENSOR_DELAY_FASTEST}.
     * 
     * @return true if the sensor is supported and successfully enabled.
     * 
     */
    public boolean registerListener(SensorEventListener listener, Sensor sensor, int rate) {
        if (sensor.getType() == Sensor.TYPE_ACCELEROMETER) {
            /*
             * We are installing an event listener for the accelerometer. Freeze
             * screen orientation in order to avoid auto-rotating of the screen.
             */
            AndroidAppLauncher.getApplication().xmlvmFreezeInterfaceOrientation(true);
        }
        return eventListeners.add(new RegisteredEventListener(listener, sensor, rate));
    }

    public void unregisterListener(SensorEventListener listener) {
        int i = 0;
        boolean freezeOrientation = false;
        while (i < eventListeners.size()) {
            RegisteredEventListener registeredListener = eventListeners.get(i);
            if (registeredListener.listener == listener) {
                eventListeners.remove(i);
            } else {
                if (registeredListener.sensor.getType() == Sensor.TYPE_ACCELEROMETER) {
                    /*
                     * We still have an accelerometer listener installed
                     * somewhere. Continue to freeze screen orientation.
                     */
                    freezeOrientation = true;
                }
                i++;
            }
        }
        AndroidAppLauncher.getApplication().xmlvmFreezeInterfaceOrientation(freezeOrientation);
    }
}


/**
 * Helper class for keeping registered listeners.
 */
class RegisteredEventListener {
    SensorEventListener listener = null;
    Sensor              sensor   = null;
    int                 rate     = 0;


    public RegisteredEventListener(SensorEventListener listener, Sensor sensor, int rate) {
        this.listener = listener;
        this.sensor = sensor;
        this.rate = rate;
    }
}