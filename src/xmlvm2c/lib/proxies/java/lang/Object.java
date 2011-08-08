/* 
 * Licensed to the Apache Software Foundation (ASF) under one or more
 * contributor license agreements.  See the NOTICE file distributed with
 * this work for additional information regarding copyright ownership.
 * The ASF licenses this file to You under the Apache License, Version 2.0
 * (the "License"); you may not use this file except in compliance with
 * the License.  You may obtain a copy of the License at
 * 
 *     http://www.apache.org/licenses/LICENSE-2.0
 * 
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package java.lang;

import java.util.ArrayList;
import java.util.List;

import org.xmlvm.runtime.Condition;
import org.xmlvm.runtime.Mutex;

/**
 * The root class of the Java class hierarchy. All non-primitive types
 * (including arrays) inherit either directly or indirectly from this class.
 * <p>
 * {@code Object} provides some fundamental methods for accessing the
 * {@link Class} of an object, getting its {@link #hashCode()}, or checking
 * whether one object {@link #equals(Object)} another. The {@link #toString()}
 * method can be used to convert an object reference into a printable string and
 * is often overridden in subclasses.
 * <p>
 * The {@link #wait()} and {@link #notify()} methods provide a foundation for
 * synchronization, acquiring and releasing an internal monitor associated with
 * each {@code Object}.
 */
public class Object {

    /*
     * This class must be implemented by the vm vendor. Object is the root of
     * the java class hierarchy. All non-base types respond to the messages
     * defined in this class.
     */

    native private static void initNativeLayer();
    
    static {
        initNativeLayer();
    }
    
    /**
     * Constructs a new instance of {@code Object}.
     */
    public Object() {
    }

    /**
     * Creates and returns a copy of this {@code Object}. The default
     * implementation returns a so-called "shallow" copy: It creates a new
     * instance of the same class and then copies the field values (including
     * object references) from this instance to the new instance. A "deep" copy,
     * in contrast, would also recursively clone nested objects. A subclass that
     * needs to implement this kind of cloning should call {@code super.clone()}
     * to create the new instance and then create deep copies of the nested,
     * mutable objects.
     *
     * @return a copy of this object.
     * @throws CloneNotSupportedException
     *             if this object's class does not implement the {@code
     *             Cloneable} interface.
     */
    native protected Object clone() throws CloneNotSupportedException;

    /**
     * Compares this instance with the specified object and indicates if they
     * are equal. In order to be equal, {@code o} must represent the same object
     * as this instance using a class-specific comparison. The general contract
     * is that this comparison should be both transitive and reflexive.
     * <p>
     * The implementation in {@code Object} returns {@code true} only if {@code
     * o} is the exact same object as the receiver (using the == operator for
     * comparison). Subclasses often implement {@code equals(Object)} so that
     * it takes into account the two object's types and states.
     * <p>
     * The general contract for the {@code equals(Object)} and {@link
     * #hashCode()} methods is that if {@code equals} returns {@code true} for
     * any two objects, then {@code hashCode()} must return the same value for
     * these objects. This means that subclasses of {@code Object} usually
     * override either both methods or none of them.
     *
     * @param o
     *            the object to compare this instance with.
     * @return {@code true} if the specified object is equal to this {@code
     *         Object}; {@code false} otherwise.
     * @see #hashCode
     */
    native public boolean equals(Object o);

    /**
     * Is called before the object's memory is being reclaimed by the VM. This
     * can only happen once the VM has detected, during a run of the garbage
     * collector, that the object is no longer reachable by any thread of the
     * running application.
     * <p>
     * The method can be used to free system resources or perform other cleanup
     * before the object is garbage collected. The default implementation of the
     * method is empty, which is also expected by the VM, but subclasses can
     * override {@code finalize()} as required. Uncaught exceptions which are
     * thrown during the execution of this method cause it to terminate
     * immediately but are otherwise ignored.
     * <p>
     * Note that the VM does guarantee that {@code finalize()} is called at most
     * once for any object, but it doesn't guarantee when (if at all) {@code
     * finalize()} will be called. For example, object B's {@code finalize()}
     * can delay the execution of object A's {@code finalize()} method and
     * therefore it can delay the reclamation of A's memory. To be safe, use a
     * {@link java.lang.ref.ReferenceQueue}, because it provides more control
     * over the way the VM deals with references during garbage collection.
     *
     * @throws Throwable
     *             any exception which is raised during finalization; these are
     *             ignored by the virtual machine.
     */
    native protected void finalize() throws Throwable;

