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

package android.os;

import org.xmlvm.acl.common.subsystems.CommonDispatcher;

import android.internal.Assert;
import android.internal.CommonDeviceAPIFinder;

public class Handler {
    private CommonDispatcher dispatcher;


    public Handler() {
        dispatcher = CommonDeviceAPIFinder.instance().getDispatcher();
    }

    public Handler(Looper looper) {
        Assert.NOT_IMPLEMENTED();
    }

    public final boolean postDelayed(Runnable r, long delayMillis) {
        return dispatcher.postDelayed(r, delayMillis);
    }

    public void post(Runnable r) {
        dispatcher.post(r);
    }

    public void removeCallbacks(Runnable r) {
        dispatcher.removeCallbacks(r);
    }

    public void handleMessage(Message msg) {
        Assert.NOT_IMPLEMENTED();
    }

    public void dispatchMessage(Message msg) {
        Assert.NOT_IMPLEMENTED();
    }

    public boolean sendMessage(final Message message) {
        post(new Runnable() {
            @Override
            public void run() {
                handleMessage((Message) message);
            }
        });
        return true;
    }

    public boolean sendMessageDelayed(Message msg, long delayMillis) {
        Assert.NOT_IMPLEMENTED();
        return false;
    }

    public boolean sendEmptyMessage(int what) {
        Message msg = new Message();
        msg.what = what;
        return sendMessage(msg);
    }
}
