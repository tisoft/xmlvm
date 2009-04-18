package org.xmlvm.asokoban;

import org.xmlvm.asokoban.GamePiece.Position;

import java.util.ArrayList;
import java.util.List;

/**
 * A Boards represents a logical Sokoban level. It uses a {@link CharField} in
 * order to get the information about a level from an encoded String.
 */
public class Board {
    /**
     * An empty game tile.
     */
    public static final int SPACE        = 0;
    /**
     * A wall section, where the man can not go through.
     */
    public static final int WALL         = 1;
    /**
     * A ball, which has to be pushed by the man.
     */
    public static final int BALL         = 2;
    /**
     * A goal onto which a ball must be placed
     */
    public static final int GOAL         = 3;
    /**
     * The man is controlled by the user to push the balls into the goals.
     */
    public static final int MAN          = 4;
    /**
     * The width of every board.
     */
    public static final int BOARD_WIDTH  = 50;
    /**
     * The height of every board.
     */
    public static final int BOARD_HEIGHT = 50;

    private CharField       charField    = null;
    private int             width        = 0;
    private int             height       = 0;
    /**
     * Used to store the calculated floor tiles.
     */
    private List<Position>  floorTiles   = new ArrayList<Position>();

    /**
     * Initializes a board with the given level.
     * 
     * @param charField
     *            The CharField that is the source for this board.
     */
    public Board(CharField charField) {
        this.charField = charField;
        width = charField.getBoardWidth();
        height = charField.getBoardHeight();
        generateFloorTiles();
    }

    /**
     * Returns the width (number of tiles) of the current board.
     */
    public int getWidth() {
        return shouldRotate() ? height : width;
    }

    /**
     * Returns the height (number of tiles) of the current board.
     */
    public int getHeight() {
        return shouldRotate() ? width : height;
    }

    /**
     * Returns the game piece at the given position.
     * 
     * @param x
     *            Coordinate of the requested game piece.
     * @param y
     *            Coordinate of the requested game piece.
     * @return The code for the requested game piece.
     */
    public int getBoardPiece(int x, int y) {
        if (shouldRotate()) {
            int t = x;
            x = y;
            y = x;
        }
        char c = charField.getChar(height - y - 1, x);
        return getPiece(c);
    }

    /**
     * For a given character in the game piece, return the type id of the
     * represented tile.
     * 
     * @param c
     *            The character used to encode the game piece.
     * @return The game piece ID of the given code.
     */
    private static int getPiece(char c) {
        switch (c) {
        case ' ':
            return SPACE;

        case '#':
            return WALL;

        case '$':
            return BALL;

        case '.':
            return GOAL;

        case '@':
            return MAN;

        default:
            return SPACE;
        }
    }

    public boolean isFloor(int x, int y) {
        return floorTiles.contains(new Position(x, y));
    }

    /**
     * Returns whether the board should be rotated.
     */
    private boolean shouldRotate() {
        return height > width;
    }

    /**
     * Generates the floor tiles, on which the man can walk. These are only
     * placed inside the level.
     */
    private void generateFloorTiles() {
        for (int x = 0; x < getWidth(); ++x) {
            int minWall = 0;
            int maxWall = 0;
            boolean firstFound = false;
            // First figure out for this column, where the first and where the
            // last wall tile is.
            for (int y = 0; y < getHeight(); ++y) {
                if (getBoardPiece(x, y) == WALL) {
                    if (!firstFound) {
                        minWall = y;
                        firstFound = true;
                    } else {
                        maxWall = y;
                    }
                }
            }
            // Next we put the tiles in place.
            for (int y = minWall + 1; y < maxWall; ++y) {
                if (getBoardPiece(x, y) != WALL) {
                    floorTiles.add(new Position(x, y));
                }
            }
        }
    }
}
