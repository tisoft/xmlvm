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

package org.xmlvm.demo.xokoban.activity;

import org.xmlvm.demo.xokoban.GameController;
import org.xmlvm.demo.xokoban.GameView;
import org.xmlvm.demo.xokoban.InputController;
import org.xmlvm.demo.xokoban.NonLayoutingLayout;
import org.xmlvm.demo.xokoban.R;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.hardware.Sensor;
import android.hardware.SensorManager;
import android.os.Bundle;
import android.os.PowerManager;
import android.util.Log;
import android.view.Display;
import android.view.KeyEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.Window;
import android.view.WindowManager;
import android.widget.ImageView;

/**
 * The main controller class of the Xokoban game, implemented as an Android
 * {@link Activity}.
 */
public class XokobanActivity extends Activity {
    /** Tag for use in logging. */
    private static final String   TAG                       = XokobanActivity.class.getSimpleName();

    /** Result code of the settings activity. */
    private static final int      REQUEST_CODE_SETTINGS     = 1;

    /** Used to store the level in the user prefs. */
    private static final String   PREFKEY_LEVEL             = "level";

    /** Used to store usage of the accelerometer. */
    private static final String   PREFKEY_USERACCELEROMETER = "useAccelerometer";

    /** Used to store whether Xokoban has been started for the first time. */
    private static final String   PREFKEY_FIRSTRUN          = "firstRun";

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

    /** The accelerometer sensor. */
    private Sensor                sensorAccelerometer;

    /** Determines whether the man can be controlled using the accelerometer. */
    private boolean               useAccelerometer;

    /** Indicates whether Sokoban has been started before. */
    private boolean               firstRun;


    /** Called when the activity is first created. */
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);

        // No title bar.
        this.requestWindowFeature(Window.FEATURE_NO_TITLE);

        // Switch to fullscreen view, getting rid of the status bar as well.
        this.getWindow().setFlags(WindowManager.LayoutParams.FLAG_FULLSCREEN,
                WindowManager.LayoutParams.FLAG_FULLSCREEN);

        // Set main layout.
        setContentView(R.layout.gamefield);

        // Retrieve persisted data
        prefs = getPreferences(MODE_PRIVATE);
        final int currentLevel = prefs.getInt(PREFKEY_LEVEL, 0);
        useAccelerometer = prefs.getBoolean(PREFKEY_USERACCELEROMETER, true);
        firstRun = prefs.getBoolean(PREFKEY_FIRSTRUN, true);

        // Sets the device to not sleep or loose brightness.
        setDeviceNoSleep();

        // Obtain SensorManager.
        sensorManager = (SensorManager) this.getSystemService(SENSOR_SERVICE);
        sensorAccelerometer = sensorManager.getDefaultSensor(Sensor.TYPE_ACCELEROMETER);

        // Create view and controller.
        gameView = new GameView(getBoardView());

        gameController = new GameController(gameView, currentLevel);
        gameView.setGameController(gameController);

        Display display = ((WindowManager) getSystemService(Context.WINDOW_SERVICE))
                .getDefaultDisplay();
        inputController = new InputController(gameController, display);
        getBoardView().setOnTouchListener(inputController);

        if (useAccelerometer) {
            sensorManager.registerListener(inputController, sensorAccelerometer,
                    SensorManager.SENSOR_ACCELEROMETER);
        }
        installButtonListeners();
    }

    @Override
    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
        // Parse the result we got from the settings activity to determine
        // whether the accelerometer should be enabled or not.
        if (requestCode == REQUEST_CODE_SETTINGS && resultCode == RESULT_OK) {
            boolean accelerometerEnabled = data.getBooleanExtra(
                    SettingsActivity.KEY_ACCELEROMETER_ENABLED, false);
            Log.i(TAG, "Accelerometer Enabled: " + accelerometerEnabled);
            if (accelerometerEnabled) {
                enableAccelerometer();
            } else {
                disableAccelerometer();
            }
        }
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

    @Override
    protected void onResume() {
        super.onResume();
        // Resume game.
        gameController.setGamePaused(false);
    }

    /**
     * Determines whether the accelerometer can be used to control the man's
     * movements.
     * 
     * @return true if the accelerometer is enabled, false otherwise
     */
    private boolean isAccelerometerEnabled() {
        return useAccelerometer;
    }

    /**
     * Enables the accelerometer by registering the SensorListener.
     */
    private void enableAccelerometer() {
        if (!useAccelerometer) {
            useAccelerometer = true;
            sensorManager.registerListener(inputController, sensorAccelerometer,
                    SensorManager.SENSOR_DELAY_FASTEST);
            storeAccelerometerUsage();
        }
    }

    /**
     * Disables the accelerometer by unregistering the SensorListener.
     */
    private void disableAccelerometer() {
        if (useAccelerometer) {
            useAccelerometer = false;
            sensorManager.unregisterListener(inputController);
            storeAccelerometerUsage();
        }
    }

    public void loadGame() {
        gameController.loadLevel(true);
    }

    private NonLayoutingLayout getBoardView() {
        return (NonLayoutingLayout) findViewById(R.id.board);
    }

    private void showLevelsDialog() {
        gameController.showLevelDialog();
    }

    private void switchToSettings() {
        gameController.setGamePaused(true);
        startActivityForResult(new Intent(this, SettingsActivity.class).putExtra(
                SettingsActivity.KEY_ACCELEROMETER_ENABLED, isAccelerometerEnabled()),
                REQUEST_CODE_SETTINGS);
    }

    /**
     * Installs the listener for the buttons.
     */
    private void installButtonListeners() {
        ImageView levelsButton = (ImageView) findViewById(R.id.levelsButton);
        ImageView settingsButton = (ImageView) findViewById(R.id.settingsButton);

        levelsButton.setOnClickListener(new OnClickListener() {
            @Override
            public void onClick(View arg0) {
                showLevelsDialog();
            }
        });

        settingsButton.setOnClickListener(new OnClickListener() {
            @Override
            public void onClick(View arg0) {
                switchToSettings();
            }
        });
    }

    /**
     * Sets the device to not sleep or go to standby, and keeps the display
     * bright.
     */
    private void setDeviceNoSleep() {
        PowerManager pm = (PowerManager) getSystemService(Context.POWER_SERVICE);
        wakeLock = pm.newWakeLock(PowerManager.SCREEN_BRIGHT_WAKE_LOCK, "Xokoban");
        wakeLock.acquire();
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

    public boolean isFirstRun() {
        return firstRun;
    }

    public void setFirstRun(boolean firstRun) {
        this.firstRun = firstRun;
        Editor editor = prefs.edit();
        editor.putBoolean(PREFKEY_FIRSTRUN, firstRun);
        editor.commit();
    }
    
    @Override
    public boolean onKeyDown(int keyCode, KeyEvent event) {
        return inputController.onKeyDown(keyCode, event);
    }
    
    @Override
    public boolean onKeyUp(int keyCode, KeyEvent event) {
        return inputController.onKeyUp(keyCode, event);
    }
}