package org.xmlvm.asokoban;

//import org.openintents.hardware.SensorManagerSimulator;
//import org.openintents.provider.Hardware;

import android.app.Activity;
import android.content.Intent;
import android.hardware.SensorListener;
import android.hardware.SensorManager;
//import android.os.Build;
import android.os.Bundle;
//import android.view.MotionEvent;
import android.view.Window;
import android.view.WindowManager;

public class ASokoban extends Activity implements SensorListener {

  private static final float movingThreshold = 1.7f;
  
  private GameView gameView;
  private SensorManager sensorManager;

  /** Called when the activity is first created. */
  @Override
  public void onCreate(Bundle savedInstanceState) {
    super.onCreate(savedInstanceState);
    // No title bar.
    this.requestWindowFeature(Window.FEATURE_NO_TITLE);
    // Switch to fullscreen view, getting rid of the status bar as well.
    this.getWindow().setFlags(WindowManager.LayoutParams.FLAG_FULLSCREEN,
        WindowManager.LayoutParams.FLAG_FULLSCREEN);
    gameView = new GameView(this, 1);
    SensorManager sensorManager = (SensorManager) this.getSystemService(SENSOR_SERVICE);

    // ----------------------------------------------------------------------------------
    /*
    Hardware.mContentResolver = getContentResolver();
    sensorManager = (SensorManager) new SensorManagerSimulator(
        (SensorManager) getSystemService(SENSOR_SERVICE));
    // If the emulator is used, use the OpenIntent simulator to simulate sensor
    // changes.
    if (isEmulator()) {
      Intent intent = new Intent(Intent.ACTION_VIEW,
          Hardware.Preferences.CONTENT_URI);
      startActivity(intent);
      sensorManager.unregisterListener(this);
      SensorManagerSimulator.connectSimulator();
    }
    */
    // ---------------------------------------------------------------------

    sensorManager.registerListener(this, SensorManager.SENSOR_ACCELEROMETER);//,SensorManager.SENSOR_DELAY_FASTEST);

  }

  public void onSensorChanged(int sensor, float[] values) {
    float X = values[0];
    float Y = -values[1];
    gameView.getMover().setMovingSpeed(X, Y);
    if (gameView.isMoving()) {
        return;
    }
    int dx = 0;
    int dy = 0;
    if (Math.abs(X) > Math.abs(Y)) {
      if (X > movingThreshold)
        dx = 1;
      if (X < -movingThreshold)
        dx = -1;
    } else {
      if (Y > movingThreshold)
        dy = 1;
      if (Y < -movingThreshold)
        dy = -1;
    }
    if (Math.abs(dx) > 0 || Math.abs(dy) > 0) {
      gameView.getGameController().move(dx, dy);
    }
  }

  /*
  @Override
  protected void onResume() {
    super.onResume();
    sensorManager.registerListener(this, SensorManager.SENSOR_ACCELEROMETER,
        SensorManager.SENSOR_DELAY_FASTEST);
  }

  @Override
  protected void onStop() {
    sensorManager.unregisterListener(this);
    super.onStop();
  }
  */

  public void onAccuracyChanged(int sensor, int accuracy) {
  }

  /*
  @Override
  public boolean onTrackballEvent(MotionEvent event) {
    if (gameView.isMoving()) {
      return false;
    }
    if (event.getAction() == MotionEvent.ACTION_MOVE) {
      if (event.getHistorySize() > 0) {
        float dx = event.getX() - event.getHistoricalX(0);
        float dy = event.getY() - event.getHistoricalY(0);
        if (Math.abs(dy) > Math.abs(dx)) {
          dy = dy > 0 ? 1 : -1;
          dx = 0;
        } else {
          dy = 0;
          dx = dx > 0 ? 1 : -1;
        }
        gameView.getGameController().move((int) dx, (int) dy);
      }
      return true;
    }
    return false;
  }
  */

  /**
   * Try to figure out whether this app is running on the emulator.
   */
  /*
  public static boolean isEmulator() {
    return Build.DEVICE.equals("generic") && Build.BRAND.equals("generic")
        && Build.PRODUCT.equals("generic");
  }
  */
}