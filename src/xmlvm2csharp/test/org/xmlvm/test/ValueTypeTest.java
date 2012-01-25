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

package org.xmlvm.test;

public class ValueTypeTest {
    public static final float f2 = 5.67f;
    public static final float f3 = 1f/3;
    public static final char EMPTY_CHAR = ' ';

    public static void main(String[] args) {
	float f = 4.0f;
	System.out.println(f);
	f = 10.4f;
	f += 2;
	f /= 3;
	System.out.println(f);
	double d = 10.4d;
	d /= 3;
	System.out.println(d);
	long l = 123456789123456779l;
	l += 10;
	System.out.println(l);
	System.out.println(f2);
	System.out.println(f3);
	//System.out.println(EMPTY_CHAR);
    }
}