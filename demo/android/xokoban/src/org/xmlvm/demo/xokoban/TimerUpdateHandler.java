package org.xmlvm.demo.xokoban;

/**
 * Classes implementing this interface can be registered to receive timer
 * updates.
 */
public interface TimerUpdateHandler {
    /**
     * Handles timer updates.
     */
    public void onTimerUpdate();
}
