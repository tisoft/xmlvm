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

package android.graphics.drawable;

import android.graphics.Rect;
import android.internal.Assert;

public class DrawableContainer extends Drawable {

    private int                    currentIndex    = -1;
    private Drawable               currentDrawable = null;

    private DrawableContainerState drawableContainerState;

    protected void setConstantState(DrawableContainerState state) {
        drawableContainerState = state;
    }

    /*
     * (non-Javadoc)
     * 
     * @see android.graphics.drawable.Drawable#getBounds()
     */
    @Override
    public Rect getBounds() {
        return new Rect(0, 0, getIntrinsicWidth(), getIntrinsicHeight());
    }

    @Override
    public int getIntrinsicWidth() {
        if (drawableContainerState.isConstantSize()) {
            return drawableContainerState.getConstantWidth();
        }
        return currentDrawable != null ? currentDrawable.getIntrinsicWidth() : -1;
    }

    @Override
    public int getIntrinsicHeight() {
        if (drawableContainerState.isConstantSize()) {
            return drawableContainerState.getConstantHeight();
        }
        return currentDrawable != null ? currentDrawable.getIntrinsicHeight() : -1;
    }

    @Override
    public int getMinimumWidth() {
        if (drawableContainerState.isConstantSize()) {
            return drawableContainerState.getConstantMinimumWidth();
        }
        return currentDrawable != null ? currentDrawable.getMinimumWidth() : 0;
    }

    @Override
    public int getMinimumHeight() {
        if (drawableContainerState.isConstantSize()) {
            return drawableContainerState.getConstantMinimumHeight();
        }
        return currentDrawable != null ? currentDrawable.getMinimumHeight() : 0;
    }

    @Override
    public boolean isStateful() {
        return drawableContainerState.isStateful();
    }

    public boolean selectDrawable(int idx) {
        if (idx == currentIndex) {
            return false;
        }

        if (idx >= 0 && idx < drawableContainerState.numChildren) {
            Drawable d = drawableContainerState.drawables[idx];
            if (currentDrawable != null) {
                // currentDrawable.setVisible(false, false);
            }

            currentDrawable = d;
            currentIndex = idx;
            if (d != null) {
                // d.setVisible(isVisible(), true);
                // d.setAlpha(mAlpha);
                // d.setDither(mDither);
                // d.setColorFilter(mColorFilter);
                // d.setState(getState());
                // d.setLevel(getLevel());
                // d.setBounds(getBounds());
            }
        } else {
            if (currentDrawable != null) {
                // currentDrawable.setVisible(false, false);
            }
            currentDrawable = null;
            currentIndex = -1;
        }
        // invalidateSelf();
        return true;
    }

    @Override
    public Drawable getCurrent() {
        return currentDrawable;
    }

    public abstract static class DrawableContainerState extends ConstantState {
        protected static final int      INIT_SIZE            = 10;
        private final DrawableContainer owner;
        private boolean                 constantSize         = false;
        private boolean                 computedConstantSize = false;
        private int                     constantWidth;
        private int                     constantHeight;
        private int                     constantMinimumWidth;
        private int                     constantMinimumHeight;
        private int                     numChildren;
        protected Drawable[]            drawables            = new Drawable[INIT_SIZE];

        DrawableContainerState(DrawableContainerState orig, DrawableContainer owner) {
            this.owner = owner;
            if (orig != null) {
                Assert.NOT_IMPLEMENTED();
            }
        }

        public final int addChild(Drawable dr) {
            final int pos = numChildren;

            if (pos >= drawables.length) {
                growArray(pos, pos + 10);
            }

            drawables[pos] = dr;
            numChildren++;

            return pos;
        }

        public final int getChildCount() {
            return numChildren;
        }

        public final Drawable[] getChildren() {
            return drawables;
        }

        @Override
        public int getChangingConfigurations() {
            Assert.NOT_IMPLEMENTED();
            return 0;
        }

        public void growArray(int oldSize, int newSize) {
            Drawable[] newDrawables = new Drawable[newSize];
            System.arraycopy(drawables, 0, newDrawables, 0, oldSize);
            drawables = newDrawables;
        }

        public final boolean isStateful() {
            return true;
        }

        public final int getConstantWidth() {
            if (!computedConstantSize) {
                computeConstantSize();
            }

            return constantWidth;
        }

        public final int getConstantHeight() {
            if (!computedConstantSize) {
                computeConstantSize();
            }

            return constantHeight;
        }

        public final int getConstantMinimumWidth() {
            if (!computedConstantSize) {
                computeConstantSize();
            }

            return constantMinimumWidth;
        }

        public final int getConstantMinimumHeight() {
            if (!computedConstantSize) {
                computeConstantSize();
            }

            return constantMinimumHeight;
        }

        private void computeConstantSize() {
            computedConstantSize = true;

            final int N = getChildCount();
            final Drawable[] drawables = this.drawables;
            constantWidth = constantHeight = 0;
            constantMinimumWidth = constantMinimumHeight = 0;
            for (int i = 0; i < N; i++) {
                Drawable dr = drawables[i];
                int s = dr.getIntrinsicWidth();
                if (s > constantWidth)
                    constantWidth = s;
                s = dr.getIntrinsicHeight();
                if (s > constantHeight)
                    constantHeight = s;
                s = dr.getMinimumWidth();
                if (s > constantMinimumWidth)
                    constantMinimumWidth = s;
                s = dr.getMinimumHeight();
                if (s > constantMinimumHeight)
                    constantMinimumHeight = s;
            }
        }

        public final boolean isConstantSize() {
            return constantSize;
        }

    }
}
