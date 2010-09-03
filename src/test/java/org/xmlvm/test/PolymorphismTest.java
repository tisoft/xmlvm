/*
 * Copyright (c) 2004-2009 XMLVM --- An XML-based Programming Language
 * 
 * This program is free software; you can redistribute it and/or modify it under
 * the terms of the GNU General Public License as published by the Free Software
 * Foundation; either version 2 of the License, or (at your option) any later
 * version.
 * 
 * This program is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
 * FOR A PARTICULAR PURPOSE. See the GNU General Public License for more
 * details.
 * 
 * You should have received a copy of the GNU General Public License along with
 * this program; if not, write to the Free Software Foundation, Inc., 675 Mass
 * Ave, Cambridge, MA 02139, USA.
 * 
 * For more information, visit the XMLVM Home Page at http://www.xmlvm.org
 */

package org.xmlvm.test;

public class PolymorphismTest {

    static void Log(String msg) {
        System.out.println(msg);
    }

    static void Log(int i) {
        System.out.println(i);
    }

    public int  publicMember;
    private int privateMember;

    public PolymorphismTest() {
        Log(this.getClass().getName());
        publicMember = 1;
        privateMember = 2;
    }

    public void publicMethod() {
        Log("PolymorphismTest::publicMethod()");
        Log(publicMember);
        Log(privateMember);
    }

    private void privateMethod() {
        Log("PolymorphismTest::privateMethod()");
        Log(publicMember);
        Log(privateMember);
    }

    public void superMethod() {
        Log("PolymorphismTest::super()");
    }

    public void print() {
        Log("PolymorphismTest::print()");
        publicMethod();
        privateMethod();
    }

    static class Derived extends PolymorphismTest {
        public int  publicMember;
        private int privateMember;

        public Derived() {
            publicMember = 3;
            privateMember = 4;
        }

        public void publicMethod() {
            Log("Derived::publicMethod()");
            Log(publicMember);
            Log(privateMember);
        }

        private void privateMethod() {
            Log("Derived::privateMethod()");
            Log(publicMember);
            Log(privateMember);
        }

        public void print() {
            Log("PolymorphismTest::print()");
            publicMethod();
            privateMethod();
        }

        public void superMethod() {
            super.superMethod();
            Log("Derived::super()");
        }
    }

    interface Iface {
        public void ifaceMethod();
        final public static int ifaceInt = 42;
    }

    static class DerivedIface extends PolymorphismTest implements Iface {
        public void ifaceMethod() {
            Log("Inside ifaceMethod()");
        }
    }

    private static void doCast(Object o) {
        ((PolymorphismTest) o).publicMethod();
    }
    
    public static void main(String[] args) {
        Log(PolymorphismTest.class.getName());
        PolymorphismTest a = new PolymorphismTest();
        a.print();
        Log(a.publicMember);
        a.superMethod();
        if (a instanceof PolymorphismTest) {
            Log("instanceof PolymorphismTest");
        }
        if (a instanceof Derived) {
            Log("instanceof Derived");
        }
        if (a instanceof DerivedIface) {
            Log("instanceof DerivedIface");
        }
        Log("===============");
        a = new Derived();
        a.print();
        Log(a.publicMember);
        a.superMethod();
        if (a instanceof PolymorphismTest) {
            Log("instanceof PolymorphismTest");
        }
        if (a instanceof Derived) {
            Log("instanceof Derived");
        }
        if (a instanceof DerivedIface) {
            Log("instanceof DerivedIface");
        }
        Log("===============");
        Derived b = new Derived();
        b.print();
        Log(b.publicMember);
        Log(((PolymorphismTest) b).publicMember);
        b.superMethod();
        if (b instanceof PolymorphismTest) {
            Log("instanceof PolymorphismTest");
        }
        if (b instanceof Derived) {
            Log("instanceof Derived");
        }
        Log("===============");
        DerivedIface c = new DerivedIface();
        Log(Iface.ifaceInt);
        Log(c.ifaceInt);
        c.print();
        c.ifaceMethod();
        Log(c.publicMember);
        c.superMethod();
        if (c instanceof PolymorphismTest) {
            Log("instanceof PolymorphismTest");
        }
        if (c instanceof DerivedIface) {
            Log("instanceof DerivedIface");
        }
        Log("===============");
        doCast(b);
        Class<?> cl = int.class;
        Log(cl.getName());
    }
}
