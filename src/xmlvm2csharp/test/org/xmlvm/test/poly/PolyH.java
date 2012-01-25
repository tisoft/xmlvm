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
 * (the diff from PolyB is that the field here is a custom object,
 * rather than a string, so the compiler might not optimize it...)
 */
public class PolyH {
    public static void main(String[] args) {
        PolyHInterface a = new PolyHParent();
        PolyHInterface b = new PolyHChild();
        PolyHParent c = new PolyHParent();
        PolyHParent d = new PolyHChild();
        PolyHChild e = new PolyHChild();
        System.out.println(a.myField.getStr());
        System.out.println(b.myField.getStr());
        System.out.println(c.myField.getStr());
        System.out.println(d.myField.getStr());
        System.out.println(e.myField.getStr());
        System.out.println("");
        System.out.println(a.getMyField().getStr());
        System.out.println(b.getMyField().getStr());
        System.out.println(c.getMyField().getStr());
        System.out.println(d.getMyField().getStr());
        System.out.println(e.getMyField().getStr());
        System.out.println("");
        System.out.println(c.anotherField.getStr());
        System.out.println(d.anotherField.getStr());
        System.out.println(e.anotherField.getStr());
        e.modifyFields();
        System.out.println("");
        System.out.println(a.myField.getStr());
        System.out.println(b.myField.getStr());
        System.out.println(c.myField.getStr());
        System.out.println(d.myField.getStr());
        System.out.println(e.myField.getStr());
        System.out.println("");
        System.out.println(a.getMyField().getStr());
        System.out.println(b.getMyField().getStr());
        System.out.println(c.getMyField().getStr());
        System.out.println(d.getMyField().getStr());
        System.out.println(e.getMyField().getStr());
        System.out.println("");
        System.out.println(c.anotherField.getStr());
        System.out.println(d.anotherField.getStr());
        System.out.println(e.anotherField.getStr());
    }
}

class PolyHField {
    private String str;

    public PolyHField(String str) {
        this.str = str;
    }

    public String getStr() {
        return this.str;
    }

    public void setStr(String str) {
        this.str = str;
    }
}

interface PolyHInterface extends PolyHSuperInterface{
    //public String str = "interface field";
    public PolyHField getMyField();
}

interface PolyHSuperInterface {
    public PolyHField myField = new PolyHField("inerface field");
}

class PolyHParent implements PolyHInterface {
    public static PolyHField anotherField = new PolyHField("init val");

    public PolyHField getMyField() {
        return myField;
    }
}

class PolyHChild extends PolyHParent {


    public PolyHField getMyField() {
        return myField;
    }

    public void modifyFields() {
        myField.setStr("modified field");
        anotherField.setStr("modified val");
    }
}