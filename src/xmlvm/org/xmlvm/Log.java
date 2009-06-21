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

package org.xmlvm;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * Basic logging functionality.
 */
public class Log {
  private static final String ERROR = "   ERROR: ";
  private static final String DEBUG = "   DEBUG: ";
  private static final String WARNING = " WARNING: ";
  
  private static final String DATE_FORMAT = "MM/dd/yy HH:mm:ss.SSS";

  private static boolean quiet = false;
  private static DateFormat dateFormat = new SimpleDateFormat(DATE_FORMAT);

  private Log() {
  }

  /**
   * Sets the quiet status for logging. If enabled, only errors will be logged.
   */
  public static void setQuiet(boolean isQuiet) {
    quiet = isQuiet;
  }

  /**
   * Logs an error message to {@link System.err}. This is not affected by the
   * quiet status and will be printed in any circumstance.
   * 
   * @param message
   *          The error message.
   */
  public static void error(String message) {
    System.err.println("[" + getDate() + "] " + ERROR + message);
  }

  /**
   * Logs a debug message to {@link System.out}. If quiet mode is enabled, this
   * message will not be logged.
   * 
   * @param message
   *          The debug message.
   */
  public static void debug(String message) {
    if (!quiet) {
      System.out.println("[" + getDate() + "] " + DEBUG + message);
    }
  }

  /**
   * Logs a warning to {@link System.out}. If quiet mode is enabled, this
   * message will not be logged.
   * 
   * @param message
   *          The warning message.
   */
  public static void warn(String message) {
    if (!quiet) {
      System.out.println("[" + getDate() + "] " + WARNING + message);
    }
  }

  private static String getDate() {
    return dateFormat.format(new Date());
  }
}
