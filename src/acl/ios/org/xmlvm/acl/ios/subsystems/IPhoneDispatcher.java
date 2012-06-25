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

package org.xmlvm.acl.ios.subsystems;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.xmlvm.acl.common.subsystems.CommonDispatcher;
import org.xmlvm.iphone.NSThread;
import org.xmlvm.iphone.CFRunLoop;
import org.xmlvm.iphone.NSObject;
import org.xmlvm.iphone.NSSelector;
import org.xmlvm.iphone.NSTimer;
import org.xmlvm.iphone.NSTimerDelegate;

/**
 *
 */
public class IPhoneDispatcher implements CommonDispatcher {
    private Map<Runnable, List<NSTimer>> scheduledRunnables = new HashMap<Runnable, List<NSTimer>>();
    // private CFRunLoop contextRunLoop;
    private NSThread                     contextThread;


    public IPhoneDispatcher() {
        // contextRunLoop = CFRunLoop.getCurrent();
        contextThread = NSThread.currentThread();
    }

    @Override
    public boolean postDelayed(Runnable r, long delayMillis) {
        if (delayMillis == 0) {
            final Runnable runnable = r;
            NSObject.performSelector(new NSSelector<Object>() {

                @Override
                public void invokeWithArgument(Object arg) {
                    runnable.run();
                }

            }, contextThread, null, false);
        } else {
            double delay = (double) delayMillis / 1000.0d;
            NSTimer timer = NSTimer.scheduledTimerWithTimeInterval(delay, new NSTimerDelegate() {
                public void timerEvent(NSTimer timer) {
                    runTimer(timer);
                }
            }, r, false);

            // TODO: Check mode
            // contextRunLoop.addTimer(timer, null);

            List<NSTimer> timers = scheduledRunnables.get(r);
            if (timers == null) {
                timers = new ArrayList<NSTimer>();
                scheduledRunnables.put(r, timers);
            }

            timers.add(timer);
        }
        return true;
    }

    public void post(Runnable r) {
        postDelayed(r, 0);
    }

    public void removeCallbacks(Runnable r) {
        List<NSTimer> timers = scheduledRunnables.get(r);
        if (timers != null) {
            for (int i = 0; i < timers.size(); i++) {
                NSTimer timer = timers.get(i);
                timer.invalidate();
            }

            timers.clear();
            scheduledRunnables.remove(r);
        }
    }

    public void runTimer(NSTimer timer) {
        final Runnable r = (Runnable) timer.userInfo();

        NSObject.performSelector(new NSSelector<Object>() {

            @Override
            public void invokeWithArgument(Object arg) {
                r.run();
            }
        }, contextThread, null, false);

        List<NSTimer> timers = scheduledRunnables.get(r);
        if (timers != null) {
            timers.remove(timer);
            if (timers.size() == 0) {
                scheduledRunnables.remove(r);
            }
        }
    }

}
