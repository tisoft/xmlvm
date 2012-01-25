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
 * tests hiding of static methods from parent, in contrast to 
 *   overriding of instance methods.
 */
public class Poly9 {
    public static void main(String[] args) {
	Poly9Parent a = new Poly9Parent();
	Poly9Parent b = new Poly9Child();
	Poly9Child c = new Poly9Child();
	System.out.println(a.getStr());
	System.out.println(b.getStr());
	System.out.println(c.getStr());
	System.out.println(a.getStaticStr());
	System.out.println(b.getStaticStr());
	System.out.println(c.getStaticStr());

    }
}

class Poly9Parent {
    public String getStr() {
	return "parent-instance";
    }

    public static String getStaticStr() {
	return "parent-static";
    }
}

class Poly9Child extends Poly9Parent {
    public String getStr() {
	return "child-instance";
    }

    public static String getStaticStr() {
	return "child-static";
    }
}

