package org.xmlvm.asokoban;

public class Ball extends MovableGamePiece {
    public Ball(GameView view, int x, int y) {
        super(view, R.drawable.ball, x, y);
        image.bringToFront();
    }
}
