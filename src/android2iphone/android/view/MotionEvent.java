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

package android.view;

/**
 * <i>(XMLVM Compatibility Class)</i>
 * <p>
 * Object used to report movement (mouse, pen, finger, trackball) events. This
 * class may hold either absolute or relative movements, depending on what it is
 * being used for.
 */
public class MotionEvent {
    public static final int ACTION_DOWN   = 0;
    public static final int ACTION_UP     = 1;
    public static final int ACTION_MOVE   = 2;
    public static final int ACTION_CANCEL = 3;

    private int             action;
    private float           x;
    private float           y;

    public MotionEvent(int action, int x, int y) {
        this.action = action;
        this.x = x;
        this.y = y;
    }

    /**
     * Return the kind of action being performed.
     */
    public final int getAction() {
        return action;
    }

    /**
     * Returns the X coordinate of this event. Whole numbers are pixels; the
     * value may have a fraction for input devices that are sub-pixel precise.
     */
    public final float getX() {
        return x;
    }

    /**
     * Returns the Y coordinate of this event. Whole numbers are pixels; the
     * value may have a fraction for input devices that are sub-pixel precise.
     */
    public final float getY() {
        return y;
    }
}
