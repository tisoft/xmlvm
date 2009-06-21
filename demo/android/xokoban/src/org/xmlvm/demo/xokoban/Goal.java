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
        switch (tileSize) {
        case 20:
            return R.drawable.goal_20;
        case 30:
            return R.drawable.goal_30;
        default:
            return R.drawable.goal_20;
        }
    }
}
