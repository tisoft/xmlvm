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

import java.util.HashMap;
import java.util.Map;

import org.xmlvm.runtime.Condition;
import org.xmlvm.runtime.Mutex;

/**
 * A {@code Thread} is a concurrent unit of execution. It has its own call stack
 * for methods being invoked, their arguments and local variables. Each virtual
 * machine instance has at least one main {@code Thread} running when it is
 * started; typically, there are several others for housekeeping. The
 * application might decide to launch additional {@code Thread}s for specific
 * purposes.
 * <p>
 * {@code Thread}s in the same VM interact and synchronize by the use of shared
 * objects and monitors associated with these objects. Synchronized methods and
 * part of the API in {@link Object} also allow {@code Thread}s to cooperate.
 * <p>
 * There are basically two main ways of having a {@code Thread} execute
 * application code. One is providing a new class that extends {@code Thread}
 * and overriding its {@link #run()} method. The other is providing a new
 * {@code Thread} instance with a {@link Runnable} object during its creation.
 * In both cases, the {@link #start()} method must be called to actually execute
 * the new {@code Thread}.
 * <p>
 * Each {@code Thread} has an integer priority that basically determines the
 * amount of CPU time the {@code Thread} gets. It can be set using the
 * {@link #setPriority(int)} method. A {@code Thread} can also be made a daemon,
 * which makes it run in the background. The latter also affects VM termination
 * behavior: the VM does not terminate automatically as long as there are
 * non-daemon threads running.
 *
 * @see java.lang.Object
 * @see java.lang.ThreadGroup
 */
public class Thread implements Runnable {

    /*
     * This class must be implemented by the VM vendor. The documented methods must
     * be implemented to support other provided class implementations in this
     * package.
     */

    /**
    * A representation of a thread's state. A given thread may only be in one
    * state at a time.
    *
    * @since 1.5
    */

    /**
     * A representation of a thread's state. A given thread may only be in one
     * state at a time.
     */
    public enum State {
        /**
         * The thread has been created, but has never been started.
         */
        NEW,
        /**
         * The thread may be run.
         */
        RUNNABLE,
        /**
         * The thread is blocked and waiting for a lock.
         */
        BLOCKED,
        /**
         * The thread is waiting.
         */
        WAITING,
        /**
         * The thread is waiting for a specified amount of time.
         */
        TIMED_WAITING,
        /**
         * The thread has been terminated.
         */
        TERMINATED
    }

    /**
     * Don't delete these exception objects. They are used natively.
     */
    @SuppressWarnings("unused")
    private Object xmlvmExceptionEnv;
    @SuppressWarnings("unused")
    private Object xmlvmException;
    @SuppressWarnings("unused")
    private Object ptBuffers;

    // Use a mutex instead of the synchronized keyword for 2 reasons:
    // 1. It isn't used recursively, so it'll be more efficient
    // 2. It won't enter an infinite loop from calling initThread() or
    //      currentThread() and then using synchronized again.
    private static Mutex threadSafetyMutex = new Mutex();

    // Start with 2 so that the main thread can be 1
    private static long nextThreadId = 2;
    private static long getNextThreadId() {
        threadSafetyMutex.lock();
        long id = nextThreadId++;
        threadSafetyMutex.unlock();
        return id;
    }

    private long threadId;
    private String threadName;
    private int priority = NORM_PRIORITY;
    private boolean daemon = false;
    private boolean alive = false;
//    private ClassLoader contextClassLoader;
    private Runnable targetRunnable;
    private ThreadGroup threadGroup;

    private boolean interrupted;
    private Condition waitingCondition; // the Condition on which the thread is waiting for a signal/broadcast, if any. This is used to interrupt a "wait" or "sleep"

    // A map of a native thread id to the Thread instance.
    // There is no need for a WeakHashMap, since the threads removed themselves
    // from the map when they finish.
    private static final Map<Long, Thread> threadMap = new HashMap<Long, Thread>();

    // This is the "main" thread group. All thread groups are ancestors to this group.
    // All threads have a thread group, so they can always be referenced until
    // they are removed from their thread group on termination.
    private static final ThreadGroup mainThreadGroup = new ThreadGroup((ThreadGroup)null);

