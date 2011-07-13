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

public class MultiTouchActivity extends Activity {
    /** Called when the activity is first created. */
    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(new View(this) {

            private List<Point> positions = new ArrayList<Point>();

            @Override
            protected void onDraw(Canvas canvas) {
                super.onDraw(canvas);

                Paint paint = new Paint();
                paint.setAntiAlias(false);
                paint.setStyle(Style.FILL_AND_STROKE);
                paint.setColor(Color.WHITE);

                for (Point point : positions) {
                    canvas.drawCircle(point.x, point.y, 50, paint);
                }
            }

            @Override
            public boolean onTouchEvent(MotionEvent event) {
                int action = event.getAction();

                switch (action & MotionEvent.ACTION_MASK) {
                case MotionEvent.ACTION_DOWN:
                case MotionEvent.ACTION_POINTER_DOWN:
                    storeTouches(event, -1);
                    break;

                case MotionEvent.ACTION_MOVE:
                    storeTouches(event, -1);
                    break;

                case MotionEvent.ACTION_UP:
                case MotionEvent.ACTION_POINTER_UP:
                    int id = action & MotionEvent.ACTION_POINTER_INDEX_MASK;
                    storeTouches(event, id);
                    break;
                }

                invalidate();
                return true;
            }

            private void storeTouches(MotionEvent event, int ignore) {
                positions.clear();
                for (int i = 0; i < event.getPointerCount(); i++) {
                    if (i != ignore) {
                        Point point = new Point((int) event.getX(i), (int) event.getY(i));
                        positions.add(point);
                    }
                }
            }

        });
    }
}