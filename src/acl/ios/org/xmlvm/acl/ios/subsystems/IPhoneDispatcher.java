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

import org.xmlvm.acl.common.subsystems.CommonDispatcher;
import org.xmlvm.iphone.NSObject;
import org.xmlvm.iphone.NSSelector;
import org.xmlvm.iphone.NSTimer;
import org.xmlvm.iphone.NSTimerDelegate;

/**
 *
 */
public class IPhoneDispatcher implements CommonDispatcher {

    Runnable toRun = null;
    NSTimer  timer = null;
    float    delay;
    
    @Override
    public void postDelayed(Runnable r, long delayMillis) {
        this.toRun = r;
        if(delayMillis!=0) {
            this.delay = ((float) delayMillis) / 1000;
        } else {
            this.delay = 0;    
        }
        NSObject.performSelectorOnMainThread(new NSSelector() {

            @Override
            public void invokeWithArgument(Object arg) {
                startTimer(arg);
            }
        }, null, true);
    }
    
    @SuppressWarnings("unused")
    private void startTimer(Object ticks) {
        // TODO what to do witch ticks?
        timer = NSTimer.scheduledTimerWithTimeInterval(delay, new NSTimerDelegate() {
            public void timerEvent(NSTimer notUsed) {
                toRun.run();
            }
        }, null, false);
    }
    
    public void invalidate() {
        timer.invalidate();
    }
    
}
