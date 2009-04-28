package org.xmlvm.asokoban;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.DialogInterface;

/**
 * The controller class for the Sokoban game.
 */
public class GameController implements MoveFinishedHandler {
    /** A flag to indicate whether sensor events will be processed or not. */
    private boolean       gamePaused         = true;

    /** The current level. */
    private int           currentLevel       = 0;

    /** The number of moves. */
    private int           moveCount          = 0;

    /** A representation of the game's man game piece. */
    private Man           man                = null;

    /** A list of all ball game pieces. */
    private GamePieceList balls              = null;

    /** A list of all goal game pieces. */
    private GamePieceList goals              = null;

    /** The current game board. */
    private Board         board              = null;

    /** The {@link GameView} associated with this GameController. */
    private GameView      gameView           = null;

    /**
     * The splash view shown right after the start of the application or after
     * tapping the (i) logo.
     */
    private SplashView    splashView;

    /** Whether the SplashView is shown. */
    private boolean       splashViewShown    = true;

    private AlertDialog   currentLevelDialog = null;

    private AlertDialog   changeLevelDialog  = null;

    /**
     * Instantiates a new GameController and connects it to the given
     * {@link GameView}.
     * 
     * @param activity
     *            The application's activity.
     * @param gameView
     *            The GameView used to display the game.
     */

    public GameController(GameView gameView, Activity activity, int currentLevel) {
        this.gameView = gameView;
        splashView = new SplashView(activity);
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
        if (man.isMoving()) {
            return;
        }
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

        // Create and display the level's board
        board = new Board(new CharField(Levels.getLevel(level), Board.BOARD_WIDTH,
                Board.BOARD_HEIGHT));
        balls = new GamePieceList();
        goals = new GamePieceList();

        gameView.displayBoard(board);

        // Display current level
        if (showLevel) {
            currentLevelDialog = new AlertDialog.Builder(gameView.getActivity()).setTitle(
                    "Level: " + (currentLevel + 1)).setPositiveButton("OK",
                    new DialogInterface.OnClickListener() {
                        public void onClick(DialogInterface dialog, int whichButton) {
                            gamePaused = false;
                        }
                    }).create();
            currentLevelDialog.show();
        }
    }

    /**
     * Shows a dialog allowing the user to reset the current level or to proceed
     * to the next level.
     */
    public void showLevelDialog() {
        DialogInterface.OnClickListener listener = new DialogInterface.OnClickListener() {

            @Override
            public void onClick(DialogInterface dialog, int which) {
                boolean showLevelDialog = false;
                // Second button: Increase current level to proceed to next
                // level
                if (which == DialogInterface.BUTTON3) {
                    currentLevel++;
                    showLevelDialog = true;
                }

                changeLevelDialog.dismiss();

                if (which != DialogInterface.BUTTON2 && currentLevel < Levels.getSize()) {
                    loadLevel(currentLevel, showLevelDialog);
                }
            }

        };
        changeLevelDialog = new AlertDialog.Builder(gameView.getActivity()).create();
        changeLevelDialog.setTitle("You can reset the current level, jump to the next or dismiss "
                + "this dialog.");
        changeLevelDialog.setButton("Reset", listener);
        changeLevelDialog.setButton2("Cancel", listener);
        changeLevelDialog.setButton3("Next", listener);
        changeLevelDialog.show();
    }

    public void showSplashScreen(final InputController ic, final boolean loadLevel) {
        // Add the SplashView
        gameView.addView(splashView);
        splashViewShown = true;

        // When the user taps the screen, the SplashView should disappear and
        // the level should load.
        ic.setTapHandler(new SimpleTapHandler() {
            @Override
            public void onTap() {
                if (splashViewShown) {
                    gameView.removeView(splashView);
                    ic.setTapHandler(null);
                    splashViewShown = false;
                    
                    if (loadLevel) {
                        loadLevel(currentLevel, true);
                    }
                }
            }
        });

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
     * Returns whether the game is paused.
     */
    public boolean isGamePaused() {
        return gamePaused;
    }

    /**
     * Retrieves the tile's size in pixels.
     * 
     * @return The retrieved tile size.
     */
    public int getTileSize() {
        return gameView.getTileSize();
    }

    /*
     * (non-Javadoc)
     * 
     * @see org.xmlvm.asokoban.MoveFinishedHandler#onMoveFinished()
     */
    public void onMoveFinished() {
        if (isLevelFinished()) {
            currentLevel++;
            loadLevel(currentLevel, true);
            return;
        }
    }

    /**
     * Should be called, before the object is destroyed.
     */
    public void onDestroy() {
        if (currentLevelDialog != null) {
            currentLevelDialog.dismiss();
        }

        if (changeLevelDialog != null) {
            changeLevelDialog.dismiss();
        }
    }

    public GameView getGameView() {
        return gameView;
    }

}