package org.xmlvm.demo.afireworks;

import org.xmlvm.demo.afireworks.AndroidFireworks.Environment;

import android.view.ViewGroup;

/**
 * The fireworks controller class.
 */
public class Fireworks {
    private Bomb[]      bombs;
    private int         touchCount                 = 0;
    private Environment environment;
    private boolean     userActive                 = false;

    public Fireworks(ViewGroup viewGroup, Environment environment) {
        this.environment = environment;
        bombs = new Bomb[Const.BOMB_COUNT];
        // Initialize normal bombs.
        for (int i = 0; i < bombs.length; ++i) {
            bombs[i] = new Bomb(viewGroup, environment);
            bombs[i].reset((int) (Math.random() * (environment.windowWidth - 60)) + 30, (int) (Math
                    .random() * (environment.windowHeight - 60)) + 30);
        }
    }

    /**
     * Performs the update for the next frame.
     */
    public void doUpdate() {
        if (allBombsOutOfSite()) {
            userActive = false;
        }
        for (int i = 0; i < bombs.length; ++i) {
            updateBomb(bombs[i], !userActive);
        }
    }

    public void updateBomb(Bomb bomb, boolean resetOnFinish) {
        if (bomb.allOutOfSight() && resetOnFinish) {
            bomb.reset((int) (Math.random() * environment.windowWidth),
                    (int) (Math.random() * environment.windowHeight));
        }
        if (!bomb.allOutOfSight()) {
            for (int i = 0; i < Const.SPARKS_PER_BOMB; ++i) {
                // Update the position
                Spark spark = bomb.getSpark(i);
                spark.nextStep();
            }
        }
    }

    /**
     * Will make a touch-bomb explode at the given position.
     */
    public void touchExplode(int x, int y) {
        userActive = true;
        bombs[touchCount].reset(x, y);
        touchCount = (touchCount + 1) % bombs.length;
    }

    /**
     * Returns whether all bombs are out of sight.
     */
    private boolean allBombsOutOfSite() {
        for (int i = 0; i < bombs.length; ++i) {
            if (!bombs[i].allOutOfSight()) {
                return false;
            }
        }
        return true;
    }
}