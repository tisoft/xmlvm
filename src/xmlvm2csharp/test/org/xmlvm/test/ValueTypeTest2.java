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
package org.xmlvm.test;

/*
 * simple method overloading test for clash of methods with
 * char, boolean, and int parameters, in case the cross compilation
 * maps them all to int type
 */
public class ValueTypeTest2 {
    public String getStr(int i) {
        return "getStr(int) was called";
    }

    public String getStr(char ch) {
        return "getStr(char) was called";
    }

    public String getStr(boolean bool) {
        return "getStr(boolean) was called";
    }

    public static void main(String[] args) {
        ValueTypeTest2 a = new ValueTypeTest2();
        System.out.println(a.getStr(2));
        System.out.println(a.getStr('a'));
        System.out.println(a.getStr(true));
    }

}
