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

package org.xmlvm.acl.sdl.subsystems;

import java.util.HashMap;
import java.util.Map;
import java.util.PriorityQueue;
import java.util.Queue;

import org.xmlvm.acl.common.subsystems.CommonDispatcher;

import sdljava.SDLTimer;
import android.internal.Assert;

/**
 *
 */
public class SDLDispatcher implements CommonDispatcher {
    // A task queue, sorted by scheduling time
    private Queue<Task> tasks = new PriorityQueue<Task>();
    
    // To support removal
    private Map<Runnable, Task> taskLookup = new HashMap<Runnable, Task>();
    
    
    /* (non-Javadoc)
     * @see org.xmlvm.acl.common.subsystems.CommonDispatcher#post(java.lang.Runnable)
     */
    @Override
    public void post(Runnable r) {
        postDelayed(r, 0);
    }

    /* (non-Javadoc)
     * @see org.xmlvm.acl.common.subsystems.CommonDispatcher#postDelayed(java.lang.Runnable, long)
     */
    @Override
    public boolean postDelayed(Runnable r, long delayMillis) {
        Task task = new Task(SDLTimer.getTicks() + delayMillis, r);
        tasks.add(task);
        taskLookup.put(r, task);
        return true;
    }

    /* (non-Javadoc)
     * @see org.xmlvm.acl.common.subsystems.CommonDispatcher#removeCallbacks(java.lang.Runnable)
     */
    @Override
    public void removeCallbacks(Runnable r) {
        Task t = taskLookup.get(r);
        if (t != null) {
            tasks.remove(t);
            taskLookup.remove(r);
        }
    }


    public void runDispatchCycle() {
        long now = SDLTimer.getTicks();
        while (!tasks.isEmpty() && tasks.peek().time <= now) {
            tasks.poll().r.run();
        }
    }
    
    private static class Task implements Comparable<Task> {
        private long     time;
        private Runnable r;
        public Task(long time, Runnable r) {
            this.time = time;
            this.r    = r;
        }
        /* (non-Javadoc)
         * @see java.lang.Comparable#compareTo(java.lang.Object)
         */
        @Override
        public int compareTo(Task t) {
            // The int cast is wrong for very large time differentials (millions of seconds)
            // ...but we do not expect those.
            return (int) (time - t.time);
        }
    }
    
}
