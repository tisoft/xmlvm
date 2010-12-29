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

package android.util;

import android.internal.Assert;

public class Log {

    public static final int ASSERT  = 7;
    public static final int DEBUG   = 3;
    public static final int ERROR   = 6;
    public static final int INFO    = 4;
    public static final int VERBOSE = 2;
    public static final int WARN    = 5;

    public static int e(String tag, String message) {
        return log("E", tag, message);
    }

    public static int e(String tag, String message, Throwable tr) {
        Assert.NOT_IMPLEMENTED();
        return -1;
    }

    public static int w(String tag, String message) {
        return log("W", tag, message);
    }

    public static int w(String tag, String message, Throwable t) {
        Assert.NOT_IMPLEMENTED();
        return 0;
    }

    public static int i(String tag, String message) {
        return log("I", tag, message);
    }

    public static int v(String tag, String message) {
        return log("V", tag, message);
    }

    public static int d(String tag, String message) {
        return log("D", tag, message);
    }

    private static int log(String level, String tag, String message) {
        String logMsg = "<" + level + "> <" + tag + ">: " + message;
        System.out.println(logMsg);
        return logMsg.length();
    }
}
