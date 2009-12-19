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

/**
 * A Goal is a special {@link GamePiece} where all the {@link Ball}s have to be
 * pushed in order to win the game.
 */
public class Goal extends GamePiece {
    public Goal(GameView view, int tileSize, int x, int y) {
        super(view, getResourceId(tileSize), tileSize, x, y, false);
    }

    private static int getResourceId(int tileSize) {
        if (tileSize <= SIZE_THRESHOLD_SD) {
            return R.drawable.goal_20;
        } else if (tileSize <= SIZE_THRESHOLD_HD) {
            return R.drawable.goal_30;
        } else {
            return R.drawable.goal_100;
        }
    }
}
