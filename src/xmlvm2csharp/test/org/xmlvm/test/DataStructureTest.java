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

import java.util.ArrayList;
import java.util.HashMap;

/**
 *
 * a simple test for data structures needed by aFireworks
 */
public class DataStructureTest {
    public static void main(String[] args) {
        ArrayList<String> al = new ArrayList<String>();
        al.add("Hel");
        al.add("lo");
        for (String str : al) {
            System.out.print(str);
        }
        HashMap<String,String> hm = new HashMap<String,String>();
        hm.put("b","Wor");
        hm.put("c", "ld");
        hm.put("a", " ");
        hm.put("d", "\n");
        System.out.print(hm.get("a"));
        System.out.print(hm.get("b"));
        System.out.print(hm.get("c"));
        System.out.print(hm.get("d"));

    }

}
