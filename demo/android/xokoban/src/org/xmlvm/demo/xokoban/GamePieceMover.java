package org.xmlvm.demo.xokoban;

import android.os.Handler;

/**
 * This class is responsible for moving {@link GamePiece}s.
 */
public class GamePieceMover implements TimerUpdateHandler {
    private static final int    MAX_PIECES_MOVING = 2;
    private MovableGamePiece[]  gamePiecesToBeMoved;
    private int                 animationDelay;

    private MoveFinishedHandler moveFinishedHandler;

    public GamePieceMover(UpdateTimer timer) {
        gamePiecesToBeMoved = new MovableGamePiece[MAX_PIECES_MOVING];
        for (int i = 0; i < MAX_PIECES_MOVING; i++) {
            gamePiecesToBeMoved[i] = null;
        }
        timer.addTimerUpdateHandler(this);
    }

    public synchronized void moveGamePiece(MovableGamePiece gamePiece) {
        for (int i = 0; i < MAX_PIECES_MOVING; i++) {
            if (gamePiecesToBeMoved[i] == null) {
                gamePiecesToBeMoved[i] = gamePiece;
                break;
            }
        }
    }

    public synchronized boolean isMoving() {
        return gamePiecesToBeMoved[0] != null || gamePiecesToBeMoved[1] != null;
    }

    public void setMovingSpeed(float x, float y) {
        x = Math.abs(x);
        y = Math.abs(y);
        float max = Math.max(x, y);
        int newAnimationDelay = (int) (70 - 8 * max);
        if (newAnimationDelay < 5)
            newAnimationDelay = 5;
        animationDelay = newAnimationDelay;
    }

    /**
     * Sets a MoveFinishedHandler that will be called when a move has finished.
     * 
     * @param handler
     *            The handler is called when a move has been finished.
     */
    public void setMoveFinishedHandler(MoveFinishedHandler handler) {
        moveFinishedHandler = handler;
    }

    @Override
    public void onTimerUpdate() {
        boolean moveFinished = false;
        for (int i = 0; i < MAX_PIECES_MOVING; i++) {
            if (gamePiecesToBeMoved[i] != null) {
                boolean done = gamePiecesToBeMoved[i].moveOneStep();
                if (done) {
                    gamePiecesToBeMoved[i] = null;
                    // Only report that the move has finished, if we
                    // didn't do this already.
                    if (!moveFinished && moveFinishedHandler != null) {
                        moveFinished = true;
                        moveFinishedHandler.onMoveFinished();
                    }
                }
            }
        }
    }
}
