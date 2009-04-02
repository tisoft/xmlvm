package org.xmlvm.asokoban;

public class MovableGamePiece extends GamePiece {

	private int counter;
	private int dx;
	private int dy;

	protected MovableGamePiece(GameView view, int resourceID, int x, int y) {
		super(view, resourceID, x, y);
	}

	public void startMoving(int dx, int dy) {
		view.getMover().moveGamePiece(this);
		this.dx = dx;
		this.dy = dy;
		px = 0;
		py = 0;
		counter = pieceWidth / 2;
	}

	public boolean moveOnePixel() {
		px += dx * 2;
		py += dy * 2;
		updatePosition();
		counter--;
		if (counter == 0) {
			x += dx;
			y += dy;
			return true;
		}
		return false;
	}
}
