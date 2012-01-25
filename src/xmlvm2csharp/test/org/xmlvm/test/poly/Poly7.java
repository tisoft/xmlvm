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
 * tests overriding methods inherited from an abstract parent 
 *   and multiple interfaces
 */
public class Poly7 {
    public static void main(String[] args) {
	Poly7Child c = new Poly7Child();
	Poly7InterfaceA a = c;
	Poly7InterfaceB b = c;
	Poly7AbstractParent p = c;
	System.out.println(a.getStr1());
	System.out.println(b.getStr2());
	System.out.println(p.getStr3());
	System.out.println(p.getStr4());
	
    }
}

interface Poly7InterfaceB {
    public String getStr2();
    public String getStr4();
}

interface Poly7InterfaceA {
    public String getStr1();
    public String getStr4();
}

class Poly7Child
    extends Poly7AbstractParent
    implements Poly7InterfaceA,Poly7InterfaceB {

    public String getStr1() {
	return "child1";
    }

    public String getStr2() {
	return "child2";
    }

    public String getStr3() {
	return "child3";
    }

    public String getStr4() {
	return "child4";
    }
}

abstract class Poly7AbstractParent {
    public abstract String getStr3();
    public String getStr4() {
	return "parent4";
    }
}
