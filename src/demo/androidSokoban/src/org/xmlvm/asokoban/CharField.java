
package org.xmlvm.asokoban;


public class CharField
{

    private int    _width  = 0;
    private int    _height = 0;
    private char[] _buf    = null;



    public CharField(int height, int width)
    {
        _width = width;
        _height = height;
        _buf = new char[width * height];
    }



    public void setChar(int y, int x, char c)
    {
        _buf[calculateIndex(y, x)] = c;
    }



    public char getChar(int y, int x)
    {
        return _buf[calculateIndex(y, x)];
    }



    private int calculateIndex(int y, int x)
    {
        return y * _width + x;
    }



    public int getWidth()
    {
        return _width;
    }



    public int getHeight()
    {
        return _height;
    }
}
