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

import org.xmlvm.iphone.IAccelerated;
import org.xmlvm.iphone.UIAccelerometer;

import java.util.ArrayList;
import java.util.List;

public class SensorManager implements IAccelerated {
  public static final int SENSOR_ACCELEROMETER = 0x00000002;
  private List<RegisteredListener> listeners =
      new ArrayList<RegisteredListener>();

  private UIAccelerometer accel;

  public SensorManager() {
    accel = new UIAccelerometer();
    accel.setUpdateInterval(1.0 / 40);
    accel.setDelegate(this);
  }

  public void registerListener(SensorListener listener, int sensors) {
    listeners.add(new RegisteredListener(listener, sensors));
  }

  public void OnAccelerate(float x, float y, float z) {
    for (RegisteredListener listener : listeners) {
      if ((listener.sensors & SENSOR_ACCELEROMETER) != 0) {
        // For some reason Android (HTC Dream) gives the values twice in a
        // 6-element array.
        // TODO: Not sure if these values are in the correct order.
        listener.listener.onSensorChanged(SENSOR_ACCELEROMETER, new float[] {x,
            y, z, x, y, z});
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
}
