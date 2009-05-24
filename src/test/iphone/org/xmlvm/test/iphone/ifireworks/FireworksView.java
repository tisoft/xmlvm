package org.xmlvm.test.iphone.ifireworks;

import java.util.Set;

import org.xmlvm.iphone.CGContext;
import org.xmlvm.iphone.CGRect;
import org.xmlvm.iphone.NSTimer;
import org.xmlvm.iphone.UIEvent;
import org.xmlvm.iphone.UITouch;
import org.xmlvm.iphone.UIView;

public class FireworksView extends UIView {
    private static final int touchMod    = 3;

    Bomb                     bombs[];
    boolean                  timerActive;
    NSTimer                  timer;
    private int              touchCount1 = 0;
    private int              touchCount2 = 0;
    private boolean          userActive  = false;

    FireworksView(CGRect windowRect) {
        super(windowRect);
        timerActive = false;
        bombs = new Bomb[Const.BOMB_COUNT];
        for (int j = 0; j < Const.BOMB_COUNT; ++j) {
            bombs[j] = new Bomb();
            bombs[j].resetWithX((int) (Math.random() * (Const.WIDTH - 60)) + 30, (int) (Math
                    .random() * (Const.HEIGHT - 60)) + 30);
        }

        this.setNeedsDisplay();
        initTimer();
    }

    public void drawRect(CGRect rect) {
        float black[] = { 0, 0, 0, 1 };
        CGContext ctx = CGContext.UICurrentContext();
        ctx.setFillColor(black);
        ctx.fillRect(rect);
        for (int j = 0; j < Const.BOMB_COUNT; ++j) {
            for (int i = 0; i < Const.SPARKS_PER_BOMB; ++i) {
                if (!CGRect.IsNull(CGRect.Intersection(rect, bombs[j].sparks[i].position))) {
                    bombs[j].sparks[i].image.draw1PartImageInRect(bombs[j].sparks[i].position);
                }
            }
        }
    }

    /**
     * Will make a touch-bomb explode at the given position.
     */
    public void touchExplode(int x, int y) {
        userActive = true;
        bombs[touchCount2].resetWithX(x, y);
        this.setNeedsDisplay();
        touchCount2 = (touchCount2 + 1) % bombs.length;
    }

    void initTimer() {
        timer = new NSTimer(0.05f, this, "triggered", null, true);
    }

    public void triggered(NSTimer timer) {
        if (allBombsOutOfSite()) {
            userActive = false;
        }

        for (int j = 0; j < Const.BOMB_COUNT; ++j) {
            if (bombs[j].allOutOfSight() && !userActive) {
                // NSLog(@"All Out Of Sight");
                bombs[j].resetWithX((int) (Math.random() * Const.WIDTH),
                        (int) (Math.random() * Const.HEIGHT));
            }
            if (!bombs[j].allOutOfSight()) {
                for (int i = 0; i < Const.SPARKS_PER_BOMB; ++i) {
                    bombs[j].sparks[i].nextStep();
                }
            }
        }
        
        this.setNeedsDisplay();
    }

    private boolean allBombsOutOfSite() {
        for (int i = 0; i < bombs.length; ++i) {
            if (!bombs[i].allOutOfSight()) {
                return false;
            }
        }
        return true;
    }

    @Override
    public void touchesBegan(Set<UITouch> touches, UIEvent event) {
        touchCount2 = 0;
        handleTouch(touches);
    }

    @Override
    public void touchesMoved(Set<UITouch> touches, UIEvent event) {
        handleTouch(touches);
    }

    private void handleTouch(Set<UITouch> touches) {
        UITouch touch = touches.iterator().next();

        if (touchCount1 == 0) {
            touchExplode((int) touch.locationInView(this).x, (int) touch.locationInView(this).y);
        }
        touchCount1 = (touchCount1 + 1) % touchMod;
    }
}
