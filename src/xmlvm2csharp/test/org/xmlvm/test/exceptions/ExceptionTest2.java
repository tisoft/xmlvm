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
package org.xmlvm.test.exceptions;

/*
 * tests dex:move-exception by saving an exception in a non-usual register
 */
public class ExceptionTest2 extends Exception {
    private String message;

    public ExceptionTest2() {
	super();
	message = "";
    }

    public ExceptionTest2(String message) {
	super(message);
	this.message = message;
    }

    public String toString() {
	return message;
    }

    public static void main(String[] args) {
	System.out.println("Exception Test 2: saving exception in environment and non trivial registers for dex:throw and dex:move-exception:");
	String str1 = "old value 1";
	String str2 = "old value 2";
	System.out.println(str1);
	System.out.println(str2);
	str1 = "new value 1";
	try {
	    str2 = "new value 2";
	    if (true) 
		throw new ExceptionTest2("some reason for the exception");
	    System.out.println("these values should not be printed:");
	    System.out.println(str1);
	    System.out.println(str2);
	} catch (ExceptionTest2 e) {
	    String str3 = "exception caught!";
	    System.out.println(str3);
	    System.out.println(str1);
	    System.out.println(str2);
	    System.out.println(e.toString());
	    System.out.println(str3);
	}
    }
}