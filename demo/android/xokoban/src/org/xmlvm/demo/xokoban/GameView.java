/*
 * Copyright (c) 2004-2009 XMLVM --- An XML-based Programming Language
 * 
 * This program is free software; you can redistribute it and/or modify it under
 * the terms of the GNU General Public License as published by the Free Software
 * Foundation; either version 2 of the License, or (at your option) any later
 * version.
 * 
 * This program is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
 * FOR A PARTICULAR PURPOSE. See the GNU General Public License for more
 * details.
 * 
 * You should have received a copy of the GNU General Public License along with
 * this program; if not, write to the Free Software Foundation, Inc., 675 Mass
 * Ave, Cambridge, MA 02139, USA.
 * 
 * For more information, visit the XMLVM Home Page at http://www.xmlvm.org
 */

package org.xmlvm.demo.xokoban;

import android.app.Activity;
import android.view.View;
import android.view.View.OnTouchListener;
import android.widget.AbsoluteLayout;
import android.widget.ImageView;
import android.widget.FrameLayout.LayoutParams;
import android.widget.ImageView.ScaleType;

/**
 * The GameView class wraps everything that is required for displaying a game.
 */
public class GameView {

    /** The INFO icon's size. */
    private static final int INFO_ICON_SIZE   = 25;

    /** The levels dialog icon's size. */
    private static final int LEVELS_ICON_SIZE = 25;

    /** The Activity associated with this GameView. */
    private Activity         activity;

    /** The content view used to display the game. */
    private AbsoluteLayout   layout;

    /** The GameController controlling the gane. */
    private GameController   gameController;

    /** The helper used to animate the man's moves. */
    private GamePieceMover   mover;

    /** The background image. */
    private ImageView        backgroundImage;

    /** The Info logo image. */
    private ImageView        infoImage;

    /** The Levels logo image. */
    private ImageView        levelsImage;

    /** The display's X resolution. */
    private int              displayWidth;

    /** The display's Y resolution. */
    private int              displayHeight;

    /** The boards Y offset from the display's top left corner. */
    private int              offsetTop;

    /** The boards X offset from the display's top left corner. */
    private int              offsetLeft;

    /**
     * Constructor to create a GameActivity and associate it with the
     * application's activity.
     * 
     * @param activity
     *            The application's activity.
     */
    public GameView(Activity activity) {
        // Initialization
        this.activity = activity;
        this.mover = new GamePieceMover();

        // Connect view to activity and create background
        layout = new AbsoluteLayout(activity);
        activity.setContentView(layout);
        backgroundImage = new ImageView(activity);
        LayoutParams params = new LayoutParams(LayoutParams.FILL_PARENT, LayoutParams.FILL_PARENT);
        params.width = activity.getWindowManager().getDefaultDisplay().getWidth();
        params.height = activity.getWindowManager().getDefaultDisplay().getHeight();
        backgroundImage.setScaleType(ScaleType.FIT_XY);
        backgroundImage.setLayoutParams(params);
        backgroundImage.setImageResource(R.drawable.background);
        infoImage = new ImageView(activity);
        infoImage.setImageResource(R.drawable.info);
        levelsImage = new ImageView(activity);
        levelsImage.setImageResource(R.drawable.levels);
    }

