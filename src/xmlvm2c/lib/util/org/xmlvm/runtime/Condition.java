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

package org.xmlvm.runtime;

/**
 * A condition on which to wait, signal and broadcast to other threads
 */
public class Condition {
    /**
     * Don't delete this. It is used natively.
     */
    @SuppressWarnings("unused")
    private Object pthreadCondT;

    private Object synchronizedObject;

    /**
     * @param synchronizedObject
     *            the Object on which the Thread is synchronized before invoking
     *            any of these methods
     */
    public Condition(Object synchronizedObject) {
        this.synchronizedObject = synchronizedObject;
        initNativeConditionInstance();
    }

    private native void initNativeConditionInstance();

    /**
     * @return the Object on which the Thread is synchronized before it invokes
     *         any methods in this class
     */
    public Object getSynchronizedObject() {
        return synchronizedObject;
    }

    /**
     * Wait until another thread signals or broadcasts this condition.
     * This should only be called when the mutex is locked. Otherwise, unpredictable results will occur.
     * @param mutex the locked mutex which will be unlocked during the wait period and relocked before returning
     */
    public native void wait(Mutex mutex);

    /**
     * Wait for either the timeout period or until another thread signals or broadcasts this condition
     * @param mutex the locked mutex which will be unlocked during the wait period and relocked before returning
     * @param timeoutMillis the number of milliseconds to wait before a timeout occurs
     * @return true if the timeout expired (i.e. it timed out), false if the condition was signaled or broadcasted
     */
    public native boolean waitOrTimeout(Mutex mutex, long timeoutMillis);

    /**
     * Signal this condition so if at least one thread is waiting on it, at
     * least one of those threads will wake up. On a multi-processor, it may be
     * impossible to avoid unblocking more than one blocked thread.
     * See documentation on C's pthread_cond_signal.
     */
    public native void signal();

    /**
     * Broadcast this condition so that all threads waiting on it will wake up
     */
    public native void broadcast();
}
