package org.xmlvm.asokoban;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.DialogInterface;
import android.hardware.SensorListener;

//import android.view.View.OnTouchListener;

/**
 * The controller class for the Sokoban game.
 */
public class GameController implements SensorListener {
    // implements OnTouchListener {

    private static final float movingThreshold = 1.7f;

    private boolean            gamePaused      = true;
    private int                currentLevel    = 0;
    private int                moveCount       = 0;
    private Man                man             = null;
    private GamePieceList      balls           = null;
    private GamePieceList      goals           = null;
    private Board              board           = null;
    private GameView           gameView        = null;
    private Activity           activity        = null;

    /**
     * Instantiates a new GameController and connects it to the given
     * {@link GameView}.
     * 
     * @param activity
     *            The application's activity.
     * 
     * @param gameView
     *            The GameView used to display the game.
     */

    public GameController(Activity activity, GameView gameView) {
        this.activity = activity;
        this.gameView = gameView;
    }

    /**
     * Returns the number of moves already made in the current game.
     */
    public int getMoveCount() {
        return moveCount;
    }

    /**
     * Returns whether the current level is finished.
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

    /**
     * Moves the man in the given direction. If the man "hits" a ball that is
     * movable, it will move it as well.
     * 
     * @param dx
     *            The number of pixels to move horizontally.
     * @param dy
     *            The number of pixels to move vertically.
     */
    public void moveMan(int dx, int dy) {
        int newX = man.getX() + dx;
        int newY = man.getY() + dy;

        // Check wall
        if (board.getBoardPiece(newX, newY) == Board.WALL) {
            return;
        }

        // Check ball and piece behind it
        Ball adjacentBall = getBallAtPosition(newX, newY);
        if (adjacentBall != null
                && (getBallAtPosition(newX + dx, newY + dy) != null || board.getBoardPiece(newX
                        + dx, newY + dy) == Board.WALL)) {
            return;
        }

        // Move man only
        moveCount++;
        if (adjacentBall == null) {
            man.startMoving(dx, dy);
        }
        // Move man and ball
        else {
            adjacentBall.startMoving(dx, dy);
            man.startMoving(dx, dy);
        }
        return;
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

    @Override
    public void onAccuracyChanged(int arg0, int arg1) {
        // TODO Auto-generated method stub

    }

    @Override
    public void onSensorChanged(int sensor, float[] values) {
        if (gamePaused) {
            return;
        }
        
        if (gameView.getGameController().isLevelFinished()) {
             currentLevel++;
            loadLevel(currentLevel);
            return;
        }
        
        float x = values[0];
        float y = -values[1];
        gameView.getMover().setMovingSpeed(x, y);
        if (gameView.isMoving()) {
            return;
        }
        int dx = 0;
        int dy = 0;
        if (Math.abs(x) > Math.abs(y)) {
            if (x > movingThreshold)
                dx = 1;
            if (x < -movingThreshold)
                dx = -1;
        } else {
            if (y > movingThreshold)
                dy = 1;
            if (y < -movingThreshold)
                dy = -1;
        }
        if (Math.abs(dx) > 0 || Math.abs(dy) > 0) {
            gameView.getGameController().moveMan(dx, dy);
        }
    }

    public void loadLevel(int level) {
        // Pause game and store current level
        gamePaused = true;
        currentLevel = level;

        // Create and display the level's board
        board = new Board(new CharField(Levels.getLevel(level), Board.BOARD_WIDTH,
                Board.BOARD_HEIGHT));
        balls = new GamePieceList();
        goals = new GamePieceList();

        gameView.displayBoard(board);

        // Display current level
        new AlertDialog.Builder(gameView.getActivity()).setTitle("Level: " + currentLevel)
                .setPositiveButton("OK", new DialogInterface.OnClickListener() {
                    public void onClick(DialogInterface dialog, int whichButton) {
                        gamePaused = false;
                    }
                }).create().show();
    }

    /*
     * @Override public boolean onTouch(View v, MotionEvent event) { if
     * (event.getAction() == MotionEvent.ACTION_DOWN) { createLevelsDialog();
     * return true; }
     * 
     * return false; }
     * 
     * private void createLevelsDialog() { DialogInterface.OnClickListener
     * listener = new DialogInterface.OnClickListener() {
     * 
     * @Override public void onClick(DialogInterface dialog, int which) {
     * Log.d("LevelsDialog", "Button: " + which); dialog.dismiss(); }
     * 
     * };
     * 
     * AlertDialog levelsDialog = new
     * AlertDialog.Builder(gameView.getActivity()).create();
     * levelsDialog.setTitle("Levels ..."); levelsDialog.setButton("Reset",
     * listener); levelsDialog.setButton2("Next", listener);
     * levelsDialog.show(); }
     */

    public int getCurrentLevel() {
        return currentLevel;
    }

}