    /**
     * Displays the given game board.
     * 
     * @param board
     *            The board to display.
     */
    public void displayBoard(Board board) {
        int width = board.getWidth();
        int height = board.getHeight();
        int tileSize = determineTileSize(width, height);
        offsetTop = (displayHeight - (height * tileSize)) / 2;
        offsetLeft = (displayWidth - (width * tileSize)) / 2;

        // Start with an empty display and show background image
        layout.removeAllViews();

        Ball ball;
        Goal goal;
        Man man;

        for (int x = 0; x < width; x++) {
            for (int y = 0; y < height; y++) {
                switch (board.getBoardPiece(x, y)) {
                case Board.GOAL:
                    goal = new Goal(this, tileSize, x, y);
                    gameController.addGoal(goal);
                    break;
                case Board.BALL:
                    ball = new Ball(this, tileSize, x, y);
                    gameController.addBall(ball);
                    break;
                case Board.BALL_IN_GOAL:
                    goal = new Goal(this, tileSize, x, y);
                    gameController.addGoal(goal);
                    ball = new Ball(this, tileSize, x, y);
                    gameController.addBall(ball);
                    break;
                case Board.MAN:
                    man = new Man(this, tileSize, x, y);
                    gameController.setMan(man);
                    break;
                case Board.MAN_ON_GOAL:
                    goal = new Goal(this, tileSize, x, y);
                    gameController.addGoal(goal);
                    man = new Man(this, tileSize, x, y);
                    gameController.setMan(man);
                    break;
                case Board.WALL:
                    new Wall(this, tileSize, x, y);
                    break;
                }
                if (board.isFloor(x, y)) {
                    new Floor(this, tileSize, x, y);
                }
            }
        }

        layout.addView(backgroundImage, 0);

        layout.addView(infoImage, new AbsoluteLayout.LayoutParams(
                AbsoluteLayout.LayoutParams.WRAP_CONTENT, AbsoluteLayout.LayoutParams.WRAP_CONTENT,
                displayWidth - INFO_ICON_SIZE - 1, displayHeight - INFO_ICON_SIZE));

        layout.addView(levelsImage, new AbsoluteLayout.LayoutParams(
                AbsoluteLayout.LayoutParams.WRAP_CONTENT, AbsoluteLayout.LayoutParams.WRAP_CONTENT,
                0, displayHeight - LEVELS_ICON_SIZE));
    }

    public GameController getGameController() {
        return this.gameController;
    }

    public void setGameController(GameController gameController) {
        this.gameController = gameController;
        mover.setMoveFinishedHandler(gameController);
    }

    public Activity getActivity() {
        return this.activity;
    }

    public AbsoluteLayout getLayout() {
        return this.layout;
    }

    public int getOffsetLeft() {
        return this.offsetLeft;
    }

    public int getOffsetTop() {
        return this.offsetTop;
    }

    public GamePieceMover getMover() {
        return this.mover;
    }

    public void setDisplayWidth(int displayWidth) {
        this.displayWidth = displayWidth;
    }

    public void setDisplayHeight(int displayHeight) {
        this.displayHeight = displayHeight;
    }

    /**
     * Registers a listener that gets called when a touch event occurs.
     */
    public void setOnTouchListener(OnTouchListener listener) {
        layout.setOnTouchListener(listener);
    }

    /**
     * Adds a view to be displayed
     * 
     * @param view
     *            The View to add.
     */
    public void addView(View view) {
        layout.addView(view);
    }

    /**
     * Removes a view from being shown.
     * 
     * @param view
     *            The View to remove.
     */
    public void removeView(View view) {
        layout.removeView(view);
    }

    /**
     * Tests whether a given coordinate is inside the info dialog logo.
     * 
     * @param x
     *            The x part of the coordinate to be tested.
     * 
     * @param y
     *            The y part of the coordinate to be tested.
     * 
     * @return true if the coordinate is inside of the logo, false otherwise.
     */
    public boolean isInsideInfoLogo(float x, float y) {
        return (int) x > displayWidth - (INFO_ICON_SIZE + 10)
                && (int) y > displayHeight - (INFO_ICON_SIZE + 10);
    }

    /**
     * Tests whether a given coordinate is inside the levels dialog logo.
     * 
     * @param x
     *            The x part of the coordinate to be tested.
     * 
     * @param y
     *            The y part of the coordinate to be tested.
     * 
     * @return true if the coordinate is inside of the logo, false otherwise.
     */
    public boolean isInsideLevelsLogo(float x, float y) {
        return (int) x < (LEVELS_ICON_SIZE + 10)
                && (int) y > displayHeight - (LEVELS_ICON_SIZE + 10);
    }

    private int determineTileSize(int boardWidth, int boardHeight) {
        int maxTileWidth = 480 / boardWidth;
        int maxTileHeight = 320 / boardHeight;

        return maxTileWidth < 30 || maxTileHeight < 30 ? 20 : 30;
    }
}
