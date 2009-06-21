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