    /**
     * Returns the unique instance of {@link Class} which represents this
     * object's class. Note that {@code getClass()} is a special case in that it
     * actually returns {@code Class<? extends Foo>} where {@code Foo} is the
     * erasure of the type of expression {@code getClass()} was called upon.
     * <p>
     * As an example, the following code actually compiles, although one might
     * think it shouldn't:
     * <p>
     * <pre>
     * List<Integer> l = new ArrayList<Integer>();
     * Class<? extends List> c = l.getClass();
     * </pre>
     *
     * @return this object's {@code Class} instance.
     */
    native public final Class<? extends Object> getClass();

    /**
     * Returns an integer hash code for this object. By contract, any two
     * objects for which {@code equals(Object)} returns {@code true} must return
     * the same hash code value. This means that subclasses of {@code Object}
     * usually override both methods or neither method.
     *
     * @return this object's hash code.
     * @see #equals
     */
    native public int hashCode();

    /**
     * Causes a thread which is waiting on this object's monitor (by means of
     * calling one of the {@code wait()} methods) to be woken up. If more than
     * one thread is waiting, one of them is chosen at the discretion of the
     * virtual machine. The chosen thread will not run immediately. The thread
     * that called {@code notify()} has to release the object's monitor first.
     * Also, the chosen thread still has to compete against other threads that
     * try to synchronize on the same object.
     * <p>
     * This method can only be invoked by a thread which owns this object's
     * monitor. A thread becomes owner of an object's monitor
     * </p>
     * <ul>
     * <li>by executing a synchronized method of that object;</li>
     * <li>by executing the body of a {@code synchronized} statement that
     * synchronizes on the object;</li>
     * <li>by executing a synchronized static method if the object is of type
     * {@code Class}.</li>
     * </ul>
     *
     * @see #notifyAll
     * @see #wait()
     * @see #wait(long)
     * @see #wait(long,int)
     * @see java.lang.Thread
     */
    public final void notify() {
        notify2();
    }

    /**
     * Causes all threads which are waiting on this object's monitor (by means
     * of calling one of the {@code wait()} methods) to be woken up. The threads
     * will not run immediately. The thread that called {@code notify()} has to
     * release the object's monitor first. Also, the threads still have to
     * compete against other threads that try to synchronize on the same object.
     * <p>
     * This method can only be invoked by a thread which owns this object's
     * monitor. A thread becomes owner of an object's monitor
     * </p>
     * <ul>
     * <li>by executing a synchronized method of that object;</li>
     * <li>by executing the body of a {@code synchronized} statement that
     * synchronizes on the object;</li>
     * <li>by executing a synchronized static method if the object is of type
     * {@code Class}.</li>
     * </ul>
     *
     * @throws IllegalMonitorStateException
     *             if the thread calling this method is not the owner of this
     *             object's monitor.
     * @see #notify
     * @see #wait()
     * @see #wait(long)
     * @see #wait(long,int)
     * @see java.lang.Thread
     */
    public final void notifyAll() {
        notifyAll2();
    }

    /**
     * Returns a string containing a concise, human-readable description of this
     * object. Subclasses are encouraged to override this method and provide an
     * implementation that takes into account the object's type and data. The
     * default implementation simply concatenates the class name, the '@' sign
     * and a hexadecimal representation of the object's {@link #hashCode()},
     * that is, it is equivalent to the following expression:
     *
     * <pre>
     * getClass().getName() + '@' + Integer.toHexString(hashCode())
     * </pre>
     *
     * @return a printable representation of this object.
     */
    public String toString() {
        return getClass().getName() + '@' + Integer.toHexString(hashCode()); 
    }