    /**
     * After having set the nativeThreadId, add "this" to the threadMap
     */
    private void addSelfToMap() {
        threadSafetyMutex.lock();
        {
            threadMap.put(Long.valueOf(nativeThreadId), this);
        }
        threadSafetyMutex.unlock();
    }

    private void removeSelfFromMap() {
        threadSafetyMutex.lock();
        {
            threadMap.remove(Long.valueOf(nativeThreadId));
        }
        threadSafetyMutex.unlock();
    }

    private long nativeThreadId;

    public long getNativeThreadId() {
        return nativeThreadId;
    }

    /**
     * Constructor used only for main thread when currentThread() is called in
     * it the first time
     * 
     * @param nativeThreadId
     */
    private Thread(long nativeThreadId) {
        initMainThread();

        this.nativeThreadId = nativeThreadId;

        // The main thread is already running, so add it to the map
        addSelfToMap();

        this.threadId = 1;
        this.threadName = "main";

        this.threadGroup = mainThreadGroup;
        this.threadGroup.add(this);
    }

    /**
     * Do any necessary native initialization for the main thread.
     */
    private native void initMainThread();

    /**
     * @param nativeThreadId
     * @return
     */
    private static Thread getThread(long nativeThreadId) {
        Thread t = null;
        threadSafetyMutex.lock();
        {
            t = threadMap.get(Long.valueOf(nativeThreadId));
        }
        threadSafetyMutex.unlock();

        if (t == null) {
            // The thread wasn't found. That type of request should only happen
            // if it's the main thread, so this doesn't need to be thread safe.
            t = new Thread(nativeThreadId);
        }
        return t;
    }

    public boolean equals(Object obj) {
        boolean equal = false;
        if (obj instanceof Thread) {
            Thread t = (Thread)obj;
            equal = (this.nativeThreadId == t.nativeThreadId);
        }
        return equal;
    }

    /**
     * <p>
     * The maximum priority value allowed for a thread.
     * </p>
     */
    public final static int MAX_PRIORITY = 10;

    /**
     * <p>
     * The minimum priority value allowed for a thread.
     * </p>
     */
    public final static int MIN_PRIORITY = 1;

    /**
     * <p>
     * The normal (default) priority value assigned to threads.
     * </p>
     */
    public final static int NORM_PRIORITY = 5;

    private Runnable action;

    private void initThread(ThreadGroup threadGroup, Runnable targetRunnable, String threadName) {
        this.targetRunnable = targetRunnable;
        this.threadId = getNextThreadId();

        if (threadName == null) {
            this.threadName = "Thread-" + this.threadId;
        } else {
            this.threadName = threadName;
        }

        if (threadGroup == null) {
            // Set the thread group to that of the parent's
            this.threadGroup = Thread.currentThread().getThreadGroup();
        } else {
            this.threadGroup = threadGroup;
        }
    }

    /**
     * Constructs a new Thread with no runnable object and a newly generated
     * name. The new Thread will belong to the same ThreadGroup as the Thread
     * calling this constructor.
     * 
     * @see java.lang.ThreadGroup
     */
    public Thread() {
        initThread(null, null, null);
    }

    /**
     * Constructs a new Thread with a runnable object and a newly generated
     * name. The new Thread will belong to the same ThreadGroup as the Thread
     * calling this constructor.
     * 
     * @param runnable a java.lang.Runnable whose method <code>run</code> will
     *        be executed by the new Thread
     * @see java.lang.ThreadGroup
     * @see java.lang.Runnable
     */
    public Thread(Runnable runnable) {
        initThread(null, runnable, null);
    }

    /**
     * Constructs a new Thread with a runnable object and name provided. The new
     * Thread will belong to the same ThreadGroup as the Thread calling this
     * constructor.
     * 
     * @param runnable a java.lang.Runnable whose method <code>run</code> will
     *        be executed by the new Thread
     * @param threadName Name for the Thread being created
     * @see java.lang.ThreadGroup
     * @see java.lang.Runnable
     */
    public Thread(Runnable runnable, String threadName) {
        initThread(null, runnable, threadName);
    }

    /**
     * Constructs a new Thread with no runnable object and the name provided.
     * The new Thread will belong to the same ThreadGroup as the Thread calling
     * this constructor.
     * 
     * @param threadName Name for the Thread being created
     * @see java.lang.ThreadGroup
     * @see java.lang.Runnable
     */
    public Thread(String threadName) {
        initThread(null, null, threadName);
    }

