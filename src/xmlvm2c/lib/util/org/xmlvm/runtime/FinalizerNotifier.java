package org.xmlvm.runtime;

/**
 * A notifier to indicate when finalize() methods should be invoked.
 * All calls to this class are made natively.
 * @author ppoley
 *
 */
public class FinalizerNotifier {
    private static final Mutex     finalizerMutex     = new Mutex();
    private static final Condition finalizerCondition = new Condition(null);
    private static Thread          finalizerThread;

    /**
     * true if the finalizer thread is currently invoking finalizers
     */
    private static boolean         finalizerThreadInvokingFinalizers;
    private static boolean         gcEnabled          = true;

	/**
	 * Start the finalizer thread if it hasn't been started already.
	 *
	 * Do not delete this! It is called from a native method.
	 *
	 * @return the finalizer thread, regardless of whether or not it was already started
	 */
	@SuppressWarnings("unused")
	private static Thread startFinalizerThread() {
		synchronized (FinalizerNotifier.class) {
			if (finalizerThread == null) {
				finalizerThread = new Thread() {
					@Override
					public void run() {
						boolean interrupted = false;
						while (!interrupted) {
                            // See notes in finalizerNotifier() indicating why
                            // use of "synchronized" was avoided
						    finalizerMutex.lock();
						    {
                                // Now that we have the mutex lock again, we
                                // need to make sure no finalizers are queued up
                                // that haven't executed. If they have during
                                // the small window of time, don't re-enable
                                // garbage collection yet, or memory may be
                                // released before the finalizers access the
                                // instances.
						        if (!shouldInvokeFinalizers()) {

                                    // Allow garbage collection. No finalizers
                                    // are currently being called.
                                    setGCActive(true);

// TODO since we didn't use regular synchronized, Thread.interrupt() will run into trouble when it calls getSynchronizedObject() on the condition and gets null
// Make use of Thread.setWaitingCondition() as well.
// Make sure the constructor to Object.AddedMembers is not called or it'll block itself because of the call to finalizerNotifier() and the ensuing mutex lock. That's the whole point of not using "synchronized" here.
    						        finalizerCondition.wait(finalizerMutex);
						        }
						    }
						    finalizerMutex.unlock();

                            interrupted = invokeAllFinalizers();

                            // Allow garbage collection.
                            finalizerMutex.lock();
                            setGCActive(true);
                            finalizerMutex.unlock();

                            // Finalizers have been invoked. Attempt to collect
                            // garbage.
                            System.gc();
						}

						// Finalizer thread interrupted
					}
				};
                finalizerThread.setName("Finalizer-thread");

                // This is key to ensure the thread stops when all non-daemon
                // threads have stopped, but it's not yet implemented in XMLVM
                finalizerThread.setDaemon(true);

                finalizerThread.start();
			}
		}

		return finalizerThread;
	}

    /**
     * Set the status of the garbage collector.
     * 
     * This should only be called while there is a mutex lock on the
     * "finalizerMutex".
     * 
     * @param gcAllowedToBeActive
     *            true if it is desired that the garbage collector *may* be
     *            active, or false if it may not
     */
    private static void setGCActive(boolean gcAllowedToBeActive) {
        if (gcEnabled != gcAllowedToBeActive) {
            // Allow garbage collection. No finalizers
            // are currently being called.
            preventGarbageCollection(!gcAllowedToBeActive);
            gcEnabled = gcAllowedToBeActive;
        }
    }

    /**
     * Invoke all finalizers, including native mutex finalizers
     * @return true if the Thread was interrupted, else false
     */
    private static boolean invokeAllFinalizers() {
        boolean interrupted = false;
        finalizerThreadInvokingFinalizers = true;
        while (!(interrupted = Thread.interrupted()) && shouldInvokeFinalizers()) {
            invokeFinalizers();
        }
        finalizerThreadInvokingFinalizers = false;

        // Native mutexes are not destroyed until normal finalizers are
        // completed. That is because "synchronized" relies on mutexes, so a
        // "synchronized" block during finalization should still have access to
        // the mutex. This is an exception to normal finalization.
        Mutex.destroyFinalizableNativeMutexes();

        return interrupted;
    }

    /**
     * Enable/disable garbage collection. Garbage collection is enabled by
     * default, and is disabled if the number of calls to
     * preventGarbageCollection() with values of true and false are NOT equal.
     *
     * @param prevent
     *            true to increment the garbage collector counter or false to
     *            decrement the counter. Garbage collection is only run if the
     *            counter equals zero, which is the initial value.
     */
	private static native void preventGarbageCollection(boolean prevent);

    /**
     * @param finalizerThread the finalizer thread
     * @return true if the current thread is the finalizer thread. This needed
     *         to be native since the method additions to the "Thread" proxy are
     *         not visible to this class.
     */
    private static native boolean currentThreadIsFinalizerThread(Thread finalizerThread);

    /**
     * Notify the garbage collector there are some finalizers ready to invoke.
     * 
     * Do not delete this! It is called from a native method.
     */
    @SuppressWarnings("unused")
    private static void finalizerNotifier() {
        // If this is the finalizer thread and the finalizer notifier wasn't
        // invoked from within a finalizer
        if (currentThreadIsFinalizerThread(finalizerThread) && !finalizerThreadInvokingFinalizers) {
            // Since this is the finalizer thread, don't disable garbage
            // collection. Invoke the finalizers, and upon returning, garbage
            // will be collected in this same thread unless disabled by another
            // thread's attempt to notify the finalizers.
            invokeAllFinalizers();
        } else {
            // Avoid using "synchronized" because a deadlock could occur if a
            // foundation mutex is locked, such as Object.staticMutex and a
            // constructor is called, reinvoking a call to finalizerNotifier(),
            // which would block itself attempting to relock the staticMutex.
            // This is also more efficient.
            finalizerMutex.lock();
            {
                // Prevent garbage collection until the finalizers are completed
                setGCActive(false);

                finalizerCondition.broadcast();
            }
            finalizerMutex.unlock();
        }
    }

	/**
	 * Determine if some finalizers should be invoked. This is a relatively cheap call.
	 * @return true if some finalizers should be invoked, else false.
	 */
	private static native boolean shouldInvokeFinalizers();

	/**
	 * @return the number of finalizers that were invoked
	 */
	private static native int invokeFinalizers();
}
