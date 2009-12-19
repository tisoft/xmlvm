/*
 * Copyright (c) 2004-2009 XMLVM --- An XML-based Programming Language
 * 
 * This program is free software; you can redistribute it and/or modify it under
 * the terms of the GNU General Public License as published by the Free Software
 * Foundation; either version 2 of the License, or (at your option) any later
 * version.
 * 
 * This program is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
 * FOR A PARTICULAR PURPOSE. See the GNU General Public License for more
 * details.
 * 
 * You should have received a copy of the GNU General Public License along with
 * this program; if not, write to the Free Software Foundation, Inc., 675 Mass
 * Ave, Cambridge, MA 02139, USA.
 * 
 * For more information, visit the XMLVM Home Page at http://www.xmlvm.org
 */

package org.xmlvm.demo.xokoban;

import org.xmlvm.iphone.XMLVMNoAutoReleasePool;

/**
 * A MovableGamePiece is a special kind of {@link GamePiece} that can be moved
 * on the screen.
 */
@XMLVMNoAutoReleasePool
public class MovableGamePiece extends GamePiece {
    private int counter;
    private int dx;
    private int dy;
    
    private int animationFactor;

    private int px;
    private int py;

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
     */
    public void startMoving(int dx, int dy) {
        view.getMover().moveGamePiece(this);
        this.dx = dx;
        this.dy = dy;
        px = 0;
        py = 0;
        animationFactor = 2; // getTileSize() / 10;
        counter = getTileSize() / animationFactor;
    }

    /**
     * Moves the game piece on step in the direction given to
     * {@link #startMoving(int, int)}.
     * 
     * @return TODO
     */
    public boolean moveOneStep() {
        px += dx * animationFactor;
        py += dy * animationFactor;
        updatePosition(px, py);
        counter--;
        if (counter == 0) {
            x += dx;
            y += dy;
            return true;
        }
        return false;
    }
    
    public boolean isMoving() {
        return view.getMover().isMoving();
    }
}