    /**
     * Constructs a new Thread with a runnable object and a newly generated
     * name. The new Thread will belong to the ThreadGroup passed as parameter.
     * 
     * @param group ThreadGroup to which the new Thread will belong
     * @param runnable a java.lang.Runnable whose method <code>run</code> will
     *        be executed by the new Thread
     * @throws SecurityException if <code>group.checkAccess()</code> fails
     *         with a SecurityException
     * @throws IllegalThreadStateException if <code>group.destroy()</code> has
     *         already been done
     * @see java.lang.ThreadGroup
     * @see java.lang.Runnable
     * @see java.lang.SecurityException
     * @see java.lang.SecurityManager
     */
    public Thread(ThreadGroup group, Runnable runnable) {
        initThread(group, runnable, null);
    }

    /**
     * Constructs a new Thread with a runnable object, the given name and
     * belonging to the ThreadGroup passed as parameter.
     * 
     * @param group ThreadGroup to which the new Thread will belong
     * @param runnable a java.lang.Runnable whose method <code>run</code> will
     *        be executed by the new Thread
     * @param threadName Name for the Thread being created
     * @param stack Platform dependent stack size
     * @throws SecurityException if <code>group.checkAccess()</code> fails
     *         with a SecurityException
     * @throws IllegalThreadStateException if <code>group.destroy()</code> has
     *         already been done
     * @see java.lang.ThreadGroup
     * @see java.lang.Runnable
     * @see java.lang.SecurityException
     * @see java.lang.SecurityManager
     */
    public Thread(ThreadGroup group, Runnable runnable, String threadName, long stack) {
        initThread(group, runnable, threadName);
    }

    /**
     * Constructs a new Thread with a runnable object, the given name and
     * belonging to the ThreadGroup passed as parameter.
     * 
     * @param group ThreadGroup to which the new Thread will belong
     * @param runnable a java.lang.Runnable whose method <code>run</code> will
     *        be executed by the new Thread
     * @param threadName Name for the Thread being created
     * @throws SecurityException if <code>group.checkAccess()</code> fails
     *         with a SecurityException
     * @throws IllegalThreadStateException if <code>group.destroy()</code> has
     *         already been done
     * @see java.lang.ThreadGroup
     * @see java.lang.Runnable
     * @see java.lang.SecurityException
     * @see java.lang.SecurityManager
     */
    public Thread(ThreadGroup group, Runnable runnable, String threadName) {
        initThread(group, runnable, threadName);
    }

    /**
     * Constructs a new Thread with no runnable object, the given name and
     * belonging to the ThreadGroup passed as parameter.
     * 
     * @param group ThreadGroup to which the new Thread will belong
     * @param threadName Name for the Thread being created
     * @throws SecurityException if <code>group.checkAccess()</code> fails
     *         with a SecurityException
     * @throws IllegalThreadStateException if <code>group.destroy()</code> has
     *         already been done
     * @see java.lang.ThreadGroup
     * @see java.lang.SecurityException
     * @see java.lang.SecurityManager
     */
    public Thread(ThreadGroup group, String threadName) {
        initThread(group, null, threadName);
    }

    /**
     * Set the action to be executed when interruption, which is probably be
     * used to implement the interruptible channel. The action is null by
     * default. And if this method is invoked by passing in a non-null value,
     * this action's run() method will be invoked in <code>interrupt()</code>.
     * <p>
     * This is required internally by NIO, so even if it looks like it's
     * useless, don't delete it!
     *
     * @param action the action to be executed when interruption
     */
    @SuppressWarnings("unused")
    private void setInterruptAction(Runnable action) {
        this.action = action;
    }

    /**
     * Returns the number of active {@code Thread}s in the running {@code
     * Thread}'s group and its subgroups.
     * 
     * @return the number of {@code Thread}s
     */
    public native static int activeCount();

    /**
     * Is used for operations that require approval from a SecurityManager. If
     * there's none installed, this method is a no-op. If there's a
     * SecurityManager installed, {@link SecurityManager#checkAccess(Thread)} is
     * called for that SecurityManager.
     * 
     * @throws SecurityException
     *             if a SecurityManager is installed and it does not allow
     *             access to the Thread.
     *
     * @see java.lang.SecurityException
     * @see java.lang.SecurityManager
     */
    public native final void checkAccess();

