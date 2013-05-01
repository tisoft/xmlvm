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

import java.util.ArrayList;
import java.util.List;

import org.xmlvm.demo.xokoban.GamePiece.Position;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Handler;

/**
 * The controller class for the Xokoban game.
 */
public class GameController implements MoveFinishedHandler, Runnable {
    /** A flag to indicate whether sensor events will be processed or not. */
    private boolean         gamePaused              = true;

    /** The current level. */
    private int             currentLevel            = 0;

    /** Indicates whether the current level has been started. */
    private boolean         levelStarted            = false;

    /** The number of moves. */
    private int             moveCount               = 0;

    /** A representation of the game's man game piece. */
    private Man             man                     = null;

    /** A list of all ball game pieces. */
    private List<GamePiece> balls                   = null;

    /** A list of all goal game pieces. */
    private List<GamePiece> goals                   = null;

    /** The current game board. */
    private Board           board                   = null;

    /** The {@link GameView} associated with this GameController. */
    private GameView        gameView                = null;

    private AlertDialog     currentLevelDialog      = null;

    private AlertDialog     changeLevelDialog       = null;

    private AlertDialog     congratulationDialog    = null;

    /** Indicated the next X-direction the man should move to. */
    private int             nextDX;

    /** Indicated the next Y-direction the man should move to. */
    private int             nextDY;
    
    /** Speed of the current movement */
    private float           speedFactor = 1f;

    /** Stop man when current move is finished. */
    private boolean         stopMovement            = true;

    /** Set to true if timer is running. */
    private boolean         timerIsRunning          = false;

    /** Delay between two timer ticks. */
    private long            animationDelay;
    
    /** Time when the last frame was animated */
    private long            lastAnimationTimestamp;

    private static int      DEFAULT_DELAY_IN_MILLIS = 60;

    private Handler         timerHandler            = new Handler();

    /** The destination for the game piece */
    private Position        targetPosition          = null;

    /**
     * Instantiates a new GameController and connects it to the given
     * {@link GameView}.
     * 
     * @param gameView
     *            The GameView used to display the game.
     * @param currentLevel
     *            The current level.
     */
    public GameController(GameView gameView, int currentLevel) {
        this.gameView = gameView;
        this.currentLevel = currentLevel;
    }

    /**
     * Returns whether the current level is finished.
     * 
     * @return true if the level is finished, false otherwise.
     */
    public boolean isLevelFinished() {
        for (int i = 0; i < goals.size(); i++) {
            Goal goal = (Goal) goals.get(i);
            if (getBallAtPosition(goal.getX(), goal.getY()) == null) {
                return false;
            }
        }
        return true;
    }

    public void setMovingSpeed(float x, float y) {
        x = Math.abs(x);
        y = Math.abs(y);
        float max = Math.max(x, y);
        int newAnimationDelay = (int) ((getDelayInMillis() * 1.6) - (8f * max));
        if (newAnimationDelay < 5)
            newAnimationDelay = 5;
        animationDelay = newAnimationDelay;
    }

    /**
     * Schedule the man to move in a certain direction designated by the input
     * parameters. If the man is currently stop, he will start moving
     * immediately. Otherwise the new direction will be considered after the
     * current move is finished (i.e., the man has reached the new tile).
     * 
     * @param dx
     *            New X-direction (either -1, 0, or 1)
     * @param dy
     *            New Y-direction (either -1, 0, or 1)
     */
    public void scheduleMoveMan(int dx, int dy) {
        scheduleMoveMan(dx,dy,1f);
    }
    
    /**
     * Schedule the man to move in a certain direction designated by the input
     * parameters. If the man is currently stop, he will start moving
     * immediately. Otherwise the new direction will be considered after the
     * current move is finished (i.e., the man has reached the new tile).
     * 
     * @param dx
     *            New X-direction (either -1, 0, or 1)
     * @param dy
     *            New Y-direction (either -1, 0, or 1)
     * @param speed
     *            The speed factor at which to move (1 is normal; 2 is twice 
     *            as fast as normal)
     */
    public void scheduleMoveMan(int dx, int dy, float speed) {
        speedFactor = speed;
        nextDX = dx;
        nextDY = dy;
        if (moveMan() && !timerIsRunning) {
            timerIsRunning = true;
            stopMovement = false;
            timerHandler.removeCallbacks(this);
            animationDelay = getDelayInMillis();
            lastAnimationTimestamp = System.currentTimeMillis();
            timerHandler.postDelayed(this, animationDelay);
        }
    }

    /**
     * Schedule the man to move to the tile at the specified pixel coordinates.
     * 
     * @param px the x coordinate, in pixels
     * @param py the y coordinate, in pixels
     */
    public void scheduleMoveManTo(int px, int py) {
        scheduleMoveManTo(px,py,1f);
    }
    
