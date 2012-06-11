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

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.xmlvm.acl.common.subsystems.CommonDispatcher;

import android.internal.Assert;
import android.internal.CommonDeviceAPIFinder;

public class Handler {
    private Map<Runnable, List<CommonDispatcher>> scheduledRunnables = new HashMap<Runnable, List<CommonDispatcher>>();


    public Handler() {
    }

    public Handler(Looper looper) {
        Assert.NOT_IMPLEMENTED();
    }

    public final boolean postDelayed(Runnable r, long delayMillis) {
        CommonDispatcher timer = CommonDeviceAPIFinder.instance().getDispatcher();
        List<CommonDispatcher> timers = scheduledRunnables.get(r);
        if (timers == null) {
            timers = new ArrayList<CommonDispatcher>();
            scheduledRunnables.put(r, timers);
        }

        timers.add(timer);
        RunnableWrapper wrapper = new RunnableWrapper(r, timer);
        timer.postDelayed(wrapper, delayMillis);
        return true;

    }

    public void post(Runnable r) {
        postDelayed(r, 0);
    }

    public void removeCallbacks(Runnable runnable) {
        List<CommonDispatcher> timers = scheduledRunnables.get(runnable);
        if (timers != null) {
            for (int i = 0; i < timers.size(); i++) {
                CommonDispatcher timer = timers.get(i);
                timer.invalidate();
            }

            timers.clear();
            scheduledRunnables.remove(runnable);
        }
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
    
    
    
    class RunnableWrapper implements Runnable
    {
        private Runnable r;
        private CommonDispatcher timer;
        
        RunnableWrapper(Runnable r, CommonDispatcher timer)
        {
            this.r = r;
            this.timer = timer;
        }
        
        @Override
        public void run() {
            r.run();
            List<CommonDispatcher> timers = scheduledRunnables.get(r);
            timers.remove(timer);
            if (timers.size() == 0) {
                scheduledRunnables.remove(r);
            }
        }
        
    }
}