    /**
     * Returns the number of stack frames in this thread.
     * 
     * @return Number of stack frames
     * @deprecated The results of this call were never well defined. To make
     *             things worse, it would depend on whether the Thread was
     *             suspended or not, and suspend was deprecated too.
     */
    @Deprecated
    public native int countStackFrames();

    /**
     * Returns the Thread of the caller, that is, the current Thread.
     *
     * @return the current Thread.
     */
    public static Thread currentThread() {
        return getThread(getCurrentThreadNativeId());
    }

    private static native long getCurrentThreadNativeId();

    /**
     * Destroys the receiver without any monitor cleanup.
     *
     * @deprecated Not implemented.
     */
    @Deprecated
    public native void destroy();

    /**
     * Prints to the standard error stream a text representation of the current
     * stack for this Thread.
     * 
     * @see Throwable#printStackTrace()
     */
    public native static void dumpStack();

    /**
     * Copies an array with all Threads which are in the same ThreadGroup as the
     * receiver - and subgroups - into the array <code>threads</code> passed as
     * parameter. If the array passed as parameter is too small no exception is
     * thrown - the extra elements are simply not copied.
     * 
     * @param threads
     *            array into which the Threads will be copied
     * @return How many Threads were copied over
     * @throws SecurityException
     *             if the installed SecurityManager fails
     *             {@link SecurityManager#checkAccess(Thread)}
     * @see java.lang.SecurityException
     * @see java.lang.SecurityManager
     */
    public native static int enumerate(Thread[] threads);

    /**
     * Returns the stack traces of all the currently live threads and puts them
     * into the given map.
     * <p>
     * The <code>RuntimePermission("getStackTrace")</code> and
     * <code>RuntimePermission("modifyThreadGroup")</code> are checked before
     * returning a result.
     *
     * @return A Map of current Threads to StackTraceElement arrays.
     * @throws SecurityException
     *             if the current SecurityManager fails the
     *             {@link SecurityManager#checkPermission(java.security.Permission)}
     *             call.
     * @since 1.5
     */
    public native static Map<Thread, StackTraceElement[]> getAllStackTraces();
//    public static Map<Thread, StackTraceElement[]> getAllStackTraces() {
//        return Collections.emptyMap();
//    }

    /**
     * Returns the context ClassLoader for this Thread.
     * <p>
     * If the conditions
     * <ol>
     * <li>there is a security manager
     * <li>the caller's class loader is not null
     * <li>the caller's class loader is not the same as the requested
     * context class loader and not an ancestor thereof
     * </ol>
     * are satisfied, a security check for
     * <code>RuntimePermission("getClassLoader")</code> is performed first.
     *
     * @return ClassLoader The context ClassLoader
     * @see java.lang.ClassLoader
     * @see #getContextClassLoader()
     *
     * @throws SecurityException
     *             if the aforementioned security check fails.
     */
    public native ClassLoader getContextClassLoader();

    /**
     * Returns the default exception handler that's executed when uncaught
     * exception terminates a thread.
     *
     * @return an {@link UncaughtExceptionHandler} or <code>null</code> if
     *         none exists.
     * @since 1.5
     */
    public native static UncaughtExceptionHandler getDefaultUncaughtExceptionHandler();

    /**
     * Returns the thread's identifier. The ID is a positive <code>long</code>
     * generated on thread creation, is unique to the thread, and doesn't change
     * during the lifetime of the thread; the ID may be reused after the thread
     * has been terminated.
     *
     * @return the thread's ID.
     * @since 1.5
     */
    public long getId() {
        return threadId;
    }

    /**
     * Returns the name of the Thread.
     *
     * @return the Thread's name
     */
    public final String getName() {
        return threadName;
    }

    /**
     * Returns the priority of the Thread.
     *
     * @return the Thread's priority
     * @see Thread#setPriority
     */
    public final int getPriority() {
        return priority;
    }

    /**
     * Returns the a stack trace representing the current execution state of
     * this Thread.
     * <p>
     * The <code>RuntimePermission("getStackTrace")</code> is checked before
     * returning a result.
     *
     * @return An array of StackTraceElements.
     * @throws SecurityException if the current SecurityManager fails the
     *         {@link SecurityManager#checkPermission(java.security.Permission)}
     *         call.
     * @since 1.5
     */
    public native StackTraceElement[] getStackTrace();

