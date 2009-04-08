package org.xmlvm.asokoban;

public class CharField {

    private int    width  = 0;
    private int    height = 0;
    private char[] buf    = null;

    public CharField(int height, int width) {
        this.width = width;
        this.height = height;
        this.buf = new char[width * height];
    }

    public void setChar(int y, int x, char c) {
        buf[calculateIndex(y, x)] = c;
    }

    public char getChar(int y, int x) {
        return buf[calculateIndex(y, x)];
    }

    private int calculateIndex(int y, int x) {
        return y * width + x;
    }

    public int getWidth() {
        return width;
    }

    public int getHeight() {
        return height;
    }
}
