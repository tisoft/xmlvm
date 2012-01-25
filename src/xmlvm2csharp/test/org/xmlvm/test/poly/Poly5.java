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
 * tests overriding of abstract and non-abstract methods by a child
 *   of an abstract parent class
 */
public class Poly5 {
    public static void main(String[] args) {
        Poly5AbstractParent p = new Poly5Child();
	System.out.println(p.getStr1());
	System.out.println(p.getStr2());
    }
}

abstract class Poly5AbstractParent {
    public abstract String getStr1();
    public String getStr2() {
	return "parent";
    }
}

class Poly5Child extends Poly5AbstractParent {
    public String getStr1() {
	return "child1";
    }

    public String getStr2() {
	return "child2";
    }

}