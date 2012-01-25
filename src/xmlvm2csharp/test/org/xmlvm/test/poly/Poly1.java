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
 * simply tests that public methods are inherited from the parent class
 */
public class Poly1 {
    public static void main(String[] args) {
	System.out.println("Polymorphism test 1: inheriting public methods:");
	System.out.println("-----------------------------------------------");
	Poly1Parent x = new Poly1Parent();
	Poly1Parent y = new Poly1Child();
	Poly1Child z = new Poly1Child();
	System.out.println(x.getStr());
	System.out.println(y.getStr());
	System.out.println(z.getStr());
    }
}

class Poly1Parent {
    public String getStr() {
	return "parent";
    }
}

class Poly1Child extends Poly1Parent {

}


