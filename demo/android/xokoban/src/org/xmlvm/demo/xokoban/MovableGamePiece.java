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
 * A MovableGamePiece is a special kind of {@link GamePiece} that can be moved
 * on the screen.
 */
public class MovableGamePiece extends GamePiece {
    /**
     * How long it should normally take, in seconds, to move one tile
     */
    private static final float DURATION_PER_TILE = 0.4f;
    
    /**
     * Counts down time, in seconds, to continue moving
     */
    private float counter;
    private int dx;
    private int dy;
    
    private float animationFactor;

    private float px;
    private float py;

    protected MovableGamePiece(GameView view, int resourceID, int tileSize, int x, int y) {
        super(view, resourceID, tileSize ,x, y, true);
    }

    /**
     * Initiates a movement in the given direction.
     * 
     * @param dx
     *            How many pixels to move horizontally.
     * @param dy
     *            How many pixels to move vertically.
     * @param speed
     *            The speed factor at which to move the 
     *            piece. 1.0 is normal speed; 2.0 is double speed; etc.
     */
    public void startMoving(int dx, int dy, float speed) {
        view.getMover().moveGamePiece(this);
        this.dx = dx;
        this.dy = dy;
        px = 0;
        py = 0;
        counter =  DURATION_PER_TILE / speed;
        animationFactor = (float) getTileSize() / counter;        
    }

    /**
     * Moves the game piece on step in the direction given to
     * {@link #startMoving(int, int)}.
     * 
     * @param duration the time, in seconds, since the last animation
     * @return TODO
     */
    public boolean moveOneStep(float duration) {
        px += dx * animationFactor * duration;
        py += dy * animationFactor * duration;
        updatePosition((int)px, (int)py);
        counter -= duration;
        if (counter <= 0) {
            counter = 0;
            x += dx;
            y += dy;
            updatePosition();
            return true;
        }
        return false;
    }
    
    public boolean isMoving() {
        return view.getMover().isMoving();
    }
}
