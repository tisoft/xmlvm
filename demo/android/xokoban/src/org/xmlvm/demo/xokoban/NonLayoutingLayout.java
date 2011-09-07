package org.xmlvm.demo.xokoban;

import org.xmlvm.demo.xokoban.activity.XokobanActivity;

import android.content.Context;
import android.util.AttributeSet;
import android.view.ViewGroup;

/**
 * A simple layout that do not do any layouting on its own. It can be used as
 * the view for the board on which we layout all the pieces manually.
 */
public class NonLayoutingLayout extends ViewGroup {

    public NonLayoutingLayout(Context context, AttributeSet attrs) {
        super(context, attrs);
    }

    @Override
    protected void onLayout(boolean changed, int l, int t, int r, int b) {
        // No layouting.
    }

    @Override
    protected void onSizeChanged(int width, int height, int oldWidth, int oldHeight) {
        /*
         * When this method is called, we know the size of the game field which
         * is needed to compute the geometry of the tiles. Now we can load the
         * game that depends on that geometry.
         */
        ((XokobanActivity) this.getContext()).loadGame();
    }

}
