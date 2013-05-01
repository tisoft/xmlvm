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

package org.xmlvm.demo.xokoban;

import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.view.Display;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.Surface;
import android.view.View;
import android.view.View.OnTouchListener;

/**
 * This controller handles input coming from the various controllers.
 */
public class InputController implements SensorEventListener, OnTouchListener {
    private static class SensorData {
        public final float x;
        public final float y;


        public SensorData(float x, float y) {
            this.x = x;
            this.y = y;
        }
    }


    /** Tag used for logging. */
    private static final String TAG                     = InputController.class.getSimpleName();

    /** Accelerometer threshold to start moving the man. */
    private static final float  ACCELEROMETER_THRESHOLD = 2.0f;
    
    /** Speed at which to move when triggered by accelerometer. */
    private static final float  ACCELEROMETER_SPEED = 0.75f;

    /** Swiping threshold to start moving the man. */
    private static final float  SWIPE_THRESHOLD         = 30f;
    
    /** Speed at which to move when triggered by swipe. */
    private static final float  SWIPE_SPEED         = 1.0f;
    
    /** Speed at which to move when triggered by tap. */
    private static final float  TAP_SPEED           = 3f;

    /** The GameController associated with this InputController. */
    private GameController      controller              = null;

    /** The current Display instance, used for proper rotation mapping. */
    private Display             display                 = null;

    /** The X coordinate for the last move event. */
    private float               lastMoveX;

    /** The Y coordinate for the last move event. */
    private float               lastMoveY;

    /** The X coordinate for the last touch button down event. */
    private float               lastStartX;

    /** The Y coordinate for the last touch button down event. */
    private float               lastStartY;

    /** Whether the finger is currently down on the touch screen. */
    private boolean             isFingerDown            = false;

    /** Whether a move is currently in progress (used to distinguish taps) */
    private boolean             isMoveStarted           = false;


    public InputController(GameController controller, Display display) {
        this.controller = controller;
        this.display = display;
    }

    @Override
    public void onSensorChanged(SensorEvent event) {
        // No need to process updates when the game is paused.
        if (controller.isGamePaused() || isFingerDown) {
            return;
        }

        if (event.sensor.getType() == Sensor.TYPE_ACCELEROMETER) {
            SensorData data = new SensorData(-event.values[0], event.values[1]);
            data = mapToScreenCoordinates(data);
            controller.setMovingSpeed(data.x, data.y);
            if (!moveWithInput(data.x, data.y, ACCELEROMETER_THRESHOLD, ACCELEROMETER_SPEED)) {
                controller.scheduleStopMan();
            }
        }
    }

    /**
     * Depending on a movement input, this method will move the man.
     * 
     * @param x
     *            The change of movement in X direction.
     * @param y
     *            The change of movement in Y direction.
     * @param threshold
     *            The threshold that has to be exceeded in order for a move to
     *            trigger.
     */
    public boolean moveWithInput(float x, float y, float threshold, float speed) {
        if (controller.isGamePaused()) {
            return false;
        }
        int dx = 0;
        int dy = 0;
        if (Math.abs(x) > Math.abs(y)) {
            if (x > threshold)
                dx = 1;
            if (x < -threshold)
                dx = -1;
        } else {
            if (y > threshold)
                dy = 1;
            if (y < -threshold)
                dy = -1;
        }
        if (Math.abs(dx) > 0 || Math.abs(dy) > 0) {
            controller.scheduleMoveMan(dx, dy, speed);
            return true;
        }
        return false;
    }

    @Override
    public boolean onTouch(View v, MotionEvent event) {
        if (event.getAction() == MotionEvent.ACTION_DOWN) {
            isFingerDown = true;
            lastStartX = event.getX();
            lastStartY = event.getY();
        } else if (event.getAction() == MotionEvent.ACTION_UP) {
            if (isMoveStarted) {
                controller.scheduleStopMan();
            } else {
                controller.scheduleMoveManTo((int) event.getX(), (int) event.getY(), TAP_SPEED);
            }
            isFingerDown = false;
            isMoveStarted = false;
        } else if (event.getAction() == MotionEvent.ACTION_MOVE) {
            lastMoveX = event.getX();
            lastMoveY = event.getY();
            if (moveWithInput(lastMoveX - lastStartX, lastMoveY - lastStartY, 
                    SWIPE_THRESHOLD, SWIPE_SPEED)) {
                isMoveStarted = true;
                lastStartX = lastMoveX;
                lastStartY = lastMoveY;
            }
        }
        return true;
    }

    @Override
    public void onAccuracyChanged(Sensor arg0, int arg1) {
        // Do nothing.
    }

    /**
     * With the new Sensor API, Android made a change in the data returned:
     * Depending on the default way you hold a device, the coordinates might be
     * swapped. This method makes sure that the sensor data is mapped to the
     * coordinate system of the current game screen.
     */
    private SensorData mapToScreenCoordinates(SensorData data) {
        switch (display.getRotation()) {
        case Surface.ROTATION_90:
            return new SensorData(data.y, -data.x);
        case Surface.ROTATION_180:
            return new SensorData(-data.x, -data.y);
        case Surface.ROTATION_270:
            return new SensorData(-data.y, data.x);
        case Surface.ROTATION_0:
        default:
            return new SensorData(data.x, data.y);
        }
    }

    /**
     * Called from the activity when a key down event is received.
     */
    public boolean onKeyDown(int keyCode, KeyEvent event) {
        if (keyCode == KeyEvent.KEYCODE_DPAD_DOWN) {
            controller.scheduleMoveMan(0, 1);
            controller.scheduleStopMan();
            return true;
        } else if (keyCode == KeyEvent.KEYCODE_DPAD_UP) {
            controller.scheduleMoveMan(0, -1);
            controller.scheduleStopMan();
            return true;
        } else if (keyCode == KeyEvent.KEYCODE_DPAD_LEFT) {
            controller.scheduleMoveMan(-1, 0);
            controller.scheduleStopMan();
            return true;
        } else if (keyCode == KeyEvent.KEYCODE_DPAD_RIGHT) {
            controller.scheduleMoveMan(1, 0);
            controller.scheduleStopMan();
            return true;
        }
        return false;
    }

    /**
     * Called from the activity when a key up event is received.
     */
    public boolean onKeyUp(int keyCode, KeyEvent event) {
        if (keyCode == KeyEvent.KEYCODE_DPAD_DOWN || keyCode == KeyEvent.KEYCODE_DPAD_LEFT
                || keyCode == KeyEvent.KEYCODE_DPAD_UP || keyCode == KeyEvent.KEYCODE_DPAD_RIGHT) {
            controller.scheduleStopMan();
            return true;
        }
        return false;
    }
}
