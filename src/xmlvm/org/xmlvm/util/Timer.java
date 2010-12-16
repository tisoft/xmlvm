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

package org.xmlvm.util;

/**
 * A simple timer that can be used e.g. for debugging.
 */
public class Timer {
    private final String name;
    private long         start;
    private long         end;


    /**
     * Initializes the timer with the given name.
     * 
     * @param name
     *            the name of the timer
     */
    public Timer(String name) {
        this.name = name;
    }

    /**
     * Starts the timer.
     */
    public void start() {
        start = System.currentTimeMillis();
    }

    /**
     * Stops the timer.
     * 
     * @return Returns itself.
     */
    public Timer stop() {
        end = System.currentTimeMillis();
        return this;
    }

    /**
     * Returns a string with the name of the timer and the milliseconds between
     * {@link #start()} and {@link #stop()}.
     */
    @Override
    public String toString() {
        return name + ":" + (end - start) + " ms.";
    }
}