    /**
     * Causes the calling thread to wait until another thread calls the {@code
     * notify()} or {@code notifyAll()} method of this object. This method can
     * only be invoked by a thread which owns this object's monitor; see
     * {@link #notify()} on how a thread can become the owner of a monitor.
     * <p>
     * A waiting thread can be sent {@code interrupt()} to cause it to
     * prematurely stop waiting, so {@code wait} should be called in a loop to
     * check that the condition that has been waited for has been met before
     * continuing.
     * </p>
     * <p>
     * While the thread waits, it gives up ownership of this object's monitor.
     * When it is notified (or interrupted), it re-acquires the monitor before
     * it starts running.
     * </p>
     *
     * @throws IllegalMonitorStateException
     *             if the thread calling this method is not the owner of this
     *             object's monitor.
     * @throws InterruptedException
     *             if another thread interrupts this thread while it is waiting.
     * @see #notify
     * @see #notifyAll
     * @see #wait(long)
     * @see #wait(long,int)
     * @see java.lang.Thread
     */
    public final void wait() throws InterruptedException {
        wait2();
    }

    /**
     * Causes the calling thread to wait until another thread calls the {@code
     * notify()} or {@code notifyAll()} method of this object or until the
     * specified timeout expires. This method can only be invoked by a thread
     * which owns this object's monitor; see {@link #notify()} on how a thread
     * can become the owner of a monitor.
     * <p>
     * A waiting thread can be sent {@code interrupt()} to cause it to
     * prematurely stop waiting, so {@code wait} should be called in a loop to
     * check that the condition that has been waited for has been met before
     * continuing.
     * </p>
     * <p>
     * While the thread waits, it gives up ownership of this object's monitor.
     * When it is notified (or interrupted), it re-acquires the monitor before
     * it starts running.
     * </p>
     *
     * @param millis
     *            the maximum time to wait in milliseconds.
     * @throws IllegalArgumentException
     *             if {@code millis < 0}.
     * @throws IllegalMonitorStateException
     *             if the thread calling this method is not the owner of this
     *             object's monitor.
     * @throws InterruptedException
     *             if another thread interrupts this thread while it is waiting.
     * @see #notify
     * @see #notifyAll
     * @see #wait()
     * @see #wait(long,int)
     * @see java.lang.Thread
     */
    public final void wait(long millis) throws InterruptedException {
        wait2(millis);
    }

    /**
     * Causes the calling thread to wait until another thread calls the {@code
     * notify()} or {@code notifyAll()} method of this object or until the
     * specified timeout expires. This method can only be invoked by a thread
     * that owns this object's monitor; see {@link #notify()} on how a thread
     * can become the owner of a monitor.
     * <p>
     * A waiting thread can be sent {@code interrupt()} to cause it to
     * prematurely stop waiting, so {@code wait} should be called in a loop to
     * check that the condition that has been waited for has been met before
     * continuing.
     * </p>
     * <p>
     * While the thread waits, it gives up ownership of this object's monitor.
     * When it is notified (or interrupted), it re-acquires the monitor before
     * it starts running.
     * </p>
     *
     * @param millis
     *            the maximum time to wait in milliseconds.
     * @param nanos
     *            the fraction of a millisecond to wait, specified in
     *            nanoseconds.
     * @throws IllegalArgumentException
     *             if {@code millis < 0}, {@code nanos < 0} or {@code nanos >
     *             999999}.
     * @throws IllegalMonitorStateException
     *             if the thread calling this method is not the owner of this
     *             object's monitor.
     * @throws InterruptedException
     *             if another thread interrupts this thread while it is waiting.
     * @see #notify
     * @see #notifyAll
     * @see #wait()
     * @see #wait(long,int)
     * @see java.lang.Thread
     */
    native public final void wait(long millis, int nanos) throws InterruptedException;

