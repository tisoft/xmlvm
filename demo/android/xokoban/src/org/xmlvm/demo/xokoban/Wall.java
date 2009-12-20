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
 * A Wall is a simple {@link GamePiece} that is used as a boundary for moving
 * game pieces, that are not able to movie through walls.
 */
public class Wall extends GamePiece {
    public Wall(GameView view, int tileSize, int x, int y) {
        super(view, getResourceId(tileSize), tileSize, x, y, false);
    }

    private static int getResourceId(int tileSize) {
        if (tileSize == 20) {
            return R.drawable.wall_20;
        } else if (tileSize == 30) {
            return R.drawable.wall_30;
        } else {
            return R.drawable.wall_100;
        }
    }
}
