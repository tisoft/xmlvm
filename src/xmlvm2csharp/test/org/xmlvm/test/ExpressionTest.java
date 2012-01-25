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
 * taken from src/test/java/org/xmlvm/test/
 */
public class ExpressionTest
{

    static int a = 1;
    static int b = 2;
    static int c = 3;
    static int d = 4;



    static public void SimpleTest()
    {
        System.out.println(a + (b % 11) * (c + 42 * d));
    }



    static public void main(String[] args)
    {
        SimpleTest();
    }
}