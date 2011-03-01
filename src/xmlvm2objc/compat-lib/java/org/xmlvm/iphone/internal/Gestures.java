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

package org.xmlvm.iphone.internal;

import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.event.MouseEvent;
import java.util.ArrayList;
import java.util.List;

import javax.swing.Timer;

public class Gestures implements ActionListener {

    private List<GestureListener> listeners;

    int                           x, y;
    int                           dx, dy;
    long                          t;
    long                          dt;
    int                           dxSwipe, dySwipe;
    float                         decay;
    Timer                         timer;
    boolean                       ignoreMouseClick = false;


    public Gestures() {
        listeners = new ArrayList<GestureListener>();
        timer = null;
    }

    private void stopTimer() {
        if (timer != null) {
            timer.stop();
            timer = null;
        }
    }

    public void mouseClicked(MouseEvent event) {
        if (!ignoreMouseClick) {
            for (GestureListener l : listeners)
                l.mouseClicked(event.getX(), event.getY());
        }
        ignoreMouseClick = false;
    }

    public void mouseEntered(MouseEvent arg0) {
    }

    public void mouseExited(MouseEvent arg0) {
    }

    public void mousePressed(MouseEvent e) {
        if (timer != null)
            ignoreMouseClick = true;
        x = e.getX();
        y = e.getY();
        t = e.getWhen();
        stopTimer();
    }

    public void mouseReleased(MouseEvent e) {
        long delta = e.getWhen() - t;
        if (Math.abs(delta) < 30) {
            double dist = Math.sqrt(dx * dx + dy * dy);
            double v = dist / dt;
            int swipeSpeed = (int) Math.round(v * 3);
            stopTimer();
            dxSwipe = 0;
            if (dx < 0)
                dxSwipe = -swipeSpeed;
            if (dx > 0)
                dxSwipe = swipeSpeed;
            dySwipe = 0;
            if (dy < 0)
                dySwipe = -swipeSpeed;
            if (dy > 0)
                dySwipe = swipeSpeed;
            decay = 1;
            timer = new Timer(1, this);
            timer.start();
        }
    }

    public void mouseDragged(MouseEvent e) {
        dx = e.getX() - x;
        dy = e.getY() - y;
        dt = e.getWhen() - t;
        x = e.getX();
        y = e.getY();
        t = e.getWhen();
        for (GestureListener l : listeners)
            l.gestureDragged(dx, dy);
    }

    public void mouseMoved(MouseEvent arg0) {
    }

    public void addGestureListener(GestureListener listener) {
        listeners.add(listener);
    }

    public void actionPerformed(ActionEvent e) {
        decay -= 0.01;
        if (decay < 0) {
            stopTimer();
        } else {
            for (GestureListener l : listeners)
                l.gestureDragged((int) (decay * dxSwipe), (int) (decay * dySwipe));
        }
    }
}
