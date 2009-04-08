package org.xmlvm.asokoban;

public class GamePieceList {

    private static int  MAX_SIZE = 255;

    private int         _size    = 0;
    private GamePiece[] _buf     = null;

    public GamePieceList() {
        _buf = new GamePiece[MAX_SIZE];
    }

    public void add(GamePiece piece) {
        if (_size < MAX_SIZE) {
            _buf[_size++] = piece;
        }
    }

    public GamePiece get(int i) {
        return i < _size ? _buf[i] : null;
    }

    public int size() {
        return _size;
    }
}
