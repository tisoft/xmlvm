package org.xmlvm.demo.xokoban;

import java.util.ArrayList;
import java.util.List;

import android.os.Handler;

/**
 * A timer that fires recurring updates. Can be used to animate game tiles.
 */
public class UpdateTimer {
    /** The default update interval */
    public static int                DEFAULT_DELAY_IN_MILLIS = 70;

    private static UpdateTimer       instance                = null;

    private List<TimerUpdateHandler> handlers                = new ArrayList<TimerUpdateHandler>();
    private Handler                  updater                 = new Handler();
    private Runnable                 updateAnimation         = null;
    private boolean                  isRunning;

    /**
     * Returns a default instance that will updat every
     * {@link #DEFAULT_DELAY_IN_MILLIS} milliseconds.
     */
    public static UpdateTimer getInstance() {
        if (instance == null) {
            instance = new UpdateTimer();
        }
        return instance;
    }

    private UpdateTimer() {
        isRunning = false;
        updateAnimation = new Runnable() {
            public void run() {
                if (isRunning) {
                    updater.postDelayed(updateAnimation, DEFAULT_DELAY_IN_MILLIS);
                }
                for (TimerUpdateHandler handler : handlers) {
                    handler.onTimerUpdate();
                }
            }
        };
    }

    /**
     * Start the timer.
     */
    public void startTimer() {
        if (!isRunning) {
            isRunning = true;
            updater.postDelayed(updateAnimation, DEFAULT_DELAY_IN_MILLIS);
        }
    }

    /**
     * Stop the timer.
     */
    public void stopTimer() {
        isRunning = false;
    }

    /**
     * Adds a new handler that will be called on an update.
     * 
     * @param handler
     *            The handler to be added.
     */
    public void addTimerUpdateHandler(TimerUpdateHandler handler) {
        handlers.add(handler);
    }

    /**
     * Removes a handler from the list of handlers to update.
     * 
     * @param handler
     *            The handler to be removed.
     */
    public void removeTimerUpdateHandler(TimerUpdateHandler handler) {
        handlers.remove(handler);
    }
}
