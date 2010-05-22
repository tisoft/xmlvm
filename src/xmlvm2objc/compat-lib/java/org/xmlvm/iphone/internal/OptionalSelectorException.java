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
package org.xmlvm.iphone.internal;

/**
 * This exception is thrown every time an optional method is called . Since in
 * Java no optional methods in interfaces exist, all methods are defined instead
 * and if this method is optional and not overriden, this exception is thrown.
 * Thus only required selectors/methods are defined, and at the same time Java
 * emulator is able to understand if this method is overriden or not. Returning
 * just a dummy value from an optional method is not a good solution, since some
 * methods do not return anything, or even if they return something, this value
 * might still be usable (i.e. even null might have some meaning)
 * 
 * If an optional method exists, then it is preffered to make it an actual, not
 * abstract method, which only throws an OptionalSelectorException, and make
 * sure that in the emulator if this method is called, at least
 * OptionalSelectorException will be catched. For example in UITableViewDelegate
 * 
 * The reason why this Exception is a child of NullPointerException, is to be
 * able to catch at the same time both null delegates or delegates with optional
 * methods.
 * 
 * Example: Use the following code in an optional selector in a delegate
 * 
 * <pre>
 * public float heightForRowAtIndexPath(UITableView tableView, NSIndexPath indexPath) {
 *     throw new OptionalSelectorException();
 * }
 * </pre>
 * 
 * And this code when this method is going to be called (note that also null
 * pointer exception is also checked at the same time)
 * 
 * <pre>
 * float preferredHeight;
 * try {
 *     preferredHeight = delegate.heightForRowAtIndexPath(view, idx);
 * } catch (NullPointerException ex) {
 *     preferredHeight = 50f;
 * }
 * </pre>
 * 
 * @author teras
 */
public class OptionalSelectorException extends NullPointerException {

    /**
     * Create a new OptionalSelectorException
     */
    public OptionalSelectorException() {
        /*
         * Zero-element is Thread.currentThread().getStackTrace() One-element is
         * OptionalSelectorException<init> Two-element is the caller (the
         * required class name and method
         */
        super(getDescription(Thread.currentThread().getStackTrace()[2]));
    }

    private static final String getDescription(StackTraceElement elem) {
        String classname = elem.getClassName();
        String selector = elem.getMethodName();
        int point = classname.lastIndexOf(".");
        if (point >= 0) {
            classname = classname.substring(point + 1);
        }
        return "Optional selector '" + selector + "' of object '" + classname + "'";
    }
}
