package android.os;

/**
 * <i>(XMLVM Compatibility Class)</i>
 * <p>
 * This class gives you control of the power state of the device.
 */
public class PowerManager {
    /**
     * <i>(XMLVM Compatibility Class)</i>
     * <p>
     * Class lets you say that you need to have the device on.
     *<p>
     * Call release when you are done and don't need the lock anymore.
     */
    public class WakeLock {
        /**
         * Makes sure the device is on at the level you asked when you created
         * the wake lock.
         */
        public void acquire() {
            // TODO(arno): Implement
        }

        /**
         * Release your claim to the CPU or screen being on.
         * <p>
         * It may turn off shortly after you release it, or it may not if there
         * are other wake locks held.
         */
        public void release() {
            // TODO: Implement.
        }
    }

    /**
     * Wake lock that ensures that the screen is on (but may be dimmed); the
     * keyboard backlight will be allowed to go off.
     */
    public static final int SCREEN_DIM_WAKE_LOCK    = 6;
    /**
     * Wake lock that ensures that the screen is on at full brightness; the
     * keyboard backlight will be allowed to go off.
     */
    public static final int SCREEN_BRIGHT_WAKE_LOCK = 10;

    /**
     * Get a wake lock at the level of the flags parameter. Call
     * {@link PowerManager.WakeLock#acquire()} on the object to acquire the wake
     * lock, and {@link PowerManager.WakeLock#release()} when you are done.
     * 
     * @param flags
     *            Combination of flag values defining the requested behavior of
     *            the WakeLock.
     * @param tag
     *            Your class name (or other tag) for debugging purposes.
     */
    public PowerManager.WakeLock newWakeLock(int flags, String tag) {
        // TODO(arno): Implement.
        return null;
    }
}
