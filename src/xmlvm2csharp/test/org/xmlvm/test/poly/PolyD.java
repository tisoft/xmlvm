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
 * tests simple inheritence and hiding of fields from two interfaces
 */
public class PolyD {
    public static void main(String[] args) {
        PolyDInterface1 a = new PolyDChild();
        PolyDInterface2 b = new PolyDChild();
        PolyDChild c = new PolyDChild();
        System.out.println(a.x);
        System.out.println(b.x);
        System.out.println(c.x);
        System.out.println(c.y);
        System.out.println(a.getX());
        System.out.println(b.getX());
        System.out.println(c.getX());
    }

}

interface PolyDInterface1 {
    public int x = 3;
    public int y = 7;
    public int getX();
}

interface PolyDInterface2 {
    public int x = 5;
    public int getX();
}

class PolyDChild implements PolyDInterface2,PolyDInterface1{
    public int x;

    public PolyDChild() {
        this.x = 4;
    }

    public int getX() {
        return this.x;
    }
}

