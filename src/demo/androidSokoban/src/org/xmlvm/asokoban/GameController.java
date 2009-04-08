package org.xmlvm.asokoban;

public class GameController {
    private int           _moveCount = 0;
    private Man           _man       = null;
    private GamePieceList _balls     = null;
    private GamePieceList _goals     = null;
    private Board         _board     = null;

    public GameController(Board board) {
        _balls = new GamePieceList();
        _goals = new GamePieceList();
        _board = board;
    }

    public int getMoveCount() {
        return _moveCount;
    }

    public boolean levelFinished() {
        for (int i = 0; i < _goals.size(); i++) {
            Goal goal = (Goal) _goals.get(i);
            if (testBallPosition(goal.getX(), goal.getY()) == null) {
                return false;
            }
        }

        return true;
    }

    public void move(int dx, int dy) {
        int newX = _man.getX() + dx;
        int newY = _man.getY() + dy;

        // Check wall
        if (_board.getBoardPiece(newX, newY) == Board.WALL) {
            return;
        }

        // Check ball and piece behind it
        Ball adjacentBall = testBallPosition(newX, newY);
        if (adjacentBall != null
                && (testBallPosition(newX + dx, newY + dy) != null || _board.getBoardPiece(newX
                        + dx, newY + dy) == Board.WALL)) {
            return;
        }

        // Move man only
        _moveCount++;
        if (adjacentBall == null) {
            _man.startMoving(dx, dy);
        }
        // Move man and ball
        else {
            adjacentBall.startMoving(dx, dy);
            _man.startMoving(dx, dy);
        }
        return;
    }

    private Ball testBallPosition(int x, int y) {
        for (int i = 0; i < _balls.size(); i++) {
            Ball b = (Ball) _balls.get(i);
            if (b.getX() == x && b.getY() == y) {
                return b;
            }
        }

        return null;
    }

    public void setMan(Man man) {
        _man = man;
    }

    public void addBall(Ball ball) {
        _balls.add(ball);
    }

    public void addGoal(Goal goal) {
        _goals.add(goal);
    }
}
