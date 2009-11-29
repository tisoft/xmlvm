/*
 * Copyright (c) 2004-2009 XMLVM --- An XML-based Programming Language
 * 
 * This program is free software; you can redistribute it and/or modify it under
 * the terms of the GNU General Public License as published by the Free Software
 * Foundation; either version 2 of the License, or (at your option) any later
 * version.
 * 
 * This program is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
 * FOR A PARTICULAR PURPOSE. See the GNU General Public License for more
 * details.
 * 
 * You should have received a copy of the GNU General Public License along with
 * this program; if not, write to the Free Software Foundation, Inc., 675 Mass
 * Ave, Cambridge, MA 02139, USA.
 * 
 * For more information, visit the XMLVM Home Page at http://www.xmlvm.org
 */

package android.util;

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

    public static int w(String tag, String message) {
        return log("W", tag, message);
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
