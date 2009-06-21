package org.xmlvm.demo.xokoban;

import org.xmlvm.iphone.XMLVMNoAutoReleasePool;

import android.widget.AbsoluteLayout;
import android.widget.ImageView;

/**
 * A GamePiece represents the base class for a single tile in the game.
 */
@XMLVMNoAutoReleasePool
public abstract class GamePiece {

    /**
     * Simple class for describing a position.
     */
    static class Position {
        private int x;
        private int y;

        public Position(int x, int y) {
            this.x = x;
            this.y = y;
        }

        public int getX() {
            return x;
        }

        public int getY() {
            return y;
        }

        @Override
        public boolean equals(Object o) {
            Position other = (Position) o;
            return other.x == x && other.y == y;
        }
    }

    /**
     * The size of the square piece in pixels.
     */
    private int         tileSize;
    /**
     * The x-coordinate of the GamePiece.
     */
    protected int       x;
    /**
     * The y-coordinate of the GamePiece.
     */
    protected int       y;
    /**
     * The {@link GameView} use for the current game.
     */
    protected GameView  view;
    /**
     * The {@link ImageView} used to draw the GamePiece.
     */
    protected ImageView image;

    /**
     * Instantiates a GamePiece object.
     * 
     * @param view
     *            The GameView used in the current game.
     * @param resourceID
     *            The image resource ID to be used for drawing this GamePiece.
     * @param tileSize
     *            The tile size of this game piece.
     * @param x
     *            The x-coordinate to draw this GamePiece.
     * @param y
     *            The y-coordinate to draw this GamePiece.
     */
    public GamePiece(GameView view, int resourceID, int tileSize, int x, int y, boolean addToFront) {
        this.view = view;
        this.x = x;
        this.y = y;
        this.tileSize = tileSize;
        image = new ImageView(view.getActivity());
        if (addToFront) {
            view.getLayout().addView(image);
        } else {
            view.getLayout().addView(image, 0);
        }
        image.setImageResource(resourceID);
        updatePosition();
    }

    /**
     * Updates the position of this GamePiece with the current location.
     */
    protected void updatePosition() {
        updatePosition(0, 0);
    }

    /**
     * Update the position of this GamePiece with the current location plus the
     * difference given.
     * 
     * @param px
     *            Adds to the x-position of the GamePiece.
     * @param py
     *            Adds to the y-position of the GamePiece.
     */
    protected void updatePosition(int px, int py) {
        AbsoluteLayout.LayoutParams p = new AbsoluteLayout.LayoutParams(
                AbsoluteLayout.LayoutParams.WRAP_CONTENT, AbsoluteLayout.LayoutParams.WRAP_CONTENT,
                view.getOffsetLeft() + x * tileSize + px, view.getOffsetTop() + y * tileSize + py);
        image.setLayoutParams(p);
        view.getLayout().invalidate();
    }

    /**
     * Returns the x-coordinate of the GamePiece.
     */
    public int getX() {
        return this.x;
    }

    /**
     * Returns the y-coordinate of the GamePiece.
     */
    public int getY() {
        return this.y;
    }

    /**
     * Returns the size of this tile.
     * 
     * @return
     */
    public int getTileSize() {
        return tileSize;
    }
}