    /**
     * Returns the current state of the Thread. This method is useful for
     * monitoring purposes.
     *
     * @return a {@link State} value.
     * @since 1.5
     */
    public native State getState();

    /**
     * Returns the ThreadGroup to which this Thread belongs.
     * 
     * @return the Thread's ThreadGroup
     */
    public final ThreadGroup getThreadGroup() {
        return threadGroup;
    }

    /**
     * A sample implementation of this method is provided by the reference
     * implementation. It must be included, as it is called by ThreadLocal.get()
     * and InheritableThreadLocal.get(). Return the value associated with the
     * ThreadLocal in the receiver
     * 
     * @param local ThreadLocal to perform the lookup
     * @return the value of the ThreadLocal
     * @see #setThreadLocal
     */
    native Object getThreadLocal(ThreadLocal<?> local);

    /**
     * Returns the thread's uncaught exception handler. If not explicitly set,
     * then the ThreadGroup's handler is returned. If the thread is terminated,
     * then <code>null</code> is returned.
     *
     * @return an {@link UncaughtExceptionHandler} instance or {@code null}.
     */
    public native UncaughtExceptionHandler getUncaughtExceptionHandler();

    /**
     * Posts an interrupt request to this {@code Thread}. Unless the caller is
     * the {@link #currentThread()}, the method {@code checkAccess()} is called
     * for the installed {@code SecurityManager}, if any. This may result in a
     * {@code SecurityException} being thrown. The further behavior depends on
     * the state of this {@code Thread}:
     * <ul>
     * <li>
     * {@code Thread}s blocked in one of {@code Object}'s {@code wait()} methods
     * or one of {@code Thread}'s {@code join()} or {@code sleep()} methods will
     * be woken up, their interrupt status will be cleared, and they receive an
     * {@link InterruptedException}.
     * <li>
     * {@code Thread}s blocked in an I/O operation of an
     * {@link java.nio.channels.InterruptibleChannel} will have their interrupt
     * status set and receive an
     * {@link java.nio.channels.ClosedByInterruptException}. Also, the channel
     * will be closed.
     * <li>
     * {@code Thread}s blocked in a {@link java.nio.channels.Selector} will have
     * their interrupt status set and return immediately. They don't receive an
     * exception in this case.
     * <ul>
     * 
     * @throws SecurityException
     *             if <code>checkAccess()</code> fails with a SecurityException
     * @see java.lang.SecurityException
     * @see java.lang.SecurityManager
     * @see Thread#interrupted
     * @see Thread#isInterrupted
     */
    public void interrupt() {
        if (action != null) {
            action.run();
        }

        Condition conditionForInterrupt = null;
        synchronized (this) {
            interrupted = true;

            if (waitingCondition != null) {
                conditionForInterrupt = waitingCondition;
            }
        }

        // Interrupt the "wait" outside of the synchronized block.
        // Otherwise, a deadlock could occur.
        if (conditionForInterrupt != null) {
            conditionForInterrupt.getSynchronizedObject().interruptWait(conditionForInterrupt);
        }
    }

    /**
     * Returns a <code>boolean</code> indicating whether the current Thread (
     * <code>currentThread()</code>) has a pending interrupt request (<code>
     * true</code>) or not (<code>false</code>). It also has the side-effect of
     * clearing the flag.
     * 
     * @return a <code>boolean</code> indicating the interrupt status
     * @see Thread#currentThread
     * @see Thread#interrupt
     * @see Thread#isInterrupted
     */
    public static boolean interrupted() {
        boolean result = false;
        Thread curThread = Thread.currentThread();
        synchronized (curThread) {
            result = curThread.isInterrupted();
            curThread.interrupted = false;
        }
        return result;
    }

    /**
     * Returns <code>true</code> if the receiver has already been started and
     * still runs code (hasn't died yet). Returns <code>false</code> either if
     * the receiver hasn't been started yet or if it has already started and run
     * to completion and died.
     * 
     * @return a <code>boolean</code> indicating the lifeness of the Thread
     * @see Thread#start
     */
    public synchronized final boolean isAlive() {
        return alive;
    }

