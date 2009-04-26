package org.xmlvm.asokoban;

/**
 * Classes implementing this interface will be able to be called when a move is
 * finished.
 */
public interface MoveFinishedHandler {
    /**
     * This method is called when game move has finished.
     */
    public void onMoveFinished();
}
