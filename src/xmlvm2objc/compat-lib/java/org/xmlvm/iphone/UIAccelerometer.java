package org.xmlvm.iphone;

import java.util.ArrayList;
import java.util.List;

public class UIAccelerometer {
  public static List<UIAccelerometer> accelerometers = new ArrayList<UIAccelerometer>();
  private IAccelerated toNotify;
  
  public UIAccelerometer() {
    accelerometers.add(this);
  }

  public static void setAcceleratedInternal(float x, float y, float z) {
    for (UIAccelerometer accelerometer : accelerometers) {
      accelerometer.Accelerated(x, y, z);
    }
  }

  public void setUpdateInterval(double i) {

  }

  public void setDelegate(IAccelerated app) {
    this.toNotify = app;
  }

  public void Accelerated(float x, float y, float z) {
    this.toNotify.OnAccelerate(x, y, z);
  }

}
