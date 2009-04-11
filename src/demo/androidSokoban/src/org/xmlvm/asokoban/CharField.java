package org.xmlvm.asokoban;

/**
 * A CharField represents a string-encoded board.
 */
public class CharField {

    private int    width  = 0;
    private int    height = 0;
    private char[] buf    = null;

    /**
     * Initializes a new CharField with the given dimensions.
     * 
     * @param height
     *            The height of the field (in tiles).
     * @param width
     *            The width of the field (in tiles).
     */
    public CharField(int height, int width) {
        this.width = width;
        this.height = height;
        this.buf = new char[width * height];
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
}
