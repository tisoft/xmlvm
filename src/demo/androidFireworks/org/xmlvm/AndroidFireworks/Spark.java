package org.xmlvm.AndroidFireworks;

import android.widget.ImageView;



public class Spark
{
	AndroidFireworks parent;
    ImageView        image;
    float            x;
    float            y;
    float            vx;
    float            vy;
    boolean          outOfSight;


    public Spark(AndroidFireworks parent)
    {
    	this.parent = parent;
    }

    void resetWithX(int x, int y)
    {
        this.x = x;
        this.y = y;
        this.image = new ImageView(parent);
        parent.layout.addView(this.image);
        double rand = (Math.random() * 4);
        if (rand < 1) {
            image.setImageResource(R.drawable.star1);
        }
        else if (rand < 2) {
            image.setImageResource(R.drawable.star2);
        }
        else if (rand < 3) {
            image.setImageResource(R.drawable.star3);
        }
        else {
            image.setImageResource(R.drawable.star4);
        }
        vx = (float) (Math.random() * Const.MAX2V) - (Const.MAX2V / 2);
        vy = (float) (Math.random() * Const.MAX2V) - (Const.MAX2V / 2);
        // NSLog(@"Vx:%f Vy:%f", vx, vy);
        outOfSight = false;
    }



    void nextStep()
    {
        if (outOfSight) {
            return;
        }
        if (x < -Const.IMAGE_SIZE
                || x > Const.WIDTH
                || y < -Const.IMAGE_SIZE
                || y > Const.HEIGHT) {
            // This spark is out of reach
            outOfSight = true;
            return;
        }
        // Gravity
        vy += (Const.DV * Gravity.yGV);
        vx += (Const.DV * Gravity.xGV);
        x += (Const.T * vx);
        y += (Const.T * vy);
    }

}
