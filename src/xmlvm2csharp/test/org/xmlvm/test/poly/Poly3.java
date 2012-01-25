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
 * tests inheritence of public fields from the parent
 */
public class Poly3 {
    public static void main(String[] args) {
	System.out.println("Polymorphism test 3: field inheritence:");
	System.out.println("-----------------------------------------------");
	Poly3Parent x = new Poly3Parent();
	Poly3Parent y = new Poly3Child();
	Poly3Child z = new Poly3Child();
	System.out.println(x.str);
	System.out.println(y.str);
	System.out.println(z.str);
    }
}

class Poly3Parent {
    public String str = "parent";
}

class Poly3Child extends Poly3Parent {
}


