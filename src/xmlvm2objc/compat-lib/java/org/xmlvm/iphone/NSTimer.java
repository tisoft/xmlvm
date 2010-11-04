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
public class NSTimer extends NSObject {

    private NSTimerDelegate target;
    private Object          userInfo;
    private boolean         timer_repeats;
    private Thread          thread;
    private long            milliInterval;


    @SuppressWarnings("CallToThreadStartDuringObjectConstruction")
    private NSTimer(float timerInterval, NSTimerDelegate target, Object userInfo, boolean repeats) {
        this.target = target;
        this.userInfo = userInfo;
        timer_repeats = repeats;
        this.milliInterval = (long) (timerInterval * 1000);
        thread = new Thread() {

            @Override
            @SuppressWarnings("SleepWhileHoldingLock")
            public void run() {
                while (true) {
                    try {
                        Thread.sleep(milliInterval);
                    } catch (InterruptedException e) {
                        return;
                    }
                    timerTick();
                    if (!timer_repeats) {
                        break;
                    }
                }
            }
        };
        thread.start();
    }

    /**
     * Create a new NSTimer object
     * 
     * @param timerInterval
     *            time interval in seconds
     * @param target
     *            object to receive the specified message
     * @param userInfo
     *            The user info to provide to the target method
     * @param repeats
     *            If true, the timer will repeat itself. If false, will fire
     *            once.
     */
    public static NSTimer scheduledTimerWithTimeInterval(float seconds, NSTimerDelegate target,
            Object userinfo, boolean repeats) {
        return new NSTimer(seconds, target, userinfo, repeats);
    }

    private void timerTick() {
        target.timerEvent(userInfo);
    }

    public void invalidate() {
        thread.interrupt();
    }
}
