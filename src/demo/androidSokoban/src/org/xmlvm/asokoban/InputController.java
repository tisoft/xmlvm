package org.xmlvm.asokoban;

import android.hardware.SensorListener;

/**
 * This controller handles input coming from the various controllers.
 */
public class InputController implements SensorListener {
    /** Threshold to start moving the man. */
    private static final float movingThreshold = 1.7f;
    
    private GamePieceMover mover;
    private GameController controller;
    
    public InputController(GamePieceMover mover, GameController controller) {
        this.mover = mover;
        this.controller = controller;
    }

    /**
     * Callback to process sensor events. Sensor events are used to move the
     * game's man. They are translated to either -1, 0 or 1 meaning a movement
     * to the left, no movement or to the right (up and down respectivly).
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
        mover.setMovingSpeed(x, y);
        if (mover.isMoving()) {
            return;
        }
        int dx = 0;
        int dy = 0;
        if (Math.abs(x) > Math.abs(y)) {
            if (x > movingThreshold)
                dx = 1;
            if (x < -movingThreshold)
                dx = -1;
        } else {
            if (y > movingThreshold)
                dy = 1;
            if (y < -movingThreshold)
                dy = -1;
        }
        if (Math.abs(dx) > 0 || Math.abs(dy) > 0) {
            controller.moveMan(dx, dy);
        }
    }

    @Override
    public void onAccuracyChanged(int arg0, int arg1) {
        
    }
}
