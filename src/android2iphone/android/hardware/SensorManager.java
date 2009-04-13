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

package android.hardware;

import org.xmlvm.iphone.UIAcceleration;
import org.xmlvm.iphone.UIAccelerometerDelegate;
import org.xmlvm.iphone.UIAccelerometer;

public class SensorManager implements UIAccelerometerDelegate {
  public static final float GRAVITY_EARTH = 9.80665f;
  public static final int SENSOR_ACCELEROMETER = 0x00000002;
  public static final int SENSOR_DELAY_FASTEST = 0x00000000;
  // TODO: support list on iPhone
  private RegisteredListener[] listeners = new RegisteredListener[20];
  int numListeners;

  private UIAccelerometer accel;

  public SensorManager() {
    accel = UIAccelerometer.getSharedAccelerometer();
    accel.setUpdateInterval(1.0 / 40);
    accel.setDelegate(this);
  }

  public void registerListener(SensorListener listener, int sensors, int rate) {
    listeners[numListeners++] = new RegisteredListener(listener, sensors);
  }

  public void accelerometerDidAccelerate(UIAccelerometer accelerometer,
			UIAcceleration acceleration) {
    // This is to adapt the iPhone value range to the Android one. iPhone/iPod
    // touch scale 1G to a value of 1 whereas the Android phone delivers the
    // actual G-force value.
    float x = (float) (acceleration.x() * GRAVITY_EARTH);
    float y = (float) (acceleration.y() * GRAVITY_EARTH);
    float z = (float) (acceleration.z() * GRAVITY_EARTH);
    for (int i = 0; i < numListeners; i++) {
      RegisteredListener listener = listeners[i];
      if ((listener.sensors & SENSOR_ACCELEROMETER) != 0) {
        // For some reason Android (HTC Dream) gives the values twice in a
        // 6-element array.
        // TODO: Not sure if these values are in the correct order.
        listener.listener.onSensorChanged(SENSOR_ACCELEROMETER, new float[] {
            x, y, z, x, y, z });
      }
    }
  }
}

class RegisteredListener {
  SensorListener listener = null;
  int sensors = 0;

  public RegisteredListener(SensorListener listener, int sensors) {
    this.listener = listener;
    this.sensors = sensors;
  }
}