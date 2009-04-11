package org.xmlvm.asokoban;

import android.util.Log;

/**
 * A CharField represents a string-encoded board.
 */
public class CharField {
    /**
     * The character used to initialize a field in the CharField.
     */
    public static final char EMPTY_CHAR  = ' ';

    private int              width       = 0;
    private int              height      = 0;
    private int              boardWidth  = 0;
    private int              boardHeight = 0;
    private char[]           buf         = null;

    /**
     * Initializes a new CharField with the given dimensions.
     * 
     * @param boardDesc
     *            The string-encoded level.
     * @param height
     *            The height of the field (in tiles).
     * @param width
     *            The width of the field (in tiles).
     */
    public CharField(String boardDesc, int height, int width) {
        this.width = width;
        this.height = height;
        this.buf = new char[width * height];
        // Initialize with spaces.
        for (int i = 0; i < height; i++) {
            for (int j = 0; j < width; j++) {
                setChar(i, j, EMPTY_CHAR);
            }
        }
        parseDescription(boardDesc);
    }

    /**
     * Parses the string representation of the the game board.
     * 
     * @param boardDesc
     *            The string-representation of the level.
     */
    private void parseDescription(String boardDesc) {
        int x = 0;
        int y = 0;
        for (int i = 0; i < boardDesc.length(); i++) {
            if (boardDesc.charAt(i) != '\n') {
                setChar(y, x, boardDesc.charAt(i));
                x++;
            } else {
                boardWidth = x > boardWidth ? x : boardWidth;

                x = 0;
                y++;
            }
        }
        boardHeight = boardDesc.endsWith("\n") ? y : y + 1;
    }

    /**
     * Sets a character in the string representation of the field.
     * 
     * @param y
     *            The y-position of the character to set.
     * @param x
     *            The x-position of the character to set.
     * @param c
     *            The character to set.
     */
    public void setChar(int y, int x, char c) {
        buf[calculateIndex(y, x)] = c;
    }

    /**
     * Returns the character from within the string representation of the field
     * at the given position.
     * 
     * @param y
     *            The y-position of the character to get.
     * @param x
     *            The x-position of the character to get.
     * @return The character.
     */
    public char getChar(int y, int x) {
        Log.d("GETCHAR", "X:" + x + "  Y:" + y);
        return buf[calculateIndex(y, x)];
    }

    /**
     * Calculates the index in the string representation for the given 2D
     * coordinate.
     * 
     */
    private int calculateIndex(int y, int x) {
        return y * width + x;
    }

    /**
     * Returns the width of the field.
     */
    public int getWidth() {
        return width;
    }

    /**
     * Returns the height of the field.
     */
    public int getHeight() {
        return height;
    }

    /**
     * Returns the width of the board.
     */
    public int getBoardWidth() {
        return boardWidth;
    }

    /**
     * Returns the height of the board.
     */
    public int getBoardHeight() {
        return boardHeight;
    }
}
