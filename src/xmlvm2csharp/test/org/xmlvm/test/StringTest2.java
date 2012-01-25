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

/*
 * testing escaping of special characters in strings
 */
public class StringTest2 {
    public static final String str0 = "escape string test:";

    public static void main(String[] args) {
	System.out.println(str0);
	String str1 = "str1:\ttab";
	System.out.println(str1);
	str1 = "str2:\nnew line";
	System.out.println(str1);
	str1 = "str3:\"double quote";
	System.out.println(str1);
	str1 = "str4:\'single quote";
	System.out.println(str1);
	str1 = "str5:\rcarriege return";
	System.out.println(str1);
	str1 = "str6:\fform feed";
	System.out.println(str1);
	str1 = "str7:\bbackspace";
	System.out.println(str1);
	str1 = "str8:\\backslash";
	System.out.println(str1);
	// str1 = "str8:\u039Auppercase omega";
	// System.out.println(str1);
	System.out.println("tricky test: (should be: backslash+012)");
	str1 = "str9:\\012no new line";
	System.out.println(str1);
	
    }
}