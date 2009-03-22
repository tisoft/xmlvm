package org.xmlvm.asokoban;

import android.os.Handler;

public class MovableGamePiece extends GamePiece {

	private int counter;
	private int dx;
	private int dy;

	private Handler updater = new Handler();
	private Runnable updateAnimation = new Runnable() {
		public void run() {
			px += dx;
			py += dy;
			updatePosition();
			if (counter-- != 0)
				updater.postDelayed(updateAnimation, 50);
			else {
				x += dx;
				y += dy;
				view.setMoving(false);
			}
		}
	};

	protected MovableGamePiece(GameView view, int resourceID, int x, int y) {
		super(view, resourceID, x, y);
	}

	public void move(int dx, int dy) {
		view.setMoving(true);
		this.dx = dx;
		this.dy = dy;
		px = 0;
		py = 0;
		counter = pieceWidth;
		updater.postDelayed(updateAnimation, 50);
	}
}
