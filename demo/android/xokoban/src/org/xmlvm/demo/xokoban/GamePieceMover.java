package org.xmlvm.demo.xokoban;


/**
 * This class is responsible for moving {@link GamePiece}s.
 */
public class GamePieceMover {
    private static final int    MAX_PIECES_MOVING = 2;
    private MovableGamePiece[]  gamePiecesToBeMoved;

    private MoveFinishedHandler moveFinishedHandler;

    public GamePieceMover() {
        gamePiecesToBeMoved = new MovableGamePiece[MAX_PIECES_MOVING];
        for (int i = 0; i < MAX_PIECES_MOVING; i++) {
            gamePiecesToBeMoved[i] = null;
        }
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

    /**
     * Sets a MoveFinishedHandler that will be called when a move has finished.
     * 
     * @param handler
     *            The handler is called when a move has been finished.
     */
    public void setMoveFinishedHandler(MoveFinishedHandler handler) {
        moveFinishedHandler = handler;
    }

    public void doNextAnimationStep() {
        int numPiecesDone = 0;
        for (int i = 0; i < MAX_PIECES_MOVING; i++) {
            if (gamePiecesToBeMoved[i] != null) {
                boolean done = gamePiecesToBeMoved[i].moveOneStep();
                if (done) {
                    gamePiecesToBeMoved[i] = null;
                    numPiecesDone++;
                }
            }
        }
        if (numPiecesDone > 0 && moveFinishedHandler != null) {
            moveFinishedHandler.onMoveFinished();
        }
    }
}
