package org.xmlvm.demo.xokoban;

/**
 * A Goal is a special {@link GamePiece} where all the {@link Ball}s have to be
 * pushed in order to win the game.
 */
public class Goal extends GamePiece {
    public Goal(GameView view, int x, int y) {
        super(view, R.drawable.goal_20, x, y, false);
    }
}
