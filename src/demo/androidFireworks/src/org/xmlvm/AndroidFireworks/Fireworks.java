package org.xmlvm.AndroidFireworks;

import org.xmlvm.AndroidFireworks.AndroidFireworks.Environment;

import android.view.ViewGroup;

/**
 * The fireworks controller class.
 */
public class Fireworks {
    private Bomb[]      bombs;
    private Environment environment;

    public Fireworks(ViewGroup viewGroup, Environment environment) {
        this.environment = environment;
        bombs = new Bomb[Const.BOMB_COUNT];
        for (int j = 0; j < Const.BOMB_COUNT; ++j) {
            bombs[j] = new Bomb(viewGroup, environment);
            bombs[j].reset((int) (Math.random() * (environment.windowWidth - 60)) + 30, (int) (Math
                    .random() * (environment.windowHeight - 60)) + 30);
        }
    }

    /**
     * Performs the update for the next frame.
     */
    public void doUpdate() {
        for (int j = 0; j < Const.BOMB_COUNT; ++j) {
            Bomb bomb = bombs[j];
            if (bomb.allOutOfSight()) {
                bomb.reset((int) (Math.random() * environment.windowWidth),
                        (int) (Math.random() * environment.windowHeight));
            }
            for (int i = 0; i < Const.SPARKS_PER_BOMB; ++i) {
                // Update the position
                Spark spark = bomb.getSpark(i);
                spark.nextStep();
            }
        }
    }
}