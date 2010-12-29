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

import org.xmlvm.iphone.UIApplication;


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
            UIApplication.sharedApplication().setIdleTimerDisabled(true);
        }

        /**
         * Release your claim to the CPU or screen being on.
         * <p>
         * It may turn off shortly after you release it, or it may not if there
         * are other wake locks held.
         */
        public void release() {
            UIApplication.sharedApplication().setIdleTimerDisabled(false);
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
        return new WakeLock();
    }
}
