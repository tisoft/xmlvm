package org.xmlvm.runtime;

/**
 * A notifier to indicate when finalize() methods should be invoked.
 * All calls to this class are made natively.
 * @author ppoley
 *
 */
public class FinalizerNotifier {
    private static final Mutex finalizerMutex = new Mutex();
	private static final Condition finalizerCondition = new Condition(null);
	private static Thread finalizerThread;
	private static boolean gcEnabled = true;

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

    						        if (!gcEnabled) {
                                        // Allow garbage collection. No finalizers
                                        // are currently being called.
                                        preventGarbageCollection(false);
                                        gcEnabled = true;
    						        }

// TODO since we didn't use regular synchronized, Thread.interrupt() will run into trouble when it calls getSynchronizedObject() on the condition and gets null
// Make use of Thread.setWaitingCondition() as well.
// Make sure the constructor to Object.AddedMembers is not called or it'll block itself because of the call to finalizerNotifier() and the ensuing mutex lock. That's the whole point of not using "synchronized" here.
    						        finalizerCondition.wait(finalizerMutex);
						        }
						    }
						    finalizerMutex.unlock();

							while (!(interrupted = Thread.interrupted())
									&& shouldInvokeFinalizers()) {
								invokeFinalizers();
							}

                            // Native mutexes are not destroyed until normal
                            // finalizers are completed. That is because
                            // "synchronized" relies on mutexes, so a
                            // "synchronized" block during finalization should
                            // still have access to the mutex. This is an
                            // exception to normal finalization.
                            Mutex.destroyFinalizableNativeMutexes();
						}

						// Finalizer thread interrupted
					}
				};
				finalizerThread.setName("Finalizer-thread");
// TODO This is key to ensure the thread stops when all non-daemon threads have stopped, but it's not yet implemented in XMLVM
//				finalizerThread.setDaemon(true);
				finalizerThread.start();
			}
		}

		return finalizerThread;
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
	 * Notify the garbage collector there are some finalizers ready to invoke.
	 *
	 * Do not delete this! It is called from a native method.
	 */
	@SuppressWarnings("unused")
	private static void finalizerNotifier() {
        // Avoid using "synchronized" because a deadlock could occur if a
        // foundation mutex is locked, such as Object.staticMutex and a
        // constructor is called, reinvoking a call to finalizerNotifier(),
        // which would block itself attempting to relock the staticMutex.
	    // This is also more efficient.
	    finalizerMutex.lock();
	    {
	        if (gcEnabled) {
	            // Prevent garbage collection until the finalizers are completed
	            preventGarbageCollection(true);
	            gcEnabled = false;
	        }

	        finalizerCondition.broadcast();
	    }
		finalizerMutex.unlock();
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
