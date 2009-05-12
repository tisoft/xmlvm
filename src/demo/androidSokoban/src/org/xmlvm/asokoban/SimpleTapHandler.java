package org.xmlvm.asokoban;

/**
 * Simple listener that can be called when the screen was tapped.
 */
public interface SimpleTapHandler {
    /**
     * Called when the screen was tapped.
     * 
     * @param x
     *            The x-coordinate of the tap event.
     * @param y
     *            The y-coordinate of the tap event.
     */
    public void onTap(float x, float y);
}
