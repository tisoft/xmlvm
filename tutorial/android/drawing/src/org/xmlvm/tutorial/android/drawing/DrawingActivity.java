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

package org.xmlvm.tutorial.android.drawing;

import android.app.Activity;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.view.View;

/**
 * This application demonstrates simple drawing primitives. A View subclass may
 * override method <code>onDraw()</code> that will be invoked every time the
 * view needs to be redrawn. This method should not be called directly. 
 * This example creates an anonymous subclass of view overriding onDraw() and
 * uses it as the Activity's content view. Classes <code>Canvas</code>, 
 * <code>Paint</code>, and <code>Drawable</code> are used for some drawing
 * operations.
 */
public class DrawingActivity extends Activity {

    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);

        /*
         * Create an instance of an anonymous class whose base class is
         * android.view.View and whose method onDraw() is overridden.
         */
        View rootView = new View(this) {

            /*
             * Method onDraw() will be called by Android whenever the view needs
             * to be redrawn. It is given a Canvas object that can be used for
             * drawing operations.
             */
            @Override
            protected void onDraw(Canvas canvas) {
                super.onDraw(canvas);

                /*
                 * Create a Paint object that aggregates different settings for
                 * subsequent drawing operations.
                 */
                Paint p = new Paint();
                /*
                 * Set anti-aliasing to false.
                 * http://en.wikipedia.org/wiki/Anti-aliasing
                 */
                p.setAntiAlias(false);
                /*
                 * Set the drawing color to red with no transparency. The color
                 * is specified as (Alpha, Red, Green, Blue) tuple whose values
                 * must be between 0-255.
                 */
                p.setColor(Color.argb(255, 255, 0, 0));
                /*
                 * Draw a rectangle at the position (50, 50) of size (50, 50).
                 */
                canvas.drawRect(50, 50, 100, 100, p);

                /*
                 * Change the color to Green with a reduced transparency value.
                 */
                p.setColor(Color.argb(102, 0, 255, 0));
                /*
                 * Draw a circle at coordinates (105, 75) with a radius of 25.
                 */
                canvas.drawCircle(105, 75, 25, p);

                /*
                 * In the following we render a PNG file on the canvas. It is
                 * referenced via the R-class and loaded via
                 * getResources().getDrawable(). The Drawable object represents
                 * the PNG file.
                 */
                Drawable d = getResources().getDrawable(R.drawable.xmlvm_logo);
                /*
                 * Define the drawing bounds. If the bounds do not match the
                 * geometry of the size of the Drawable, the image is stretched
                 * accordingly.
                 */
                d.setBounds(150, 50, 250, 129);
                /*
                 * Draw the Drawable on the canvas.
                 */
                d.draw(canvas);
            }

        };

        setContentView(rootView);
    }
}