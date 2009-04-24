package org.xmlvm.asokoban;

import android.app.Activity;
import android.widget.AbsoluteLayout;
import android.widget.ImageView;

/**
 * The GameView class wraps everything that is required for displaying a game.
 */
public class GameView {

    private Activity       activity;
    private AbsoluteLayout layout;
    private GameController gameController;
    private GamePieceMover mover;
    private ImageView      backgroundImage;
    private int            tileSize;
    private int            displayWidth;
    private int            displayHeight;
    private int            offsetTop;
    private int            offsetLeft;

    public GameView(Activity activity) {

        // Initialization
        tileSize = 20;
        mover = new GamePieceMover();

        // Store activity for future use
        this.activity = activity;

        // Connect view to activity and create background
        layout = new AbsoluteLayout(activity);
        activity.setContentView(layout);
        backgroundImage = new ImageView(activity);
        backgroundImage.setImageResource(R.drawable.background);
    }

    public GameController getGameController() {
        return this.gameController;
    }

    public void setGameController(GameController gameController) {
        this.gameController = gameController;
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

    public boolean isMoving() {
        return mover.isMoving();
    }

    public void setDisplayWidth(int displayWidth) {
        this.displayWidth = displayWidth;
    }

    public void setDisplayHeight(int displayHeight) {
        this.displayHeight = displayHeight;
    }

    public void displayBoard(Board board) {
        int width = board.getWidth();
        int height = board.getHeight();
        offsetTop = (displayHeight - (height * tileSize)) / 2;
        offsetLeft = (displayWidth - (width * tileSize)) / 2;

        /*
         * for (int x = 0; x < width; x++) { for (int y = 0; y < height; y++) {
         * // TODO Can't deal with <jvm:tableswitch> for now switch
         * (board.getBoardPiece(x, y)) { case Board.BALL: Ball ball = new
         * Ball(this, x, y); gameController.addBall(ball); break; case
         * Board.GOAL: Goal goal = new Goal(this, x, y);
         * gameController.addGoal(goal); break; case Board.MAN: Man man = new
         * Man(this, x, y); gameController.setMan(man); break; case Board.WALL:
         * new Wall(this, x, y); break; } }
         */

        // Start with an empty display and show background image
        layout.removeAllViews();
        layout.addView(backgroundImage, 0);

        // First we set all the floor tiles, as they should be at the bottom.
        for (int x = 0; x < width; x++) {
            for (int y = 0; y < height; y++) {
                if (board.isFloor(x, y)) {
                    new Floor(this, x, y);
                }
            }
        }

        // TODO we make two passes over the game board in order to force
        // a certain Z-order in which the game pieces are later rendered.
        for (int pass = 0; pass < 2; pass++) {
            for (int x = 0; x < width; x++) {
                for (int y = 0; y < height; y++) {
                    int p = board.getBoardPiece(x, y);
                    if (p == Board.BALL && pass == 1) {
                        Ball ball = new Ball(this, x, y);
                        gameController.addBall(ball);
                    } else if (p == Board.GOAL && pass == 0) {
                        Goal goal = new Goal(this, x, y);
                        gameController.addGoal(goal);
                    } else if (p == Board.MAN & pass == 1) {
                        Man man = new Man(this, x, y);
                        gameController.setMan(man);
                    } else if (p == Board.WALL && pass == 0) {
                        new Wall(this, x, y);
                    }
                }
            }
        }

    }

}
