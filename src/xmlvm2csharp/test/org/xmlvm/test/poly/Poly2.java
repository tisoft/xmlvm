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
 * tests overriding of public methods from the parent by the child
 */
public class Poly2 {
    public static void main(String[] args) {
	System.out.println("Polymorphism test 2: overriding public methods:");
	System.out.println("-----------------------------------------------");
	Poly2Parent x = new Poly2Parent();
	Poly2Parent y = new Poly2Child();
	Poly2Child z = new Poly2Child();
	System.out.println(x.getStr());
	System.out.println(y.getStr());
	System.out.println(z.getStr());
    }
}

class Poly2Parent {
    public String getStr() {
	return "parent";
    }
}

class Poly2Child extends Poly2Parent {
    public String getStr() {
	return "child";
    }
}



