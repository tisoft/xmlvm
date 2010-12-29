/* Copyright (c) 2002-2011 by XMLVM.org
 *
 * Project Info:  http://www.xmlvm.org
 *
 * This program is free software; you can redistribute it and/or modify it
 * under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 *
 * This library is distributed in the hope that it will be useful, but
 * WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY
 * or FITNESS FOR A PARTICULAR PURPOSE. See the GNU Lesser General Public
 * License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public
 * License along with this library; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301,
 * USA.
 */

package android.graphics.drawable;

import java.io.InputStream;
import java.util.Arrays;

import android.graphics.Canvas;
import android.graphics.Rect;
import android.internal.Assert;
import android.util.StateSet;

/**
 * @author arno
 * 
 */
public abstract class Drawable {
    private static final Rect ZERO_BOUNDS_RECT = new Rect();
    private Rect              bounds           = ZERO_BOUNDS_RECT;
    private int[]             stateSet         = StateSet.WILD_CARD;

    public boolean setState(final int[] stateSet) {
        if (!Arrays.equals(this.stateSet, stateSet)) {
            this.stateSet = stateSet;
            return onStateChange(stateSet);
        }
        return false;
    }

    public int[] getState() {
        return stateSet;
    }

    protected boolean onStateChange(int[] state) {
        return false;
    }

    public final Rect getBounds() {
        if (bounds == ZERO_BOUNDS_RECT) {
            bounds = new Rect();
            bounds.right = getIntrinsicWidth();
            bounds.bottom = getIntrinsicHeight();
        }

        return bounds;
    }

    /**
     * Return the intrinsic width of the underlying drawable object. Returns -1
     * if it has no intrinsic width, such as with a solid color.
     */
    public int getIntrinsicWidth() {
        return -1;
    }

    /**
     * Return the intrinsic height of the underlying drawable object. Returns -1
     * if it has no intrinsic height, such as with a solid color.
     */
    public int getIntrinsicHeight() {
        return -1;
    }

    /**
     * Returns the minimum width suggested by this Drawable. If a View uses this
     * Drawable as a background, it is suggested that the View use at least this
     * value for its width. (There will be some scenarios where this will not be
     * possible.) This value should INCLUDE any padding.
     * 
     * @return The minimum width suggested by this Drawable. If this Drawable
     *         doesn't have a suggested minimum width, 0 is returned.
     */
    public int getMinimumWidth() {
        final int intrinsicWidth = getIntrinsicWidth();
        return intrinsicWidth > 0 ? intrinsicWidth : 0;
    }

    /**
     * Returns the minimum height suggested by this Drawable. If a View uses
     * this Drawable as a background, it is suggested that the View use at least
     * this value for its height. (There will be some scenarios where this will
     * not be possible.) This value should INCLUDE any padding.
     * 
     * @return The minimum height suggested by this Drawable. If this Drawable
     *         doesn't have a suggested minimum height, 0 is returned.
     */
    public int getMinimumHeight() {
        final int intrinsicHeight = getIntrinsicHeight();
        return intrinsicHeight > 0 ? intrinsicHeight : 0;
    }

    public static abstract class ConstantState {
        public abstract Drawable newDrawable();

        public abstract int getChangingConfigurations();
    }

    public ConstantState getConstantState() {
        return null;
    }

    public boolean isStateful() {
        return false;
    }

    public Drawable getCurrent() {
        return this;
    }

    public boolean getPadding(Rect padding) {
        padding.set(0, 0, 0, 0);
        return false;
    }

    public void setBounds(int left, int top, int right, int bottom) {
        Rect oldBounds = bounds;

        if (oldBounds == ZERO_BOUNDS_RECT) {
            oldBounds = bounds = new Rect();
        }

        if (oldBounds.left != left || oldBounds.top != top || oldBounds.right != right
                || oldBounds.bottom != bottom) {
            bounds.set(left, top, right, bottom);
            onBoundsChange(bounds);
        }
    }

    /**
     * Specify a bounding rectangle for the Drawable. This is where the drawable
     * will draw when its draw() method is called.
     */
    public void setBounds(Rect bounds) {
        setBounds(bounds.left, bounds.top, bounds.right, bounds.bottom);
    }

    protected void onBoundsChange(Rect bounds) {
    }

    public abstract void draw(Canvas canvas);

    public static Drawable createFromStream(InputStream is, String srcName) {
        Assert.NOT_IMPLEMENTED();
        return null;
    }

    public void setFilterBitmap(boolean filter) {
        Assert.NOT_IMPLEMENTED();
    }

    public void setDither(boolean dither) {
        Assert.NOT_IMPLEMENTED();
    }
}
