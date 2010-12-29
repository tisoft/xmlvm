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

package System;

public class String extends Object {

    public java.lang.String value;

    public static String    Empty = new String("");

    public String(java.lang.String value) {
        this.value = value;
    }

    @Override
    public String ToString() {
        return this;
    }

    public int get_Length() {
        return value.length();
    }

    static public String Concat(String s1, String s2) {
        return new String(s1.value + s2.value);
    }

    static public String Concat(String s1, String s2, String s3) {
        return new String(s1.value + s2.value + s3.value);
    }

    static public String Concat(Object[] objs) {
        java.lang.String str = "";
        for (int i = 0; i < objs.length; i++) {
            str += objs[i].ToString().value;
        }
        return new String(str);
    }

    static public boolean op_Equality(java.lang.String s1, java.lang.String s2) {
        return s1.equals(s2);
    }

    static public boolean op_Equality(String s1, String s2) {
        return s1.value.equals(s2.value);
    }
}
