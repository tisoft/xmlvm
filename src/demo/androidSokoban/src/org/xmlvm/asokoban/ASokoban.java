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
    private static final String   PREFKEY_LEVEL             = "level";

    /** Used to store usage of the accelerometer. */
    private static final String   PREFKEY_USERACCELEROMETER = "useAccelerometer";

    /** The view used to display the game. */
    private GameView              gameView;

    /** The controller used to control the game. */
    private GameController        gameController;

    /** The controller handling inputs from the user. */
    private InputController       inputController;

    /** Used for reading and writing preferences. */
    private SharedPreferences     prefs;

    /** Used to keep the device awake and the screen bright. */
    private PowerManager.WakeLock wakeLock;

    /** The SensorManager used to register/unregister SensorListeners. */
    private SensorManager         sensorManager;

    /** Determines whether the man can be controlled using the accelerometer. */
    private boolean               useAccelerometer;

    /** Called when the activity is first created. */
    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);

        // NOTE: The order of the following steps in this method is
        // significant:
        // 1. Obtain SensorManager
        // 2. Switch to LANDSCAPE
        // 3. Compute display dimensions

        // Retrieve persisted data
        prefs = getPreferences(MODE_PRIVATE);
        final int currentLevel = prefs.getInt(PREFKEY_LEVEL, 0);
        useAccelerometer = prefs.getBoolean(PREFKEY_USERACCELEROMETER, true);

        // Sets the device to not sleep or loose brightness.
        setDeviceNoSleep();

        // 1) Obtain SensorManager.
        sensorManager = (SensorManager) this.getSystemService(SENSOR_SERVICE);

        // 2) Set the orientation to landscape programmatically.
        this.setRequestedOrientation(ActivityInfo.SCREEN_ORIENTATION_LANDSCAPE);

        // No title bar.
        this.requestWindowFeature(Window.FEATURE_NO_TITLE);

        // Switch to fullscreen view, getting rid of the status bar as well.
        this.getWindow().setFlags(WindowManager.LayoutParams.FLAG_FULLSCREEN,
                WindowManager.LayoutParams.FLAG_FULLSCREEN);
        
        UpdateTimer timer = UpdateTimer.getInstance();
        
        // Create view and controller.
        GamePieceMover mover = new GamePieceMover(timer);
        gameView = new GameView(this, mover);
        SplashView splashView = new SplashView(this, gameView);
        InfoView infoView = new InfoView(this, gameView);
        gameController = new GameController(gameView, splashView, infoView, currentLevel);
        gameView.setGameController(gameController);
        mover.setMoveFinishedHandler(gameController);

        inputController = new InputController(mover, gameController, timer);
        inputController.setTapHandler(gameController);
        gameView.setOnTouchListener(inputController);

        if (useAccelerometer) {
            sensorManager.registerListener(inputController, SensorManager.SENSOR_ACCELEROMETER,
                    SensorManager.SENSOR_DELAY_FASTEST);
        }

        // 3) Set the GameView's display dimensions.
        WindowManager windowManager = getWindowManager();
        Display display = windowManager.getDefaultDisplay();
        gameView.setDisplayWidth(display.getWidth());
        gameView.setDisplayHeight(display.getHeight());
        gameController.showSplashScreen();
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
        gameController.onDestroy();
        super.onDestroy();
    }

    /**
     * Enables the accelerometer by registering the SensorListener.
     */
    public void enableAccelerometer() {
        if (!useAccelerometer) {
            useAccelerometer = true;
            sensorManager.registerListener(inputController, SensorManager.SENSOR_ACCELEROMETER,
                    SensorManager.SENSOR_DELAY_FASTEST);
            storeAccelerometerUsage();
        }
    }

    /**
     * Disables the accelerometer by unregistering the SensorListener.
     */
    public void disableAccelerometer() {
        if (useAccelerometer) {
            useAccelerometer = false;
            sensorManager.unregisterListener(inputController);
            storeAccelerometerUsage();
        }
    }

    /**
     * Determines whether the accelerometer can be used to control the man's
     * movements.
     * 
     * @return true if the accelerometer is enabled, false otherwise
     */
    public boolean isAccelerometerEnabled() {
        return useAccelerometer;
    }

    /**
     * Stores the accelerometer usage in the preferences, so it can be loaded
     * when the application is restarted.
     */
    private void storeAccelerometerUsage() {
        Editor editor = prefs.edit();
        editor.putBoolean(PREFKEY_USERACCELEROMETER, useAccelerometer);
        editor.commit();
    }

}