    /**
     * Schedule the man to move to the tile at the specified pixel coordinates.
     * 
     * @param px the x coordinate, in pixels
     * @param py the y coordinate, in pixels
     * @param speed the speed factor at which to move; 1 is normal, 2 is twice normal
     */
    public void scheduleMoveManTo(int px, int py, float speed) {
        
        // Convert from pixel to tile coordinates 
        px -= gameView.getOffsetLeft();
        py -= gameView.getOffsetTop();
        int tileX = board.getWidth()  * px / gameView.getWidth();
        int tileY = board.getHeight() * py / gameView.getHeight();
        
        int dx = (int) Math.signum(tileX - man.getX());
        int dy = (int) Math.signum(tileY - man.getY()); 
                
        // Disallow moves not along a horizontal or vertical
        if (dx != 0 && dy != 0) {
            return;
        }
        
        targetPosition = new Position(tileX, tileY);
        
        scheduleMoveMan(dx, dy, speed);
    }
    
    /**
     * Schedule to stop the man. The timer can't be stopped right away because
     * the current move first needs to complete (i.e., the man needs to reach
     * the next tile).
     */
    public void scheduleStopMan() {
        stopMovement = true;
    }

    private int getDelayInMillis() {
        return (int) (DEFAULT_DELAY_IN_MILLIS * (20f / (man != null ? man.getTileSize() : 20f)));
    }

    /**
     * Attempts to move the man in the direction given by variables
     * {@link newDX} and {@link newDY}.
     * 
     * @return Returns true if the man can move in the desired direction.
     */
    private boolean moveMan() {
        if (man == null || man.isMoving()) {
            return false;
        }
        int newX = man.getX() + nextDX;
        int newY = man.getY() + nextDY;

        // Check wall
        if (board.getBoardPiece(newX, newY) == Board.WALL) {
            return false;
        }

        // Check ball and piece behind it
        Ball adjacentBall = getBallAtPosition(newX, newY);
        if (adjacentBall != null
                && (getBallAtPosition(newX + nextDX, newY + nextDY) != null || board.getBoardPiece(
                        newX + nextDX, newY + nextDY) == Board.WALL)) {
            return false;
        }

        // Move man only
        levelStarted = true;
        moveCount++;
        if (adjacentBall == null) {
            man.startMoving(nextDX, nextDY, speedFactor);
        }
        // Move man and ball
        else {
            adjacentBall.startMoving(nextDX, nextDY, speedFactor);
            man.startMoving(nextDX, nextDY, speedFactor);
        }
        return true;
    }

    /**
     * Returns the ball at the requested position.
     * 
     * @param x
     *            The x coordinate to check for a ball.
     * @param y
     *            The y coordinate to check for a ball.
     * @return If a {@link Ball} exists at the requested location, it returns
     *         it. Null otherwise.
     */
    private Ball getBallAtPosition(int x, int y) {
        for (int i = 0; i < balls.size(); i++) {
            Ball b = (Ball) balls.get(i);
            if (b.getX() == x && b.getY() == y) {
                return b;
            }
        }

        return null;
    }

    /**
     * Sets the man of the game.
     */
    public void setMan(Man man) {
        this.man = man;
    }

    /**
     * Adds a ball to the game.
     */
    public void addBall(Ball ball) {
        balls.add(ball);
    }

    /**
     * Adds a goal to the game.
     */
    public void addGoal(Goal goal) {
        goals.add(goal);
    }

    public void loadLevel(boolean showLevel) {
        loadLevel(currentLevel, showLevel);
    }

    /**
     * Loads the give level. Before the level is started a Dialog shows the
     * number of the level being started.
     * 
     * @param level
     *            The level to be loaded.
     * @param showLevel
     *            Determines whether the loaded level will be indicated with a
     *            DialogBox
     */
    public void loadLevel(int level, boolean showLevel) {
        // Pause game and store current level
        gamePaused = true;
        currentLevel = level;
        levelStarted = false;

        // Create and display the level's board
        board = new Board(new CharField(Levels.getLevel(level), Board.BOARD_WIDTH,
                Board.BOARD_HEIGHT));
        balls = new ArrayList<GamePiece>();
        goals = new ArrayList<GamePiece>();

        gameView.displayBoard(board);

        Context context = gameView.getContext();
        // Display current level
        if (showLevel) {
            currentLevelDialog = new AlertDialog.Builder(gameView.getContext())
                    .setTitle(context.getString(R.string.level) + " " + (currentLevel + 1))
                    .setPositiveButton(context.getString(R.string.ok),
                            new DialogInterface.OnClickListener() {
                                public void onClick(DialogInterface dialog, int whichButton) {
                                    gamePaused = false;
                                }
                            }).create();
            currentLevelDialog.show();
        } else {
            gamePaused = false;
        }
    }

