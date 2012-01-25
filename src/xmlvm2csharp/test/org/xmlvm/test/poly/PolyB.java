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
 * tests simple inheritence of interface field propagated through a parent.
 */
public class PolyB {
    public static void main(String[] args) {
        PolyBInterface a = new PolyBParent();
        PolyBInterface b = new PolyBChild();
        PolyBParent c = new PolyBParent();
        PolyBParent d = new PolyBChild();
        PolyBChild e = new PolyBChild();
        System.out.println(a.str);
        System.out.println(b.str);
        System.out.println(c.str);
        System.out.println(d.str);
        System.out.println(e.str);
        System.out.println(a.getStr());
        System.out.println(b.getStr());
        System.out.println(c.getStr());
        System.out.println(d.getStr());
        System.out.println(e.getStr());
    }
}

interface PolyBInterface extends PolyBSuperInterface{
    //public String str = "interface field";
    public String getStr();
}

interface PolyBSuperInterface {
    public String str = "interface field";
}

class PolyBParent implements PolyBInterface {
    public String getStr() {
        return str;
    }
}

class PolyBChild extends PolyBParent {
    public String getStr() {
        return str;
    }
}