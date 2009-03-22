package org.xmlvm.asokoban;


public class Man
    extends MovableGamePiece
{
	public Man(GameView view, int x, int y) {
		super(view, R.drawable.man, x, y);
		image.bringToFront();
	}

}