    /**
     * Shows a dialog allowing the user to reset the current level or to proceed
     * to the next level.
     */
    public void showLevelDialog() {
        DialogInterface.OnClickListener listener = new DialogInterface.OnClickListener() {

            public void onClick(DialogInterface dialog, int which) {
                boolean showLevelDialog = false;
                // First button: Test for previous level and go back to previous
                // level if necessary
                if (which == DialogInterface.BUTTON1 && !levelStarted && currentLevel > 0) {
                    currentLevel--;
                    // showLevelDialog = true;
                }

                // Second button: Increase current level to proceed to next
                // level
                if (which == DialogInterface.BUTTON3) {
                    currentLevel++;
                    // showLevelDialog = true;
                }

                changeLevelDialog.dismiss();

                if (which != DialogInterface.BUTTON2) {
                    loadLevel(currentLevel, showLevelDialog);
                }
            }

        };
        Context context = gameView.getContext();
        changeLevelDialog = new AlertDialog.Builder(gameView.getContext()).create();
        changeLevelDialog.setTitle(context.getString(R.string.current_level) + " "
                + (currentLevel + 1));
        if (!levelStarted && currentLevel > 0) {
            changeLevelDialog.setButton(context.getString(R.string.previous), listener);
        } else {
            changeLevelDialog.setButton(context.getString(R.string.reset), listener);
        }
        changeLevelDialog.setButton2(context.getString(R.string.cancel), listener);

        if (currentLevel < Levels.getSize() - 1) {
            changeLevelDialog.setButton3(context.getString(R.string.next), listener);
        }
        changeLevelDialog.show();
    }

    /**
     * Shows a dialog allowing the user to reset the current level or to proceed
     * to the next level.
     */
    public void showCongratulationDialog() {

        DialogInterface.OnClickListener listener = new DialogInterface.OnClickListener() {

            public void onClick(DialogInterface dialog, int which) {
                loadLevel(0, false);
            }

        };
        Context context = gameView.getContext();
        congratulationDialog = new AlertDialog.Builder(gameView.getContext()).create();
        congratulationDialog.setTitle(context.getString(R.string.congrats));
        congratulationDialog.setButton(context.getString(R.string.ok), listener);
        congratulationDialog.show();
    }

    /**
     * Returns the number of moves already made in the current game.
     * 
     * @return The number of moves.
     */
    public int getMoveCount() {
        return moveCount;
    }

    /**
     * Returns the current level.
     */
    public int getCurrentLevel() {
        return currentLevel;
    }

    /**
     * Sets whether the game should be paused.
     */
    public void setGamePaused(boolean paused) {
        this.gamePaused = paused;
    }

    /**
     * Returns whether the game is paused.
     */
    public boolean isGamePaused() {
        return gamePaused;
    }

    @Override
    public void onMoveFinished() {
        if (isLevelFinished()) {
            timerHandler.removeCallbacks(this);

            // Let's delay ending the level so it is not too instant.
            timerHandler.postDelayed(new Runnable() {
                @Override
                public void run() {
                    timerIsRunning = false;
                    stopMovement = true;
                    // More levels left
                    if (currentLevel < Levels.getSize() - 1) {
                        currentLevel++;
                        loadLevel(currentLevel, true);
                    }
                    // All levels finished: Congratulate and wrap to level 1
                    else {
                        showCongratulationDialog();
                    }
                }
            }, 500);
            return;
        }
        if (targetPosition != null) {
            stopMovement |= (targetPosition.getX() == man.getX() && 
                             targetPosition.getY() == man.getY()); 
        }
        if (!stopMovement) {
            stopMovement = !moveMan();
        }
        timerIsRunning = !stopMovement;
    }

    /**
     * Should be called, before the object is destroyed.
     */
    public void onDestroy() {
        if (currentLevelDialog != null) {
            currentLevelDialog.dismiss();
            currentLevelDialog = null;
        }

        if (changeLevelDialog != null) {
            changeLevelDialog.dismiss();
            changeLevelDialog = null;
        }

        if (congratulationDialog != null) {
            congratulationDialog.dismiss();
            congratulationDialog = null;
        }
    }

    @Override
    public void run() {
        if (timerIsRunning) {
            timerHandler.postDelayed(this, animationDelay);
            long currentTime = System.currentTimeMillis();
            float delta = (float) (currentTime - lastAnimationTimestamp) / 1000f; // ms to sec
            gameView.getMover().doNextAnimationStep(delta);
            lastAnimationTimestamp = currentTime;
        }
    }
}