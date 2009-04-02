package org.xmlvm.asokoban;

import android.widget.AbsoluteLayout;
import android.widget.ImageView;

public abstract class GamePiece {

	protected static int pieceHeight = 20;
	protected static int pieceWidth = 20;

	protected int x;
	protected int y;

	protected int px;
	protected int py;

	protected GameView view;
	protected ImageView image;

	public GamePiece(GameView view, int resourceID, int x, int y) {
		this.view = view;
		this.x = x;
		this.y = y;
		this.px = 0;
		this.py = 0;
		image = new ImageView(view.getActivity());
		view.getLayout().addView(image, 0);
		image.setImageResource(resourceID);
		updatePosition();
	}

	protected void updatePosition() {
		AbsoluteLayout.LayoutParams p = new AbsoluteLayout.LayoutParams(
				AbsoluteLayout.LayoutParams.WRAP_CONTENT,
				AbsoluteLayout.LayoutParams.WRAP_CONTENT, view.getOffsetLeft()
						+ x * pieceWidth + px, view.getOffsetTop() + y
						* pieceHeight + py);
		image.setLayoutParams(p);
		view.getLayout().invalidate();
	}

	public int getX() {
		return this.x;
	}

	public int getY() {
		return this.y;
	}
}
