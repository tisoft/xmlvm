package org.xmlvm.demo.xokoban;

/**
 * A Wall is a simple {@link GamePiece} that is used as a boundary for moving
 * game pieces, that are not able to movie through walls.
 */
public class Wall extends GamePiece {
    public Wall(GameView view, int x, int y) {
        super(view, R.drawable.wall_20, x, y, false);
    }
}
