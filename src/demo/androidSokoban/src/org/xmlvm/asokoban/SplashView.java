package org.xmlvm.asokoban;

import android.content.Context;
import android.widget.AbsoluteLayout;
import android.widget.ImageView;

/**
 * A splash view shown right after the start of the application.
 */
public class SplashView extends AbsoluteLayout {
    /**
     * Creates the SplashView with a background image.
     */
    public SplashView(Context context) {
        super(context);
        ImageView splashImage = new ImageView(context);
        splashImage.setImageResource(R.drawable.splash);
        addView(splashImage, 0);
    }
}
