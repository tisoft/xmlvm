package org.xmlvm.asokoban;

import android.app.Activity;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.pm.ActivityInfo;
import android.hardware.SensorManager;
import android.os.Bundle;
import android.os.PowerManager;
import android.view.Display;
import android.view.Window;
import android.view.WindowManager;

/**
 * The main controller class of the Sokoban game, implemented as an Android
 * {@link Activity}.
 */
public class ASokoban extends Activity {

    /** Used to store the level in the user prefs. */
    private static final String   PREFKEY_LEVEL = "level";

    /** The view used to display the game. */
    private GameView              gameView;

    /** The controller used to control the game. */
    private GameController        gameController;

    /** Used for reading and writing preferences. */
    private SharedPreferences     prefs;

    /** Used to keep the device awake and the screen bright. */
    private PowerManager.WakeLock wakeLock;

    /** Called when the activity is first created. */
    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);

        // Retrieve persisted data
        prefs = getPreferences(MODE_PRIVATE);
        int currentLevel = prefs.getInt(PREFKEY_LEVEL, 0);

        // Sets the device to not sleep or loose brightness.
        setDeviceNoSleep();

        // No title bar.
        this.requestWindowFeature(Window.FEATURE_NO_TITLE);

        // Switch to fullscreen view, getting rid of the status bar as well.
        this.getWindow().setFlags(WindowManager.LayoutParams.FLAG_FULLSCREEN,
                WindowManager.LayoutParams.FLAG_FULLSCREEN);

        // Create view and controller
        gameView = new GameView(this);
        gameController = new GameController(this, gameView);
        gameView.setGameController(gameController);

        // BEWARE: The order of the following steps is significant:
        // 1. Register SensorListener
        // 2. Switch to LANDSCAPE
        // 3. Compute display dimensions

        // Register GameController as SensorListener
        SensorManager sensorManager = (SensorManager) this.getSystemService(SENSOR_SERVICE);
        sensorManager.registerListener(gameController, SensorManager.SENSOR_ACCELEROMETER,
                SensorManager.SENSOR_DELAY_FASTEST);

        // Set the orientation to landscape programmatically and set the
        // GameView's display dimensions.
        this.setRequestedOrientation(ActivityInfo.SCREEN_ORIENTATION_LANDSCAPE);
        WindowManager windowManager = getWindowManager();
        Display display = windowManager.getDefaultDisplay();
        gameView.setDisplayWidth(display.getWidth());
        gameView.setDisplayHeight(display.getHeight());

        gameController.loadLevel(currentLevel);
    }

    /**
     * Sets the device to not sleep or go to standby, and keeps the display
     * bright.
     */
    public void setDeviceNoSleep() {
        PowerManager pm = (PowerManager) getSystemService(Context.POWER_SERVICE);
        wakeLock = pm.newWakeLock(PowerManager.SCREEN_BRIGHT_WAKE_LOCK, "ASokoban");
        wakeLock.acquire();
    }

    /**
     * Stores the current level in the preferences, so it can be loaded when the
     * application is restarted.
     */
    protected void storeCurrentLevel() {
        Editor editor = prefs.edit();
        editor.putInt(PREFKEY_LEVEL, gameController.getCurrentLevel());
        editor.commit();
    }

    /**
     * Called when the Activity is being deleted.
     */
    @Override
    protected void onDestroy() {
        storeCurrentLevel();
        wakeLock.release();
        super.onDestroy();
    }
}