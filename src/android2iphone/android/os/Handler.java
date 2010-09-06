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

package android.os;

import org.xmlvm.iphone.NSObject;
import org.xmlvm.iphone.NSTimer;
import org.xmlvm.iphone.NSTimerDelegate;

import android.internal.Assert;

public class Handler {
    Runnable toRun = null;
    NSTimer  timer = null;
    float    delay;

    public Handler() {
    }

    public Handler(Looper looper) {
        Assert.NOT_IMPLEMENTED();
    }

    public final boolean postDelayed(Runnable r, long delayMillis) {
        this.toRun = r;
        this.delay = ((float) delayMillis) / 1000;
        NSObject.performSelectorOnMainThread(this, "xmlvmStartTimer", null, true);
        return true;
    }

    public void post(Runnable r) {
        this.toRun = r;
        this.delay = 0;
        NSObject.performSelectorOnMainThread(this, "xmlvmStartTimer", null, true);
    }

    public void removeCallbacks(Runnable runnable) {
        if (runnable == toRun) {
            timer.invalidate();
        }
    }

    public void xmlvmStartTimer(Object ticks) {
        //TODO what to do witch ticks?
        timer = new NSTimer(delay, new NSTimerDelegate() {
            public void timerEvent(Object notUsed) {
                toRun.run();
            }
        }, null, false);
    }

    public void handleMessage(Message msg) {
        Assert.NOT_IMPLEMENTED();
    }

    public void dispatchMessage(Message msg) {
        Assert.NOT_IMPLEMENTED();
    }

    public void sendMessage(Message message) {
        Assert.NOT_IMPLEMENTED();
    }

    public boolean sendMessageDelayed(Message msg, long delayMillis) {
        Assert.NOT_IMPLEMENTED();
        return false;
    }
}
