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
 * A Man is special subclass of {@link MovableGamePiece} that represents the
 * character that is moved across the screen by the player.
 */
public class Man extends MovableGamePiece {
    public Man(GameView view, int tileSize, int x, int y) {
        super(view, getResourceId(tileSize), tileSize, x, y);
    }

    private static int getResourceId(int tileSize) {
        switch (tileSize) {
        case 20:
            return R.drawable.man_20;
        case 30:
            return R.drawable.man_30;
        default:
            return R.drawable.man_20;
        }
    }
}
