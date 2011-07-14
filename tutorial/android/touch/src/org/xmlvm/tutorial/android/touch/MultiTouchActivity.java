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

package org.xmlvm.tutorial.android.touch;

import java.util.ArrayList;
import java.util.List;

import android.app.Activity;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.graphics.Point;
import android.os.Bundle;
import android.view.MotionEvent;
import android.view.View;

/**
 * This application demonstrates multi-touch capabilities of Android devices. A
 * white circle is shown wherever a finger touches the screen. If multiple
 * fingers touch the screen, multiple white circles are shown. If a finger is
 * dragged over the screen, the white circle follows the finger. Note that the
 * Android emulator can only simulate one touch (via the mouse). Also note that
 * not all Android devices support multi-touch.
 */
public class MultiTouchActivity extends Activity {

    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        /*
         * Use an instance of an anonymous class deriving from
         * android.view.View. Two methods are overridden: onDraw() (for drawing
         * the white circles) and onTouchEvent() (for intercepting any touches
         * events)
         */
        setContentView(new View(this) {

            /*
             * Field 'positions' maintains a list of active touch positions on
             * the screen. It is used by onDraw() to draw the white ciricles and
             * updated by onTouchEvent().
             */
            private List<Point> positions = new ArrayList<Point>();

            @Override
            protected void onDraw(Canvas canvas) {
                super.onDraw(canvas);

                Paint paint = new Paint();
                paint.setAntiAlias(false);
                paint.setStyle(Style.FILL_AND_STROKE);
                paint.setColor(Color.WHITE);

                /*
                 * At each current touch position, draw a white circle with a
                 * diameter of 50 pixels.
                 */
                for (Point point : positions) {
                    canvas.drawCircle(point.x, point.y, 50, paint);
                }
            }

            /*
             * This method will be called whenever a new touches event has
             * occurred. A touches event can be putting down a finger on the
             * display, lifting a finger, or moving a finger. The list of active
             * touch position is updated accordingly.
             */
            @Override
            public boolean onTouchEvent(MotionEvent event) {
                /*
                 * Get the type of this motion event.
                 */
                int action = event.getAction();

                /*
                 * Depending on what the user did (lift finger, etc) perform
                 * different actions.
                 */
                switch (action & MotionEvent.ACTION_MASK) {
                case MotionEvent.ACTION_DOWN:
                case MotionEvent.ACTION_POINTER_DOWN:
                    /*
                     * User put (another) finger on the screen.
                     */
                    storeTouches(event, -1);
                    break;

                case MotionEvent.ACTION_MOVE:
                    /*
                     * User moved a finger.
                     */
                    storeTouches(event, -1);
                    break;

                case MotionEvent.ACTION_UP:
                case MotionEvent.ACTION_POINTER_UP:
                    /*
                     * User lifted a finger.
                     */
                    int id = action & MotionEvent.ACTION_POINTER_INDEX_MASK;
                    /*
                     * Store all touches but ignore the one where the user
                     * lifted the finger.
                     */
                    storeTouches(event, id);
                    break;
                }

                invalidate();
                return true;
            }

            private void storeTouches(MotionEvent event, int ignoreID) {
                /*
                 * Clear all previous finger positions.
                 */
                positions.clear();
                /*
                 * Iterate over all the active touches. If the user lifted a
                 * finger, the associated event ID will be 'ignoreID'. In that
                 * case, the event will not be added to 'positions'.
                 */
                for (int i = 0; i < event.getPointerCount(); i++) {
                    if (i != ignoreID) {
                        Point point = new Point((int) event.getX(i), (int) event.getY(i));
                        positions.add(point);
                    }
                }
            }

        });
    }
}