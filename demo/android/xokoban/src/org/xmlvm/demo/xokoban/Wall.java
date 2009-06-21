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
        switch (tileSize) {
        case 20:
            return R.drawable.wall_20;
        case 30:
            return R.drawable.wall_30;
        default:
            return R.drawable.wall_20;
        }
    }
}
