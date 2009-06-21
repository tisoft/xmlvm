package org.xmlvm.demo.xokoban;

/**
 * A floor is painted inside the levels. Everywhere, the {@link Man} can go.
 */
public class Floor extends GamePiece {
    public Floor(GameView view, int tileSize, int x, int y) {
        super(view, getResourceId(tileSize), tileSize, x, y, false);
    }

    private static int getResourceId(int tileSize) {
        switch (tileSize) {
        case 20:
            return R.drawable.floor_20;
        case 30:
            return R.drawable.floor_30;
        default:
            return R.drawable.floor_20;
        }
    }
}
