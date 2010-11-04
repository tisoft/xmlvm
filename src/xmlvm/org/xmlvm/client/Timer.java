/*
 * Copyright (c) 2004-2010 XMLVM --- An XML-based Programming Language
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

package org.xmlvm.client;

import java.awt.event.ActionListener;
import java.util.ArrayList;
import java.util.List;

public class Timer extends Thread {

    private List<ActionListener> listeners = new ArrayList<ActionListener>();
    private int                  millis;
    private boolean              repeating = true;


    @Override
    public void run() {
        while (repeating && !isInterrupted()) {
            try {
                sleep(millis);
            } catch (InterruptedException e) {
                this.interrupt();
            }
            for (ActionListener listener : listeners) {
                listener.actionPerformed(null);
            }
        }
    }

    public void addActionListener(ActionListener listener) {
        this.listeners.add(listener);
    }

    public void runOnce(int millis) {
        this.millis = millis;
        repeating = false;
        start();
    }

    public void runRepeating(int millis) {
        this.millis = millis;
        repeating = true;
        start();
    }
}
