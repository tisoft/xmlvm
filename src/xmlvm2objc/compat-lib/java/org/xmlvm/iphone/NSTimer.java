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

package org.xmlvm.iphone;

import org.xmlvm.XMLVMIgnore;
import org.xmlvm.XMLVMSkeletonOnly;

@XMLVMSkeletonOnly
public class NSTimer<A> extends NSObject {
    
    @XMLVMIgnore
    private class ThreadInstance extends Thread {
        @Override
        @SuppressWarnings( { "SleepWhileHoldingLock", "SleepWhileInLoop" })
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
    }

    private NSTimerDelegate<A> target;
    private A                  userInfo;
    private boolean            timer_repeats;
    private Thread             thread;
    private long               milliInterval;


    @SuppressWarnings("CallToThreadStartDuringObjectConstruction")
    private NSTimer(double timerInterval, NSTimerDelegate<A> target, A userInfo, boolean repeats) {
        this.target = target;
        this.userInfo = userInfo;
        timer_repeats = repeats;
        this.milliInterval = (long) (timerInterval * 1000);
        thread = new ThreadInstance();
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
    public static <A> NSTimer scheduledTimerWithTimeInterval(double seconds, NSTimerDelegate<A> target,
            A userinfo, boolean repeats) {
        return new NSTimer<A>(seconds, target, userinfo, repeats);
    }

    private void timerTick() {
        target.timerEvent(userInfo);
    }

    public void invalidate() {
        thread.interrupt();
    }
}
