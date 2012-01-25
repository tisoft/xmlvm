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
 * tests hiding of public fields from the parent by the child
 */
public class Poly4 {
    public static void main(String[] args) {
	System.out.println("Polymorphism test 4: overriding public fields:");
	System.out.println("-----------------------------------------------");
	Poly4Parent x = new Poly4Parent();
	Poly4Parent y = new Poly4Child();
	Poly4Child z = new Poly4Child();
	System.out.println(x.str);
	System.out.println(y.str);
	System.out.println(z.str);
    }
}

class Poly4Parent {
    public String str = "parent";
}

class Poly4Child extends Poly4Parent {
    public String str = "child";
}
