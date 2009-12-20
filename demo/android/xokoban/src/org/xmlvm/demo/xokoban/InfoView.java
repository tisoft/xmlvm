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

import android.content.Context;
import android.view.View;
import android.widget.Button;
import android.widget.CheckBox;

/**
 * A info view that is shown when the user clicks on the (i) button. It contains
 * playing instructions and settings for the game.
 */
public class InfoView extends SplashView {
    private OnCloseHandler onCloseHandler;
    private CheckBox       enableAccelerometer;
    private Button         okButton;

    public InfoView(final Context context, GameView gameView) {
        super(context, gameView, R.drawable.splash_info);

        enableAccelerometer = new CheckBox(context);
        enableAccelerometer.setChecked(((Xokoban) context).isAccelerometerEnabled());
        addView(enableAccelerometer, 1);

        okButton = new Button(context);
        okButton.setText("OK");
        addView(okButton, 2);
        okButton.setOnClickListener(new OnClickListener() {

            @Override
            public void onClick(View view) {
                if (enableAccelerometer.isChecked()) {
                    ((Xokoban) context).enableAccelerometer();
                } else {
                    ((Xokoban) context).disableAccelerometer();
                }

                if (shown) {
                    hide();
                    onCloseHandler.onClose();

                    if (((Xokoban) context).isFirstRun()) {
                        ((Xokoban) context).setFirstRun(false);
                        getGameController().loadLevel(true);
                    }
                }
            }
        });
        layoutUi();
    }
    
    private void layoutUi() {
        // The positions below are calculated from the 800x480 original. So this
        // is the factor we need to use in order to get the positions on any
        // other sized display.
        float sizeFactor = displayHeight / 480f;

        int topCheckbox = (int) (380 * sizeFactor);
        int sizeCheckbox = (int) (60 * sizeFactor);
        int topButton = (int) (385 * sizeFactor);
        int heightButton = (int) (60 * sizeFactor);
        int widthButton = (int) (90 * sizeFactor);

        // Because the background image might be cropped at the sides, but for
        // sure will also be centered, we calculate the positions relative from
        // the center.
        int checkboxLeft = (int) ((displayWidth / 2f) - (310f * sizeFactor));
        int buttonLeft = (int) ((displayWidth / 2f) + (40f * sizeFactor));

        enableAccelerometer.layout(checkboxLeft, topCheckbox, checkboxLeft + sizeCheckbox,
                topCheckbox + sizeCheckbox);
        okButton.layout(buttonLeft, topButton, buttonLeft + widthButton, topButton + heightButton);
    }

    /**
     * Sets the handler that should be called when this dialog is closing.
     */
    public void setOnCloseHandler(OnCloseHandler handler) {
        onCloseHandler = handler;
    }

    private GameController getGameController() {
        return gameView.getGameController();
    }
}