    /**
     * Returns a <code>boolean</code> indicating whether the receiver is a
     * daemon Thread (<code>true</code>) or not (<code>false</code>) A
     * daemon Thread only runs as long as there are non-daemon Threads running.
     * When the last non-daemon Thread ends, the whole program ends no matter if
     * it had daemon Threads still running or not.
     *
     * @return a <code>boolean</code> indicating whether the Thread is a daemon
     * @see Thread#setDaemon
     */
    public final boolean isDaemon() {
        return daemon;
    }

    /**
     * Returns a <code>boolean</code> indicating whether the receiver has a
     * pending interrupt request (<code>true</code>) or not (
     * <code>false</code>)
     *
     * @return a <code>boolean</code> indicating the interrupt status
     * @see Thread#interrupt
     * @see Thread#interrupted
     */
    public boolean isInterrupted() {
        boolean result = false;
        synchronized (this) {
            result = interrupted;
        }
        return result;
    }

    /**
     * Blocks the current Thread (<code>Thread.currentThread()</code>) until
     * the receiver finishes its execution and dies.
     *
     * @throws InterruptedException if <code>interrupt()</code> was called for
     *         the receiver while it was in the <code>join()</code> call
     * @see Object#notifyAll
     * @see java.lang.ThreadDeath
     */
    public final void join() throws InterruptedException {
        join(0L);
    }

    /**
     * Blocks the current Thread (<code>Thread.currentThread()</code>) until
     * the receiver finishes its execution and dies or the specified timeout
     * expires, whatever happens first.
     *
     * @param millis The maximum time to wait (in milliseconds).
     * @throws InterruptedException if <code>interrupt()</code> was called for
     *         the receiver while it was in the <code>join()</code> call
     * @see Object#notifyAll
     * @see java.lang.ThreadDeath
     */
    public synchronized final void join(long millis) throws InterruptedException {
        long base = System.currentTimeMillis();
        long now = 0L;

        if (millis < 0) {
            throw new IllegalArgumentException("timeout value is negative");
        }

        if (millis == 0) {
            while (isAlive()) {
                // Wait for the notifyAll() in run0()
                wait();
            }
        } else {
            boolean done = false;
            while (!done && isAlive()) {
                long delay = millis - now;
                if (delay <= 0) {
                    done = true;
                } else {
                    // Wait for either the timeout or the notifyAll() in run0()
                    wait(delay);
                    now = System.currentTimeMillis() - base;
                }
            }
        }
    }

    /**
     * Blocks the current Thread (<code>Thread.currentThread()</code>) until
     * the receiver finishes its execution and dies or the specified timeout
     * expires, whatever happens first.
     *
     * @param millis The maximum time to wait (in milliseconds).
     * @param nanos Extra nanosecond precision
     * @throws InterruptedException if <code>interrupt()</code> was called for
     *         the receiver while it was in the <code>join()</code> call
     * @see Object#notifyAll
     * @see java.lang.ThreadDeath
     */
    public native final void join(long millis, int nanos) throws InterruptedException;

    /**
     * Resumes a suspended Thread. This is a no-op if the receiver was never
     * suspended, or suspended and already resumed. If the receiver is
     * suspended, however, makes it resume to the point where it was when it was
     * suspended.
     * 
     * @throws SecurityException
     *             if <code>checkAccess()</code> fails with a SecurityException
     * @see Thread#suspend()
     * @deprecated Used with deprecated method {@link Thread#suspend}
     */
    @Deprecated
    public native final void resume();

    /**
     * This is called when the new thread is started from a native method, which
     * in turn calls run().
     * 
     * This is required natively, so even if it looks like it's useless, don't
     * delete it!
     */
    @SuppressWarnings("unused")
    private void run0(long nativeThreadId) {
        this.nativeThreadId = nativeThreadId;
        addSelfToMap();

        synchronized (this) {
            alive = true;
        }

        try {
            if (targetRunnable == null) {
                run();
            } else {
                targetRunnable.run();
            }
        } catch (Throwable t) {
            System.out.println("Exception in thread \"" + this.getName() + "\" "
                    + t.getClass().getName() + ": " + t.getMessage());
        }

        synchronized (this) {
            alive = false;

            // Notify the thread is finished
            notifyAll();
        }

        removeSelfFromMap();

        this.threadGroup.remove(this);
    }

    /**
     * Calls the <code>run()</code> method of the Runnable object the receiver
     * holds. If no Runnable is set, does nothing.
     *
     * @see Thread#start
     */
    public void run() {
        // do nothing
    }

