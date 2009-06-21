package org.xmlvm.demo.xokoban;

/**
 * A floor is painted inside the levels. Everywhere, the {@link Man} can go.
 */
public class Floor extends GamePiece {
    public Floor(GameView view, int x, int y) {
        super(view, R.drawable.floor_20, x, y, false);
    }
}
