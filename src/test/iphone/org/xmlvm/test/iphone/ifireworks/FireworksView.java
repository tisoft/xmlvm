
package org.xmlvm.test.iphone.ifireworks;

import org.xmlvm.iphone.*;



public class FireworksView
    extends UIView
{
    Bomb    bombs[];
    boolean timerActive;
    NSTimer timer;
    
    FireworksView(CGRect windowRect)
    {
        super(windowRect);
        timerActive = false;
        bombs = new Bomb[Const.BOMB_COUNT];
        for (int j = 0; j < Const.BOMB_COUNT; ++j) {
            bombs[j] = new Bomb();
            bombs[j].resetWithX(
                    (int) (Math.random() * (Const.WIDTH - 60)) + 30,
                    (int) (Math.random() * (Const.HEIGHT - 60)) + 30);
        }
        
        initTimer();
    }



    public void drawRect(CGRect rect)
    {
        float black[] = {0, 0, 0, 1};
        CGContext ctx = CGContext.UICurrentContext();
        ctx.setFillColor(black);
        ctx.fillRect(rect);
        for (int j = 0; j < Const.BOMB_COUNT; ++j) {
            for (int i = 0; i < Const.SPARKS_PER_BOMB; ++i) {
                if (!CGRect.IsNull(CGRect.Intersection(rect,
                        bombs[j].sparks[i].position))) {
                    bombs[j].sparks[i].image
                            .draw1PartImageInRect(bombs[j].sparks[i].position);
                }
            }
        }
    }



    void initTimer()
    {
        timer = new NSTimer(0.05f, this, "triggered", null, true);
    }



    public void triggered(NSTimer timer)
    {
        for (int j = 0; j < Const.BOMB_COUNT; ++j) {
            if (bombs[j].allOutOfSight()) {
                // NSLog(@"All Out Of Sight");
                bombs[j].resetWithX((int) (Math.random() * Const.WIDTH),
                        (int) (Math.random() * Const.HEIGHT));
            }
            for (int i = 0; i < Const.SPARKS_PER_BOMB; ++i) {
                CGRect old = new CGRect(bombs[j].sparks[i].position);
                bombs[j].sparks[i].nextStep();
                this.setNeedsDisplayInRect(old);
                this.setNeedsDisplayInRect(bombs[j].sparks[i].position);
            }
        }
    }

}
