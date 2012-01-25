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

// testing calling methods with array arguments
//   (and unsuccessfully trying to separate fill-array-data from new-array)
public class Array4 {
    public static void printFourth(int[] somePrimes) {
	System.out.println(somePrimes[3]);
    }
	
    public static void main(String[] args) {
	int[] primes = new int[]{2,3,5,7,11,13};
	printFourth(primes);
	int[] morePrimes = new int[5];
	morePrimes = new int[]{17,19,23,29};
	printFourth(morePrimes);
	int[] evenMorePrimes = new int[5];
	System.arraycopy(new int[]{31,37,41},0,evenMorePrimes,1,3);
	printFourth(evenMorePrimes);

    }
}