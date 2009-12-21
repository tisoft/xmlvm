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
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.ImageView;
import android.widget.ImageView.ScaleType;

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

        this.setBackgroundColor(Color.GREEN);
        this.gameView = gameView;

        splashImage = new ImageView(context);
        splashImage.setImageResource(resourceId);
        splashImage.setScaleType(ScaleType.CENTER_CROP);
        splashImage.layout(0, 0, displayWidth, displayHeight);

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
    }
}
