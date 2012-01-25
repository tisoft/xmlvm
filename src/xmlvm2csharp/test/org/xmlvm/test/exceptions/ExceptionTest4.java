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
 * tests propagation of exceptions
 */
public class ExceptionTest4 extends Exception {
    public static void main(String[] args) {
	System.out.println("Exeption Test 4: Propagation:");
	try {
	    System.out.println("subtest 1: inside function should not catch the following:");
	    insideFunction(new Exception());
	} catch(ExceptionTest4 ex) {
	    System.out.println("bad catch by outside function");
	} catch(Exception ex) {
	    System.out.println("good catch by outside function");
	}

	try {
	    System.out.println("subtest 2: inside function should catch the following:");
	    insideFunction(new ExceptionTest4());
	} catch(ExceptionTest4 ex) {
	    System.out.println("bad catch by outside function");
	} catch(Exception ex) {
	    System.out.println("good catch by outside function");
	}

    }

    public static void insideFunction(Exception ex) throws Exception{
	try {
	    System.out.println("inside function");
	    throw ex;
	} catch (ExceptionTest4 e) {
	    System.out.println("inside function caught exception");
	}
    }

}