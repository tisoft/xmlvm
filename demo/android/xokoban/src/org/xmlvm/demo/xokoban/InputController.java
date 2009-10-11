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

package org.xmlvm.demo.xokoban;

import android.hardware.SensorListener;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;

/**
 * This controller handles input coming from the various controllers.
 */
public class InputController implements SensorListener, OnTouchListener {
    /** Accelerometer threshold to start moving the man. */
    private static final float ACCELEROMETER_THRESHOLD = 2.0f;

    /** Swiping threshold to start moving the man. */
    private static final float SWIPE_THRESHOLD         = 30f;

    /** The GameController associated with this InputController. */
    private GameController     controller              = null;

    /** The X coordinate for the last move event. */
    private float              lastMoveX;
    
    /** The Y coordinate for the last move event. */
    private float              lastMoveY;
    
    /** The X coordinate for the last touch button down event. */
    private float              lastStartX;
    
    /** The Y coordinate for the last touch button down event. */
    private float              lastStartY;

    /** True if the current action down/action up sequence could be a tap. */
    private boolean couldBeTap;
    
    public InputController(GameController controller) {
        this.controller = controller;
    }

    /**
     * Callback to process sensor events. Sensor events are used to move the
     * game's man. They are translated to either -1, 0 or 1 meaning a movement
     * to the left, no movement or to the right (up and down respectively).
     * 
     * @param sensor
     *            Indicates which sensor generated the event.
     * @param values
     *            The values retrieved from the sensor. To determine the man's
     *            movement the first two values (x and y) are used.
     */
    public void onSensorChanged(int sensor, float[] values) {
        // No need to process updates when the game is paused.
        if (controller.isGamePaused()) {
            return;
        }

        float x = values[0];
        float y = -values[1];
        controller.setMovingSpeed(x, y);
        if (!moveWithInput(x, y, ACCELEROMETER_THRESHOLD)) {
            controller.scheduleStopMan();
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
    public boolean moveWithInput(float x, float y, float threshold) {
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
            controller.scheduleMoveMan(dx, dy);
            return true;
        }
        return false;
    }

    @Override
    public void onAccuracyChanged(int arg0, int arg1) {
        // Do nothing.
    }

    @Override
    public boolean onTouch(View v, MotionEvent event) {
        if (event.getAction() == MotionEvent.ACTION_DOWN) {
            couldBeTap = true;
            lastStartX = event.getX();
            lastStartY = event.getY();
        } else if (event.getAction() == MotionEvent.ACTION_UP) {
            controller.scheduleStopMan();
            if (couldBeTap) {
                controller.onTap(event.getX(), event.getY());
            }
        } else if (event.getAction() == MotionEvent.ACTION_MOVE) {
            lastMoveX = event.getX();
            lastMoveY = event.getY();
            if (moveWithInput(lastMoveX - lastStartX, lastMoveY - lastStartY, SWIPE_THRESHOLD)) {
                couldBeTap = false;
                lastStartX = lastMoveX;
                lastStartY = lastMoveY;
            }
        }
        return true;
    }
}
