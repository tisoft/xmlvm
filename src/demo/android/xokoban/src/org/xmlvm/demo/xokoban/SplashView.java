package org.xmlvm.demo.xokoban;

import android.content.Context;
import android.view.View;
import android.widget.AbsoluteLayout;
import android.widget.ImageView;

/**
 * A splash view shown right after the start of the application.
 */
public class SplashView extends AbsoluteLayout  {
    protected GameView gameView;
    protected boolean  shown = false;

    /**
     * Creates the SplashView with a background image.
     */
    public SplashView(Context context, GameView gameView) {
        this(context, gameView, R.drawable.splash);
    }

    protected SplashView(Context context, GameView gameView, int resourceId) {
        super(context);
        this.gameView = gameView;
        ImageView splashImage = new ImageView(context);
        splashImage.setImageResource(resourceId);
        addView(splashImage, 0);
    }

    /**
     * Adds this view to the {@link GameView} so it is shown.
     */
    public void show() {
        gameView.addView(this);
        shown = true;
    }

    /**
     * Removes this view from the {@link GameView} so it is hidden.
     */
    public void hide() {
        gameView.removeView(this);
        shown = false;
    }

    /**
     * Returns whether the view is shown.
     * 
     * <p>
     * <b>NOTE:</b>This is not to be confused with {@link View#isShown()}.
     */
    public boolean isViewShown() {
        return shown;
    }
}
