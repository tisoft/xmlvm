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
 * tests hierarchy of exceptions
 */
public class ExceptionTest3 extends ExceptionTest3Parent {

    public static void main(String[] args) {
	System.out.println("Exception Test 3: Hierarchy:");
	try {
	    System.out.println("before subtest1:");
	    if (true)
		throw new ExceptionTest3Parent();
	    System.out.println("should not be printed");
	} catch (ExceptionTest3 ex) {
	    System.out.println("Bad catch");
	} catch (ExceptionTest3Parent ex) {
	    System.out.println("Good catch");
	}
	try {
	    System.out.println("before subtest2:");
	    if (true)
		throw new ExceptionTest3();
	    System.out.println("should not be printed");
	} catch (ExceptionTest3 ex) {
	    System.out.println("Good catch");
	} catch (ExceptionTest3Parent ex) {
	    System.out.println("Bad catch");
	}

	try {
	    System.out.println("before subtest 3:");
	    if (true)
		throw new ExceptionTest3();
	    System.out.println("should not be printed");
	} catch (ExceptionTest3Parent ex) {
	    System.out.println("Good catch");
	} catch (Exception ex) {
	    System.out.println("Bad catch");
	}


	
    }
}

class ExceptionTest3Parent extends Exception {}