    ////////////////////////////////////////////////
    // synchronized implementation
    ////////////////////////////////////////////////

    /**
     * In order to reduce the state size for each object, members that are not
     * used for most objects are confined to this object. All objects will have
     * one of these objects as part of their state, but it will usually be null.
     */
    private static class AddedMembers {
        // For synchronization
        public int recursiveLocks = 0; // the number of recursive locks. If only synchronized once, this is 1
        public Thread owningThread; // the thread that owns the lock or null for none
        public Mutex instanceMutex;

        // For wait(), wait(long), notify(), notifyAll()

        // Array of Conditions which are waiting for a a signal or broadcast. It
        // is initialized with an initialCapacity of 0 since most Objects won't
        // use wait/notify
        private List<Condition> waitingConditions = new ArrayList<Condition>(0);
        // if a notifyAll occurs, notify every thread at or before or this index
        private int notifyAllMaxIndex = -1;

        public AddedMembers() {
            instanceMutex = new Mutex();
        }
    }

    private static Mutex staticMutex = new Mutex();
    private AddedMembers addedMembers = null;

    /**
     * Update the state with knowledge that the mutex has been locked
     */
    private void establishLock() {
        Thread curThread = Thread.currentThread();
        staticMutex.lock();
        {
            this.addedMembers.owningThread = curThread;
        }
        staticMutex.unlock();
    }

    /**
     * Prepare for the mutex to be unlocked
     */
    private void prepareForUnlock() {
        staticMutex.lock();
        {
            this.addedMembers.owningThread = null;
        }
        staticMutex.unlock();
    }

    private void syncLock() {
        addedMembers.instanceMutex.lock();
        establishLock();
    }

    private void syncUnlock() {
        prepareForUnlock();
        addedMembers.instanceMutex.unlock();
    }

    /**
     * Do not delete this! It is called from a native method.
     *
     * @return true if the lock was acquired or false if the thread already had
     *         the lock
     */
    private final boolean acquireLockRecursive() {
        boolean acquireLock = false;

        Thread curThread = Thread.currentThread();
        staticMutex.lock();
        {
            if (addedMembers == null) {
                addedMembers = new AddedMembers();
            }
            acquireLock = !curThread.equals(this.addedMembers.owningThread);
        }
        staticMutex.unlock();

        if (acquireLock) {
            this.syncLock();
        }
        this.addedMembers.recursiveLocks++;
        //log.debug("---    Locked                       level " + this.recursiveLocks + ", Hash (mostly unique): " + this.syncMutex.hashCode());

        return acquireLock;
    }

    /**
     * Do not delete this! It is called from a native method.
     */
    private final void releaseLockRecursive() {
        //log.debug("--- Unlocking                       level " + this.recursiveLocks + ", Hash (mostly unique): " + this.syncMutex.hashCode());
        this.addedMembers.recursiveLocks--;
        //if (acquireLock) {
        if (this.addedMembers.recursiveLocks == 0) {
            this.syncUnlock();
        }
    }

    ////////////////////////////////////////////////
    // wait / notify implementation
    ////////////////////////////////////////////////

    /**
     * Create a condition for the thread to soon wait on and add the condition
     * to the list of waiters. The thread does not yet begin waiting in this
     * method though.
     *
     * @return the condition on which to wake up the soon to be waiting thread
     */
    private Condition enqueueNewCondition() {
        Condition signalCondition = new Condition(this);
        this.addedMembers.waitingConditions.add(signalCondition);
        return signalCondition;
    }

    /**
     * Verify that a synchronized lock is obtained. If it was not already done,
     * throw an IllegalMonitorStateException.
     *
     * @throws IllegalMonitorStateException
     */
    private void checkSynchronized() {
        boolean ownsObjectMonitor = false;
        Thread owningThread = null;

        staticMutex.lock();
        {
            if (this.addedMembers != null) {
                owningThread = this.addedMembers.owningThread;
            }
        }
        staticMutex.unlock();

        ownsObjectMonitor = Thread.currentThread().equals(owningThread);
        if (!ownsObjectMonitor) {
            throw new IllegalMonitorStateException("the current thread is not the owner of the object's monitor");
        }
    }

