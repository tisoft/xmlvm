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

package org.xmlvm.iphone;

import org.xmlvm.XMLVMSkeletonOnly;

@XMLVMSkeletonOnly
public class CFRunLoop extends CFType {

    final public static String kCFRunLoopDefaultMode      = "kCFRunLoopDefaultMode";

    final public static int    kCFRunLoopRunFinished      = 1;
    final public static int    kCFRunLoopRunStopped       = 2;
    final public static int    kCFRunLoopRunTimedOut      = 3;
    final public static int    kCFRunLoopRunHandledSource = 4;


    /*
     * Static methods
     */

    /**
     * CFTypeID CFRunLoopGetTypeID(void);
     */
    public static long getTypeID() {
        throw new RuntimeException("Stub");
    }

    /**
     * CFRunLoopRef CFRunLoopGetCurrent(void);
     */
    public static CFRunLoop getCurrent() {
        throw new RuntimeException("Stub");
    }

    /**
     * CFRunLoopRef CFRunLoopGetMain(void) ;
     */
    public static CFRunLoop getMain() {
        throw new RuntimeException("Stub");
    }

    /**
     * void CFRunLoopRun(void);
     */
    public static void run() {
        throw new RuntimeException("Stub");
    }

    /**
     * SInt32 CFRunLoopRunInMode(CFStringRef mode, CFTimeInterval seconds,
     * Boolean returnAfterSourceHandled);
     */
    public static int runInMode(String mode, double seconds, byte returnAfterSourceHandled) {
        throw new RuntimeException("Stub");
    }

    /*
     * Constructors
     */

    /** Default constructor */
    CFRunLoop() {
    }

}
