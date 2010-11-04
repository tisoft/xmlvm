package org.xmlvm.demo.ifireworks;

import org.xmlvm.iphone.*;

public class Spark {

    public UIImage image    = null;
    CGRect         position = null;
    float          vx;
    float          vy;
    boolean        outOfSight;

    public Spark() {
        position = new CGRect(0, 0, Const.IMAGE_SIZE, Const.IMAGE_SIZE);
    }

    void resetWithX(int x, int y) {
        position.origin.x = x;
        position.origin.y = y;
        double rand = (Math.random() * 4);

        if (image == null) {
            if (rand < 1) {
                image = UIImage.imageNamed("star1.png");
            } else if (rand < 2) {
                image = UIImage.imageNamed("star2.png");
            } else if (rand < 3) {
                image = UIImage.imageNamed("star3.png");
            } else {
                image = UIImage.imageNamed("star4.png");
            }
        }
        vx = (float) (Math.random() * Const.MAX2V) - (Const.MAX2V / 2);
        vy = (float) (Math.random() * Const.MAX2V) - (Const.MAX2V / 2);
        // NSLog(@"Vx:%f Vy:%f", vx, vy);
        outOfSight = false;
    }

    void nextStep() {
        if (outOfSight) {
            return;
        }
        if (position.origin.x < -Const.IMAGE_SIZE || position.origin.x > Const.WIDTH
                || position.origin.y < -Const.IMAGE_SIZE || position.origin.y > Const.HEIGHT) {
            // This spark is out of reach
            outOfSight = true;
            return;
        }
        // Gravity
        vy += (Const.DV * Gravity.yGV);
        vx += (Const.DV * Gravity.xGV);
        position.origin.x = position.origin.x + (Const.T * vx);
        position.origin.y = position.origin.y + (Const.T * vy);
    }

}
