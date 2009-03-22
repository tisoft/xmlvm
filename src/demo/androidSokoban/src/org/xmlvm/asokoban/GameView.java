package org.xmlvm.asokoban;

import android.app.Activity;
import android.view.Display;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.AbsoluteLayout;

public class GameView {

	private Activity activity;
	private ViewGroup layout;
	private GameController gameController;
	private Board board;
	private int moving;
	private int pieceWidth;
	private int pieceHeight;
	private int displayWidth;
	private int displayHeight;
	private int offsetTop;
	private int offsetLeft;

	public GameView(Activity activity, int level) {
		this.activity = activity;
		layout = new AbsoluteLayout(activity);
		activity.setContentView(layout);
		moving = 0;
		pieceWidth = 20;// piece.getWidth();
		pieceHeight = 20;// piece.getHeight();
		WindowManager w = activity.getWindowManager();
		Display d = w.getDefaultDisplay();
		displayWidth = d.getWidth();
		displayHeight = d.getHeight();
		board = new Board(level);
		gameController = new GameController(board);
		loadGame(level);
	}

	public GameController getGameController() {
		return this.gameController;
	}

	public Activity getActivity() {
		return this.activity;
	}

	public ViewGroup getLayout() {
		return this.layout;
	}

	public int getOffsetLeft() {
		return this.offsetLeft;
	}

	public int getOffsetTop() {
		return this.offsetTop;
	}

	public synchronized void setMoving(boolean isMoving) {
		if (isMoving)
			this.moving++;
		else
			this.moving--;
	}

	public synchronized boolean isMoving() {
		return this.moving != 0;
	}

	private void loadGame(int level) {
		int width = board.getWidth();
		int height = board.getHeight();
		offsetTop = (displayHeight - (height * pieceHeight)) / 2;
		offsetLeft = (displayWidth - (width * pieceWidth)) / 2;
		for (int x = 0; x < width; x++) {
			for (int y = 0; y < height; y++) {
				switch (board.getBoardPiece(x, y)) {
				/*
				case Board.BALL:
					Ball ball = new Ball(this, x, y);
					gameController.addBall(ball);
					break;
				case Board.MAN:
					Man man = new Man(this, x, y);
					gameController.setMan(man);
					break;
					*/
				case Board.GOAL:
					Goal goal = new Goal(this, x, y);
					gameController.addGoal(goal);
					break;
				case Board.WALL:
					new Wall(this, x, y);
					break;
				}
			}
		}
		// TODO this next for-loop should be merged with the one above.
		// this is intended as a quick hack to make sure that BALL and
		// MAN images are on top.
		for (int x = 0; x < width; x++) {
			for (int y = 0; y < height; y++) {
				switch (board.getBoardPiece(x, y)) {
				case Board.BALL:
					Ball ball = new Ball(this, x, y);
					gameController.addBall(ball);
					break;
				case Board.MAN:
					Man man = new Man(this, x, y);
					gameController.setMan(man);
					break;
				}
			}
		}

	}
}
