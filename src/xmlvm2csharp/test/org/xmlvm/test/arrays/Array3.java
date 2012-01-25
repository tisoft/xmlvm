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
package org.xmlvm.test.arrays;

/*
 * tests instantiation and initialization of value type and object arrays
 */
public class Array3 {
    public static void main(String[] args) {
	int[] primes = {2,3,5,7,11,13};
	System.out.println(primes[3]);
	String[] primeStrings = {"two","three","five","seven","eleven","thirteen"};
	System.out.println(primeStrings[3]);
	String str1 = "seventeen";
	String str2 = "nineteen";
	String[] morePrimeStrings = {str1, str2};
	System.out.println(morePrimeStrings[0]);
    }
}