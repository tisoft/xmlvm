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

import java.util.LinkedList;
import java.util.Queue;

/**
 *
 */
public class Mutex {

    /**
     * Object instances which have been "sychronized" upon have an
     * "instanceMutex". See Object.AddedMembers. Because the instance may still
     * be synchronized upon during finalization, thus needing the
     * "instanceMutex", and because finalizers are executed in no particular
     * order, it is critical that the "instanceMutex" finalizers are not treated
     * as normal finalizers. If they were, the "instanceMutex" could be
     * finalized before the instance and cause an error.
     * 
     * So when the normal process finds a Mutex for finalization, the native
     * mutex is added to this List, delaying the native mutex destruction until
     * immediately following normal finalizer invocation.
     * 
     * This does NOT need to be synchronized because this list is only ever
     * accessed in the finalizer thread. See
     * FinalizerNotifier.startFinalizerThread()
     */
    private static Queue<Object> finalizableNativeMutexList = new LinkedList<Object>();

    /**
     * Add a native mutex to the queue for finalization.
     *
     * This does NOT need to be synchronized because the list is only ever
     * accessed in the finalizer thread. See
     * FinalizerNotifier.startFinalizerThread()
     *
     * Don't delete this. It is used natively.
     *
     * @param nativeMutex the reference to the native mutex
     */
    @SuppressWarnings("unused")
    private static void addNativeMutexToFinalizerQueue(Object nativeMutex) {
        finalizableNativeMutexList.add(nativeMutex);
    }

    /**
     * Destroy all native mutexes which are pending destruction.
     * 
     * This does NOT need to be synchronized because the list is only ever
     * accessed in the finalizer thread. See
     * FinalizerNotifier.startFinalizerThread()
     */
    public static void destroyFinalizableNativeMutexes() {
        Object nativeMutex = null;
        while ((nativeMutex = finalizableNativeMutexList.poll()) != null) {
            destroyNativeMutex(nativeMutex);
        }
    }

    /**
     * Destroy a native mutex instance
     * @param nativeMutex the reference to the native mutex
     */
    private static native void destroyNativeMutex(Object nativeMutex);

    /**
     * Don't delete this. It is used natively.
     */
    @SuppressWarnings("unused")
    private Object nativeMutex;

    public Mutex() {
        initNativeInstance();
    }

    private native void initNativeInstance();

    public native void lock();
    public native void unlock();
}
