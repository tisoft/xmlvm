package org.xmlvm.asokoban;

import android.content.Context;
import android.view.View;
import android.widget.AbsoluteLayout;
import android.widget.Button;
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
        Button okButton = new Button(context);
        okButton.setText("OK");
        AbsoluteLayout.LayoutParams p = new AbsoluteLayout.LayoutParams(
                AbsoluteLayout.LayoutParams.WRAP_CONTENT, AbsoluteLayout.LayoutParams.WRAP_CONTENT,
                380, 150);
        okButton.setLayoutParams(p);
        addView(okButton);
        okButton.setOnClickListener(new OnClickListener() {

            @Override
            public void onClick(View view) {
                if (shown) {
                    hide();
                }
            }
        });
    }

    /**
     * Adds this view to the {@link GameView} so it is shown.
     */
    public void show() {
        gameView.addView(this);
        shown = true;
        
        // TODO(sascha) install a dummy tap handler so that the "Next/Prev/Cancel" dialog doesn't pop up.
        inputController.setTapHandler(new SimpleTapHandler() {
            public void onTap() {
                // Do nothing
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