    /**
     * Set the context ClassLoader for the receiver.
     * <p>
     * The <code>RuntimePermission("setContextClassLoader")</code>
     * is checked prior to setting the handler.
     *
     * @param cl The context ClassLoader
     * @throws SecurityException if the current SecurityManager fails the
     *         checkPermission call.
     * @see java.lang.ClassLoader
     * @see #getContextClassLoader()
     */
    public native void setContextClassLoader(ClassLoader cl);

    /**
     * Set if the receiver is a daemon Thread or not. This can only be done
     * before the Thread starts running.
     * 
     * @param isDaemon
     *            indicates whether the Thread should be daemon or not
     * @throws SecurityException
     *             if <code>checkAccess()</code> fails with a SecurityException
     * @see Thread#isDaemon
     */
    public native final void setDaemon(boolean isDaemon);

    /**
     * Sets the default uncaught exception handler. This handler is invoked in
     * case any Thread dies due to an unhandled exception.
     * <p>
     * The <code>RuntimePermission("setDefaultUncaughtExceptionHandler")</code>
     * is checked prior to setting the handler.
     *
     * @param handler
     *            The handler to set or <code>null</code>.
     * @throws SecurityException
     *             if the current SecurityManager fails the checkPermission
     *             call.
     * @since 1.5
     */
    public native static void setDefaultUncaughtExceptionHandler(UncaughtExceptionHandler handler);

    /**
     * Sets the name of the Thread.
     *
     * @param threadName the new name for the Thread
     * @throws SecurityException if <code>checkAccess()</code> fails with a
     *         SecurityException
     * @see Thread#getName
     */
    public void setName(String threadName) {
        this.threadName = threadName;
    }

    /**
     * Sets the priority of the Thread. Note that the final priority set may not
     * be the parameter that was passed - it will depend on the receiver's
     * ThreadGroup. The priority cannot be set to be higher than the receiver's
     * ThreadGroup's maxPriority().
     * 
     * @param priority
     *            new priority for the Thread
     * @throws SecurityException
     *             if <code>checkAccess()</code> fails with a SecurityException
     * @throws IllegalArgumentException
     *             if the new priority is greater than Thread.MAX_PRIORITY or
     *             less than Thread.MIN_PRIORITY
     * @see Thread#getPriority
     */
    public native final void setPriority(int priority);

    /**
     * A sample implementation of this method is provided by the reference
     * implementation. It must be included, as it is called by ThreadLocal.set()
     * and InheritableThreadLocal.set(). Set the value associated with the
     * ThreadLocal in the receiver to be <code>value</code>.
     * 
     * @param local ThreadLocal to set
     * @param value new value for the ThreadLocal
     * @see #getThreadLocal
     */
    native void setThreadLocal(ThreadLocal<?> local, Object value);

    /**
     * <p>
     * Sets the uncaught exception handler. This handler is invoked in case this
     * Thread dies due to an unhandled exception.
     *
     * @param handler
     *            The handler to set or <code>null</code>.
     * @throws SecurityException
     *             if the current SecurityManager fails the checkAccess call.
     * @since 1.5
     */
    public native void setUncaughtExceptionHandler(UncaughtExceptionHandler handler);

    /**
     * Causes the thread which sent this message to sleep for the given interval
     * of time (given in milliseconds). The precision is not guaranteed - the
     * Thread may sleep more or less than requested.
     * 
     * @param time
     *            The time to sleep in milliseconds.
     * @throws InterruptedException
     *             if <code>interrupt()</code> was called for this Thread while
     *             it was sleeping
     * @see Thread#interrupt()
     */
    public static void sleep(long time) throws InterruptedException {
        if (time != 0L) {
            final Object obj = new Object();
            synchronized (obj) {
                obj.wait(time);
            }
        }
    }

    /**
     * Causes the thread which sent this message to sleep for the given interval
     * of time (given in milliseconds and nanoseconds). The precision is not
     * guaranteed - the Thread may sleep more or less than requested.
     * 
     * @param millis
     *            The time to sleep in milliseconds.
     * @param nanos
     *            Extra nanosecond precision
     * @throws InterruptedException
     *             if <code>interrupt()</code> was called for this Thread while
     *             it was sleeping
     * @see Thread#interrupt()
     */
    public static void sleep(long millis, int nanos) throws InterruptedException {
        if (millis < 0L) {
            throw new IllegalArgumentException("sleep milliseconds must be greater than or equal to zero");
        } else if (nanos < 0 || nanos >= 1000000) {
            throw new IllegalArgumentException("sleep nanoseconds must be greater than or equal to zero and less than 1000000");
        }

        if (millis == 0L && nanos != 0) {
            sleep(1L);
        } else {
            if (nanos >= 500000) {
                millis++;
            }
            sleep(millis);
        }
    }