    /**
     * Attempt to remove a condition from the list of conditions to be notified.
     * This is only required for wait(long) when a timeout occurs or a thread is interrupted.
     * Since the index does not remain consistent, we must traverse the list and find the condition index.
     * @param signalCondition the condition to attempt to remove.
     * @return true if the condition was removed or false if the condition could not be found
     */
    private boolean removeThreadNotification(Condition signalCondition) {
        int i = 0;
        boolean found = false;
        while (!found && i < this.addedMembers.waitingConditions.size()) {
            if (this.addedMembers.waitingConditions.get(i) == signalCondition) {
                found = true;

                this.addedMembers.waitingConditions.remove(i);
                if (i <= this.addedMembers.notifyAllMaxIndex) {
                    this.addedMembers.notifyAllMaxIndex--;
                }
            } else {
                i++;
            }
        }
        return found;
    }

    private static int getRandInclusive(int min, int max) {
        return (int)(Math.random() * (max - min + 1)) + min;
    }

    /**
     * @param signalCondition the condition on which the Thread will wait
     * @return the number of recursive synchronized locks on this object when
     *         wait() or wait(long) was called. If the thread is already
     *         interrupted, this value will be negated.
     */
    private int preWait(Condition signalCondition) {
        Thread.currentThread().setWaitingCondition(signalCondition);

        int numLocks = this.addedMembers.recursiveLocks;
        this.addedMembers.recursiveLocks = 0;

        // Clear the interrupted status and determine if the interrupted status
        // was set to TRUE before being cleared
        boolean alreadyInterrupted = Thread.interrupted();

        // pthread_cond_wait or pthread_cond_timedwait will unlock the mutex, so
        // prepare the state of this Object
        this.prepareForUnlock();

        return alreadyInterrupted ? -numLocks : numLocks;
    }

    /**
     * @param numLocks
     *            the number of recursive synchronized locks to reacquire after a
     *            wait() or wait(long) has awakened. If this value is negative,
     *            use the absolute value and throw an InterruptedException.
     * @return true if the thread was interrupted at any point since the "wait"
     *         process began, indicating that an InterruptedException needs to
     *         be thrown, else false
     */
    private boolean postWait(int numLocks) {
        boolean wasInterrupted = false;

        // pthread_cond_wait or pthread_cond_timedwait already relocked the
        // mutex, so establish the state with that knowledge
        this.establishLock();

        Thread.currentThread().setWaitingCondition(null);

        // Clear the interrupted status & see if the Thread was interrupted
        // since last check
        if (Thread.interrupted()) {
            wasInterrupted = true;
        }

        if (numLocks < 0) {
            // The Thread was interrupted before we started waiting
            numLocks = -numLocks;
            wasInterrupted = true;
        }

        // Restore the number of recursive locks
        this.addedMembers.recursiveLocks = numLocks;

        return wasInterrupted;
    }

    private void wait2() throws InterruptedException {
        this.checkSynchronized();

        Condition signalCondition = enqueueNewCondition();

        int numLocks = this.preWait(signalCondition);
        // If it was already interrupted
        if (numLocks < 0) {
            // Don't do anything. The Thread was interrupted already.
            // I don't believe the JVM spec temporarily unlocks & relocks the
            // mutex at this point in order to give blocked threads a chance, so
            // we aren't either.
        } else {
            // Since the condition already has "this", it could just grab the
            // instance mutex instead of making us provide it here, but then
            // AddedMembers would have to be public.
            signalCondition.wait(this.addedMembers.instanceMutex);
        }
        boolean wasInterrupted = this.postWait(numLocks);
        if (wasInterrupted) {
            throw new InterruptedException();
        }
    }

