package org.xmlvm.demo.xokoban;

/**
 * A ball is a sub-class of {@link MovableGamePiece} that represents the piece
 * to be pushed by the man.
 */
public class Ball extends MovableGamePiece {
    public Ball(GameView view, int tileSize, int x, int y) {
        super(view, getResourceId(tileSize), tileSize, x, y);
    }
    
    private static int getResourceId(int tileSize) {
        switch (tileSize) {
        case 20:
            return R.drawable.ball_20;
        case 30:
            return R.drawable.ball_30;
        default:
            return R.drawable.ball_20;
        }
    }
}
