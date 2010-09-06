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

package org.xmlvm.iphone;

import org.xmlvm.XMLVMSkeletonOnly;

@XMLVMSkeletonOnly
public class NSTimer extends NSObject implements Runnable {

	private NSTimerDelegate target;
    private Object  userInfo;

    private boolean repeats;
    private Thread  thread;
    private long    milliInterval;

    public NSTimer(float timerInterval, NSTimerDelegate target, Object userInfo, boolean repeats) {
        this.target = target;
        this.userInfo = userInfo;
        this.repeats = repeats;
        this.milliInterval = (long) (timerInterval * 1000);
        thread = new Thread(this);
        thread.start();
    }

    public void run() {
        while (true) {
            try {
                Thread.sleep(milliInterval);
            } catch (InterruptedException e) {
                return;
            }
            timerTick();
            if (!repeats) {
                break;
            }
        }
    }

    private void timerTick() {
    	target.timerEvent(userInfo);
    }

    public void invalidate() {
        thread.interrupt();
    }
}