    /**
     * Starts the new Thread of execution. The <code>run()</code> method of
     * the receiver will be called by the receiver Thread itself (and not the
     * Thread calling <code>start()</code>).
     *
     * @throws IllegalThreadStateException if the Thread has been started before
     * @see Thread#run
     */
    public void start() {
        this.threadGroup.add(this);
        start0();
    }

    public native void start0();

    /**
     * Requests the receiver Thread to stop and throw ThreadDeath. The Thread is
     * resumed if it was suspended and awakened if it was sleeping, so that it
     * can proceed to throw ThreadDeath.
     *
     * @throws SecurityException if <code>checkAccess()</code> fails with a
     *         SecurityException
     * @deprecated because stopping a thread in this manner is unsafe and can
     * leave your application and the VM in an unpredictable state.
     */
    @Deprecated
    public native final void stop();

    /**
     * Requests the receiver Thread to stop and throw the
     * <code>throwable()</code>. The Thread is resumed if it was suspended
     * and awakened if it was sleeping, so that it can proceed to throw the
     * <code>throwable()</code>.
     *
     * @param throwable Throwable object to be thrown by the Thread
     * @throws SecurityException if <code>checkAccess()</code> fails with a
     *         SecurityException
     * @throws NullPointerException if <code>throwable()</code> is
     *         <code>null</code>
     * @deprecated because stopping a thread in this manner is unsafe and can
     * leave your application and the VM in an unpredictable state.
     */
    @Deprecated
    public native final void stop(Throwable throwable);

    /**
     * Suspends this Thread. This is a no-op if the receiver is suspended. If
     * the receiver <code>isAlive()</code> however, suspended it until <code>
     * resume()</code> is sent to it. Suspend requests are not queued, which
     * means that N requests are equivalent to just one - only one resume
     * request is needed in this case.
     * 
     * @throws SecurityException
     *             if <code>checkAccess()</code> fails with a SecurityException
     * @see Thread#resume()
     * @deprecated May cause deadlocks.
     */
    @Deprecated
    public native final void suspend();

    /**
     * Returns a string containing a concise, human-readable description of the
     * Thread. It includes the Thread's name, priority, and group name.
     * 
     * @return a printable representation for the receiver.
     */
    @Override
    public String toString() {
        return "Thread[" + threadName + "," + priority + ","
                + (threadGroup == null ? "" : threadGroup.getName()) + "]";
    }

    /**
     * Causes the calling Thread to yield execution time to another Thread that
     * is ready to run. The actual scheduling is implementation-dependent.
     */
    public native static void yield();

    /**
     * Returns whether the current thread has a monitor lock on the specified
     * object.
     * 
     * @param object the object to test for the monitor lock
     * @return true when the current thread has a monitor lock on the specified
     *         object
     */
    public native static boolean holdsLock(Object object);

    /**
     * Implemented by objects that want to handle cases where a thread is being
     * terminated by an uncaught exception. Upon such termination, the handler
     * is notified of the terminating thread and causal exception. If there is
     * no explicit handler set then the thread's group is the default handler.
     */
    public static interface UncaughtExceptionHandler {
        /**
         * The thread is being terminated by an uncaught exception. Further
         * exceptions thrown in this method are prevent the remainder of the
         * method from executing, but are otherwise ignored.
         * 
         * @param thread the thread that has an uncaught exception
         * @param ex the exception that was thrown
         */
        void uncaughtException(Thread thread, Throwable ex);
    }

    /**
     * Set the condition on which the thread is waiting, if any. This should ONLY be called within java_lang_Object's wait(), wait(long) or wait(long, int).
     * @param signalCondition the Condition on which the thread is waiting for a signal/broadcast or null for none. This is used to interrupt a "wait" or "sleep".
     */
    void setWaitingCondition(Condition signalCondition) {
        synchronized (this) {
            waitingCondition = signalCondition;
        }
    }
}
