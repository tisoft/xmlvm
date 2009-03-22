package org.xmlvm.asokoban;

import android.app.Activity;
import android.hardware.SensorListener;
import android.hardware.SensorManager;
import android.os.Bundle;
import android.view.Window;
import android.view.WindowManager;

public class ASokoban extends Activity {

	private GameView gameView;

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

		SensorManager sensorManager = (SensorManager) this
				.getSystemService(SENSOR_SERVICE);
		sensorManager.registerListener(new SensorListener() {
			public void onSensorChanged(int sensor, float[] values) {
				if (gameView.isMoving())
					return;
				int dx = 0;
				int dy = 0;
				float X = values[1];
				float Y = values[0];
				if (Math.abs(X) > Math.abs(Y)) {
					if (X > 1)
						dx = 1;
					if (X < -1)
						dx = -1;
				} else {
					if (Y > 1)
						dy = 1;
					if (Y < -1)
						dy = -1;
				}
				gameView.getGameController().move(dx, dy);
			}

			public void onAccuracyChanged(int sensor, int accuracy) {
			}
		}, SensorManager.SENSOR_ACCELEROMETER);
	}
}