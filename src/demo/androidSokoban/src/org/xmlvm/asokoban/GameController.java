package org.xmlvm.asokoban;

public class GameController {
    private int           moveCount = 0;
    private Man           man       = null;
    private GamePieceList balls     = null;
    private GamePieceList goals     = null;
    private Board         board     = null;

    public GameController(Board board) {
        balls = new GamePieceList();
        goals = new GamePieceList();
        this.board = board;
    }

    public int getMoveCount() {
        return moveCount;
    }

    public boolean levelFinished() {
        for (int i = 0; i < goals.size(); i++) {
            Goal goal = (Goal) goals.get(i);
            if (testBallPosition(goal.getX(), goal.getY()) == null) {
                return false;
            }
        }

        return true;
    }

    public void move(int dx, int dy) {
        int newX = man.getX() + dx;
        int newY = man.getY() + dy;

        // Check wall
        if (board.getBoardPiece(newX, newY) == Board.WALL) {
            return;
        }

        // Check ball and piece behind it
        Ball adjacentBall = testBallPosition(newX, newY);
        if (adjacentBall != null
                && (testBallPosition(newX + dx, newY + dy) != null || board.getBoardPiece(newX
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

    private Ball testBallPosition(int x, int y) {
        for (int i = 0; i < balls.size(); i++) {
            Ball b = (Ball) balls.get(i);
            if (b.getX() == x && b.getY() == y) {
                return b;
            }
        }

        return null;
    }

    public void setMan(Man man) {
        this.man = man;
    }

    public void addBall(Ball ball) {
        balls.add(ball);
    }

    public void addGoal(Goal goal) {
        goals.add(goal);
    }
}
