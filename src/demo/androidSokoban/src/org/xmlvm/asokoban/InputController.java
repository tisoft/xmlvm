package org.xmlvm.asokoban;

import android.hardware.SensorListener;
import android.os.Handler;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;

/**
 * This controller handles input coming from the various controllers.
 */
public class InputController implements SensorListener, OnTouchListener {
    /** Accelerometer threshold to start moving the man. */
    private static final float ACCELEROMETER_THRESHOLD = 1.7f;

    /** Swiping threshold to start moving the man. */
    private static final float SWIPE_THRESHOLD         = 20f;

    /** Helper class used to animate the man's movement. */
    private GamePieceMover     mover;

    /** The GameController associated with this InputController. */
    private GameController     controller;

    /** The GameView associated with this InputController. */
    private GameView           gameView;

    /** The X coordinate for the last touch button down event. */
    private float              lastDownX;
    /** The Y coordinate for the last touch button down event. */
    private float              lastDownY;
    /** The X coordinate for the last touch button up event. */
    private float              lastUpX;
    /** The Y coordinate for the last touch button up event. */
    private float              lastUpY;

    /** True, if the screen is currently touched. */
    private boolean            currentlyDown           = false;

    /** True if the last button down happened during the game. */
    private boolean            lastDownDuringGame      = false;

    /** A tap handler that is called when a tap event happened. */
    private SimpleTapHandler   tapHandler;

    private Handler            runnableHandler         = new Handler();

    public InputController(GamePieceMover mover, GameController controller, GameView view) {
        this.mover = mover;
        this.controller = controller;
        this.gameView = view;
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
        moveWithInput(x, y, ACCELEROMETER_THRESHOLD);
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
    public void moveWithInput(float x, float y, float threshold) {
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
            controller.moveMan(dx, dy);
        }
    }

    @Override
    public void onAccuracyChanged(int arg0, int arg1) {
        // Do nothing.
    }

    @Override
    public boolean onTouch(View v, MotionEvent event) {
        // See if we have a simple tap event that we can forward to a handle.
        if (event.getAction() == MotionEvent.ACTION_UP) {
            if ((Math.abs(lastDownX - event.getX()) <= SWIPE_THRESHOLD)
                    && (Math.abs(lastDownY - event.getY()) <= SWIPE_THRESHOLD)) {
                if (tapHandler != null) {
                    tapHandler.onTap(event.getX(), event.getY());
                }
                return true;
            }
            lastUpX = event.getX();
            lastUpY = event.getY();
            currentlyDown = false;
        } else if (event.getAction() == MotionEvent.ACTION_DOWN) {
            lastDownX = event.getX();
            lastDownY = event.getY();
            currentlyDown = true;
            lastDownDuringGame = !controller.isGamePaused();
        }

        if (event.getAction() == MotionEvent.ACTION_MOVE && lastDownDuringGame
                && !controller.isGamePaused()) {
            // Handle swipe to move the man
            if (Math.abs(event.getX() - lastDownX) > SWIPE_THRESHOLD
                    || Math.abs(event.getY() - lastDownY) > SWIPE_THRESHOLD) {
                moveWithInput(event.getX() - lastDownX, event.getY() - lastDownY, SWIPE_THRESHOLD);
            }
        }
        return true;
    }

    /**
     * Sets the handler that will be called when the user taps the screen.
     */
    public void setTapHandler(SimpleTapHandler handler) {
        tapHandler = handler;
    }
}
