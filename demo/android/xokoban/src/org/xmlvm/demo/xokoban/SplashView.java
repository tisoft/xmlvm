/*
 * Copyright (c) 2004-2009 XMLVM --- An XML-based Programming Language
 * 
 * This program is free software; you can redistribute it and/or modify it under
 * the terms of the GNU General Public License as published by the Free Software
 * Foundation; either version 2 of the License, or (at your option) any later
 * version.
 * 
 * This program is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
 * FOR A PARTICULAR PURPOSE. See the GNU General Public License for more
 * details.
 * 
 * You should have received a copy of the GNU General Public License along with
 * this program; if not, write to the Free Software Foundation, Inc., 675 Mass
 * Ave, Cambridge, MA 02139, USA.
 * 
 * For more information, visit the XMLVM Home Page at http://www.xmlvm.org
 */

package org.xmlvm.demo.xokoban;

import android.app.Activity;
import android.content.Context;
import android.graphics.Color;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.ImageView;

/**
 * A splash view shown right after the start of the application.
 */
public class SplashView extends ViewGroup {
    protected static final int SPLASH_WIDTH  = 800;
    protected static final int SPLASH_HEIGHT = 480;

    protected WindowManager    windowManager;
    protected GameView         gameView;
    protected ImageView        splashImage;
    protected boolean          shown         = false;
    protected int              displayWidth;
    protected int              displayHeight;

    /**
     * Creates the SplashView with a background image.
     */
    public SplashView(Context context, GameView gameView) {
        this(context, gameView, R.drawable.splash);
    }

    protected SplashView(Context context, GameView gameView, int resourceId) {
        super(context);
        windowManager = ((Activity) context).getWindowManager();
        displayWidth = windowManager.getDefaultDisplay().getWidth();
        displayHeight = windowManager.getDefaultDisplay().getHeight();
        Log.d("Resolution", displayWidth + "px x " + displayHeight + "px");

        this.setBackgroundColor(Color.GREEN);
        this.gameView = gameView;

        splashImage = new ImageView(context);
        splashImage.setImageResource(resourceId);

        addView(splashImage);
    }

    /**
     * Adds this view to the {@link GameView} so it is shown.
     */
    public void show() {
        gameView.addView(this);
        shown = true;
        layout(0, 0, displayWidth, displayHeight);
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

    @Override
    protected void onLayout(boolean changed, int left, int top, int right, int bottom) {
        Log.d("onLayout", this.getWidth() + " x " + this.getHeight());
        if (changed) {
            onSplashLayout(windowManager.getDefaultDisplay().getWidth(), windowManager
                    .getDefaultDisplay().getHeight());
        }
    }

    /**
     * Lays out the children in this splash view. Should be overridden by
     * sub-classes for their layouting.
     * 
     * @param displayWidth
     *            the width of the display
     * @param displayHeight
     *            the height of the display
     */
    protected void onSplashLayout(int displayWidth, int displayHeight) {
        if (splashImage != null) {
            // This only works for one aspect ratio case.
            int splashWidth = (int) (((float) displayHeight / (float) SPLASH_HEIGHT) * (float) SPLASH_WIDTH);
            int splashLeft = (int) ((splashWidth - displayWidth) / -2f);
            splashImage.layout(splashLeft, 0, displayWidth - splashLeft, displayHeight);
        }
    }
}
