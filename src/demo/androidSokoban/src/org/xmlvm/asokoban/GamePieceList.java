package org.xmlvm.asokoban;

public class GamePieceList {

    private static int  MAX_SIZE = 255;

    private int         size    = 0;
    private GamePiece[] buf     = null;

    public GamePieceList() {
        buf = new GamePiece[MAX_SIZE];
    }

    public void add(GamePiece piece) {
        if (size < MAX_SIZE) {
            buf[size++] = piece;
        }
    }

    public GamePiece get(int i) {
        return i < size ? buf[i] : null;
    }

    public int size() {
        return size;
    }
}
