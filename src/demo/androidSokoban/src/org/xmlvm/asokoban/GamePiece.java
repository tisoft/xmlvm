package org.xmlvm.asokoban;

import android.widget.AbsoluteLayout;
import android.widget.ImageView;

/**
 * A GamePiece represents the base class for a single tile in the game.
 */
public abstract class GamePiece {
    /**
     * The size of the square piece in pixels.
     */
    protected static int tileSize = 20;
    /**
     * The x-coordinate of the GamePiece.
     */
    protected int        x;
    /**
     * The y-coordinate of the GamePiece.
     */
    protected int        y;
    /**
     * The {@link GameView} use for the current game.
     */
    protected GameView   view;
    /**
     * The {@link ImageView} used to draw the GamePiece.
     */
    protected ImageView  image;

    /**
     * Instantiates a GamePiece object.
     * 
     * @param view
     *            The GameView used in the current game.
     * @param resourceID
     *            The image resource ID to be used for drawing this GamePiece.
     * @param x
     *            The x-coordinate to draw this GamePiece.
     * @param y
     *            The y-coordinate to draw this GamePiece.
     */
    public GamePiece(GameView view, int resourceID, int x, int y) {
        this.view = view;
        this.x = x;
        this.y = y;
        image = new ImageView(view.getActivity());
        view.getLayout().addView(image, 1);
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
}
