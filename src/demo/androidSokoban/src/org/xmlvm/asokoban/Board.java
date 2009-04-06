
package org.xmlvm.asokoban;



public class Board
{

    public static final int     SPACE        = 0;
    public static final int     WALL         = 1;
    public static final int     BALL         = 2;
    public static final int     GOAL         = 3;
    public static final int     MAN          = 4;

    private static final int    BOARD_WIDTH  = 50;
    private static final int    BOARD_HEIGHT = 50;

    private CharField           _board       = null;
    private int                 _width       = 0;
    private int                 _height      = 0;



    public Board(int level)
    {
        _board = new CharField(BOARD_HEIGHT, BOARD_WIDTH);

        // Init with space
        for (int i = 0; i < BOARD_HEIGHT; i++) {
            for (int j = 0; j < BOARD_WIDTH; j++) {
                _board.setChar(i, j, ' ');
            }
        }

        parseDescription(Levels.getLevel(level));
    }



    public int getWidth()
    {
        return shouldRotate() ? _height : _width;
    }



    public int getHeight()
    {
        return shouldRotate() ? _width : _height;
    }



    public int getBoardPiece(int x, int y)
    {
        char c = shouldRotate() ? _board.getChar(x, y) : _board.getChar(y, x);
        return getPiece(c);
    }



    private void parseDescription(String boardDesc)
    {
        int x = 0;
        int y = 0;

        for (int i = 0; i < boardDesc.length(); i++) {
            if (boardDesc.charAt(i) != '\n') {
                _board.setChar(y, x, boardDesc.charAt(i));
                x++;
            }
            else {
                _width = x > _width ? x : _width;

                x = 0;
                y++;
            }
        }

        _height =  boardDesc.endsWith("\n") ? y : y +1;
    }



    private int getPiece(char c)
    {
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



    private boolean shouldRotate()
    {
        return _width > _height;
    }
}
