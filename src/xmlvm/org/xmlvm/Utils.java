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

package org.xmlvm;

/**
 * Various general helper methods.
 */
public class Utils {

    /**
     * Operating system type.
     */
    public static enum OS {
        WINDOWS, MAC, UNIX, UNKNOWN;
    }


    private static final String osName = System.getProperty("os.name").toLowerCase();
    private static final OS     os     = getOSValue();


    /**
     * Returns whether XMLVM is running in one-jar mode.
     */
    public static boolean isOneJarMode() {
        return Main.class.getResourceAsStream("/main/main.jar") != null;
    }

    /**
     * Returns the kind of operating system, XMLVM is currently running on.
     */
    public static OS getOs() {
        return os;
    }

    private static OS getOSValue() {
        if (osName.contains("win")) {
            return OS.WINDOWS;
        } else if (osName.contains("mac")) {
            return OS.MAC;
        } else if (osName.contains("nix") || osName.contains("nux")) {
            return OS.UNIX;
        } else {
            return OS.UNKNOWN;
        }
    }
}
