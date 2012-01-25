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
 * a simple test for handling of java's covariant overrides by the backend
 */
public class PolyF {
    public static void main(String[] args) {
        PolyFParent a = (new PolyFParent()).setStr("a");
        PolyFParent b = (new PolyFChild()).setStr("b");
        PolyFChild c = (new PolyFChild()).setStr("c");
        System.out.println(a.getStr());
        System.out.println(b.getStr());
        System.out.println(c.getStr());
    }
}

class PolyFParent {
    protected String str;
    public PolyFParent setStr(String str) {
        System.out.println("parent's setStr() was called");
        this.str = str;
        return this;
    }

    public String getStr() {
        System.out.println("parent's getStr() was called");
        return this.str;
    }
}

class PolyFChild extends PolyFParent {
    public PolyFChild setStr(String str) {
        System.out.println("child's setStr() was called");
        this.str = str;
        return this;
    }

    public String getStr() {
        System.out.println("child's getStr() was called");
        return this.str;
    }
}
