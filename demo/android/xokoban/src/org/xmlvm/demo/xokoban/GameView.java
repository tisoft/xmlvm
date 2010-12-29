/* Copyright (c) 2002-2011 by XMLVM.org
 *
 * Project Info:  http://www.xmlvm.org
 *
 * This program is free software; you can redistribute it and/or modify it
 * under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 *
 * This library is distributed in the hope that it will be useful, but
 * WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY
 * or FITNESS FOR A PARTICULAR PURPOSE. See the GNU Lesser General Public
 * License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public
 * License along with this library; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301,
 * USA.
 */

package org.xmlvm.demo.xokoban;

import android.app.Activity;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.ImageView.ScaleType;

/**
 * The GameView class wraps everything that is required for displaying a game.
 */
public class GameView extends ViewGroup {

    /** The INFO icon's size. */
    private static final int INFO_ICON_SIZE   = 25;

    /** The levels dialog icon's size. */
    private static final int LEVELS_ICON_SIZE = 25;

    /** The Activity associated with this GameView. */
    private Activity         activity;

    /** The GameController controlling the game. */
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
        super(activity);
        // Initialization
        this.activity = activity;
        this.mover = new GamePieceMover();

        // Connect view to activity and create background
        activity.setContentView(this);
        backgroundImage = new ImageView(activity);
        displayWidth = activity.getWindowManager().getDefaultDisplay().getWidth();
        displayHeight = activity.getWindowManager().getDefaultDisplay().getHeight();
        backgroundImage.setScaleType(ScaleType.FIT_XY);
        backgroundImage.setImageResource(R.drawable.background);
        infoImage = new ImageView(activity);
        infoImage.setImageResource(R.drawable.info);
        levelsImage = new ImageView(activity);
        levelsImage.setImageResource(R.drawable.levels);
        layoutStaticContent();
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
        removeAllViews();

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

        addView(backgroundImage, 0);
        addView(infoImage);
        addView(levelsImage);
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

    public int getOffsetLeft() {
        return this.offsetLeft;
    }

    public int getOffsetTop() {
        return this.offsetTop;
    }

    public GamePieceMover getMover() {
        return this.mover;
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

    /**
     * Depending on the screen- and board size, this method figures out which
     * size of tiles to use.
     * 
     * @param boardWidth
     *            the width of the board, measured in tiles.
     * @param boardHeight
     *            the height of the board, measured in tiles.
     * 
     * @return the size of the tiles.
     */
    private int determineTileSize(int boardWidth, int boardHeight) {
        int maxTileWidth = displayWidth / boardWidth;
        int maxTileHeight = displayHeight / boardHeight;
        int maxTileSize = Math.min(maxTileWidth, maxTileHeight);

        // Higher resultion devices to a great job scaling to any size.
        if (displayWidth >= 800) {
            return maxTileSize;
        } else {
            if (maxTileSize < GamePiece.SIZE_THRESHOLD) {
                return 20;
            } else {
                return 30;
            }
        }
    }

    private void layoutStaticContent() {
        if (backgroundImage != null && infoImage != null && levelsImage != null) {
            backgroundImage.layout(0, 0, displayWidth, displayHeight);
            infoImage.layout(0, displayHeight - INFO_ICON_SIZE, INFO_ICON_SIZE, displayHeight);
            levelsImage.layout(displayWidth - LEVELS_ICON_SIZE, displayHeight - LEVELS_ICON_SIZE,
                    displayWidth, displayHeight);
        }
    }

    @Override
    protected void onLayout(boolean changed, int l, int t, int r, int b) {
        layoutStaticContent();
    }
}
