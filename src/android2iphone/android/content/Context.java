package android.content;

import android.hardware.SensorManager;

public class Context {
  public static final String SENSOR_SERVICE = "SENSOR_SERVICE";

  public Object getSystemService(String service) {
    if (service.equals(SENSOR_SERVICE)) {
      return new SensorManager();
    }
    return null;
  }
}
