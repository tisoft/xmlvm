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
package org.xmlvm.test.poly;

/*
 * tests calling super method from the child's method
 */
public class PolyA {
    public static void main(String[] args) {
	PolyAParent a = new PolyAParent();
	PolyAParent b = new PolyAChild();
	PolyAChild c = new PolyAChild();
	System.out.println(a.getStr1());
	System.out.println(b.getStr1());
	System.out.println(c.getStr1());
    }
}

class PolyAParent {
    public String getStr1() {
	return "parent instance method";
    }
}

class PolyAChild extends PolyAParent {
    public String getStr1() {
	return "child instance method: calling " + super.getStr1();
    }
}