package org.xmlvm.asokoban;

import android.content.Context;
import android.widget.AbsoluteLayout;
import android.widget.ImageView;

/**
 * A info view that is shown when the user clicks on the (i) button. It contains
 * playing instructions and settings for the game.
 */
public class InfoView extends AbsoluteLayout {
    private InputController inputController;
    private GameView        gameView;
    private boolean         shown;

    public InfoView(Context context, GameView gameView) {
        super(context);
        this.gameView = gameView;
        ImageView splashImage = new ImageView(context);
        splashImage.setImageResource(R.drawable.splash_info);
        addView(splashImage, 0);
    }

    /**
     * Adds this view to the {@link GameView} so it is shown.
     */
    public void show() {
        gameView.addView(this);
        shown = true;

        // When the user taps the screen, the View should disappear.
        inputController.setTapHandler(new SimpleTapHandler() {
            public void onTap() {
                if (shown) {
                    hide();
                }
            }
        });
    }

    /**
     * Removes this view from the {@link GameView} so it is hidden.
     */
    public void hide() {
        gameView.removeView(this);
        inputController.setTapHandler(null);
        shown = false;
    }

    /**
     * Sets the InputController that is used to respond to user input.
     */
    public void setInputController(InputController inputController) {
        this.inputController = inputController;
    }
}