    private void wait2(long timeout) throws InterruptedException {
        // log.debug("Waiting " + timeout);
        if (timeout < 0L) {
            throw new IllegalArgumentException("the value of timeout is negative");
        } else if (timeout == 0L) {
            wait2();
        } else {

            this.checkSynchronized();

            Condition signalCondition = enqueueNewCondition();

            boolean timedOut = false;
            int numLocks = this.preWait(signalCondition);
            // If it was already interrupted
            if (numLocks < 0) {
                // Don't do anything. The Thread was interrupted already.
                // I don't believe the JVM spec temporarily unlocks & relocks the
                // mutex at this point in order to give blocked threads a chance, so
                // we aren't either.
            } else {
                // Since the condition already has "this", it could just grab the
                // instance mutex instead of making us provide it here, but then
                // AddedMembers would have to be public.
                timedOut = signalCondition.waitOrTimeout(this.addedMembers.instanceMutex, timeout);
            }
            boolean wasInterrupted = this.postWait(numLocks);

            // If it timed out
            if (timedOut) {
                // Remove the condition from the list of conditions to be notified
                this.removeThreadNotification(signalCondition);
            }

            if (wasInterrupted) {
                throw new InterruptedException();
            }
        }
    }

    private void notify2() {
        this.checkSynchronized();

        // If called after a notifyAll(), but before all have been notified, notify() should only
        // notify a condition that would not otherwise be notified by the previous notifyAll().
        if (this.addedMembers.waitingConditions.size() > this.addedMembers.notifyAllMaxIndex + 1) {
            // This can be any index after the range already included for notification due to a "notifyAll"
            int indexToUnlock = getRandInclusive(this.addedMembers.notifyAllMaxIndex + 1, this.addedMembers.waitingConditions.size() - 1);

            // Remove the condition from the list of conditions to be notified
            Condition nextConditionToUnlock = this.addedMembers.waitingConditions.remove(indexToUnlock);

            // There is no need to decrement notifyAllMaxIndex since the notified index is greater than the max for notifyAll

            //log.debug("(ONE) Broadcasting " + nextConditionToUnlock.hashCode());
            nextConditionToUnlock.broadcast();
        }
    }

    private void notifyAll2() {
        this.checkSynchronized();

        // Any condition waiting to be notified can now be notified, but NOT any
        // conditions/threads that are waiting after this notification, even if
        // before the notifications complete.
        this.addedMembers.notifyAllMaxIndex = this.addedMembers.waitingConditions.size() - 1;

        while (this.addedMembers.notifyAllMaxIndex >= 0) {
            int indexToUnlock = getRandInclusive(0, this.addedMembers.notifyAllMaxIndex);

            // Remove the condition from the list of conditions to be notified
            Condition nextConditionToUnlock = this.addedMembers.waitingConditions.remove(indexToUnlock);
            this.addedMembers.notifyAllMaxIndex--;

            //log.debug("(ALL) Broadcasting " + nextConditionToUnlock.hashCode());
            nextConditionToUnlock.broadcast();
        }
    }

    /**
     * Notify a specific waiting thread immediately after marking the thread as interrupted.
     * This is called from java_lang_Thread to interrupt a thread that is definitely waiting on this object.
     * @param signalCondition the condition to signal
     */
    void interruptWait(Condition signalCondition) {
        // It is safe to synchronize on the waiting object since if the thread is waiting, it released the object's monitor.
        // OR if another thread is sleeping while synchronized on the object, the waiting thread will have to wait for its interruption until the sleep to finishes anyways.
        this.acquireLockRecursive(); // start synchronized block

        // Remove the thread from the list of threads to be notified since it will be interrupted
        boolean found = removeThreadNotification(signalCondition);
        if (found) {
            //log.debug("Interrupting condition " + signalCondition.hashCode());
            signalCondition.broadcast();
        } else {
            //log.debug("Thread is not currently in the waiting list.");
        }

        this.releaseLockRecursive(); // finish synchronized block
    }
}
