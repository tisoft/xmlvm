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

package org.xmlvm.test.nativeImpl;

import java.util.Properties;

/*
 * simple test for basic system properties
 */
public class SystemPropertiesTest {
    public static void main(String[] args) {
        System.out.println("file.separator: "
                + System.getProperty("file.separator"));
        Properties props = System.getProperties();
        System.out.println("path.separator: "
                + props.getProperty("path.separator"));
        char[] lineSepArray = props.getProperty("line.separator").toCharArray();
        System.out.print("line.separator: 0x");
        for (int i=0; i<lineSepArray.length; i++) {
            System.out.printf("%02x",(int)lineSepArray[i]);
        }
        System.out.println();
        System.out.println("user.name: "
                + props.getProperty("user.name"));
        System.out.println("user.dir: "
                + props.getProperty("user.dir"));
    }
}
