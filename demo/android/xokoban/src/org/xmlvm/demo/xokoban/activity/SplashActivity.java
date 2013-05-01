package org.xmlvm.demo.xokoban.activity;

import org.xmlvm.demo.xokoban.R;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.KeyEvent;
import android.view.Window;
import android.view.WindowManager;
import android.widget.ImageView;

/**
 * The splash screen activity for Xokoban, run when the application starts.
 */
public class SplashActivity extends Activity {
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);

        // No title bar.
        this.requestWindowFeature(Window.FEATURE_NO_TITLE);

        // Switch to fullscreen view, getting rid of the status bar as well.
        this.getWindow().setFlags(WindowManager.LayoutParams.FLAG_FULLSCREEN,
                WindowManager.LayoutParams.FLAG_FULLSCREEN);

        // Set the layout.
        setContentView(R.layout.splash);

        // On click on the splash image, the game activity should start.
        getSplashImage().setOnClickListener(new OnClickListener() {
            @Override
            public void onClick(View view) {
                startGame();
            }
        });
    }
    
    /**
     * Closes the splash screen and starts the game.
     */
    private void startGame() {
        SplashActivity.this.startActivity(new Intent(SplashActivity.this,
                XokobanActivity.class));
        SplashActivity.this.finish();
    }

    /**
     * Returns the splash image {@link ImageView}.
     */
    private ImageView getSplashImage() {
        return (ImageView) findViewById(R.id.splashImage);
    }
    
    @Override
    public boolean onKeyUp(int keyCode, KeyEvent event) {
        startGame();
        return true;
    }
}
