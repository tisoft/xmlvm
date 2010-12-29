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
