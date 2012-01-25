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

/*
 * tests native implementation of methods in java.lang.Double
 */
public class DoubleTest {
    public static void main(String[] args) {
        int numTests = 16;
        String[] description = new String[numTests];
        boolean[] result = new boolean[numTests];
        int i = -1;
        // doubleToLongBits:
        i++;
        result[i] = Double.doubleToLongBits(Double.NaN) == 0x7FF8000000000000L;
        description[i] = "doubleToLongBits(NaN) == 0x7FF8000000000000L";
        i++;
        result[i] = Double.doubleToLongBits(Double.POSITIVE_INFINITY) == 0x7FF0000000000000L;
        description[i] = "doubleToLongBits(+Infinity) == 0x7FF0000000000000L";
        i++;
        result[i] = Double.doubleToLongBits(Double.NEGATIVE_INFINITY) == 0xFFF0000000000000L;
        description[i] = "doubleToLongBits(-Infinity) == 0xFFF0000000000000L";
        i++;
        result[i] = Double.compare(Double.longBitsToDouble(Double.doubleToLongBits(Math.PI/7)),Math.PI/7)==0;
        description[i] = "longBitsToDouble(doubleToLongBits(x))==x, for some x";
        i++;
        result[i] = Double.doubleToLongBits(Math.PI/7)==0x3FDCB91F3BBBA140L;
        description[i] = "doubleToLongBits(pi/7)==0x3FDCB91F3BBBA140";
        i++;
        result[i] = Double.doubleToLongBits(5.626349108908516E-221) == 0x1234567890ABCDEFL;
        description[i] = "doubleToLongBits(5.626349108908516E-221) == 0x1234567890ABCDEF";
        i++;
        result[i] = Double.doubleToLongBits(Math.sqrt(Math.E)) == 0x3FFA61298E1E069CL;
        description[i] = "doubleToLongBits(sqrt(e)) == 0x3FFA61298E1E069C";

        // longBitsToDouble:
        i++;
        result[i] = Double.compare(Double.longBitsToDouble(0x7FF0000000000000L),
                                   Double.POSITIVE_INFINITY)==0;
        description[i] = "longBitsToDouble(0x7FF0000000000000L)==+Infinity";
        i++;
        result[i] = Double.compare(Double.longBitsToDouble(0xFFF0000000000000L),
                                   Double.NEGATIVE_INFINITY)==0;
        description[i] = "longBitsToDouble(0xFFF0000000000000L)==-Infinity";
        i++;
        result[i] = Double.isNaN(Double.longBitsToDouble(0x7FF0000000000001L));
        description[i] = "longBitsToDouble(0x7FF0000000000001L)==NaN";
        i++;
        result[i] = Double.isNaN(Double.longBitsToDouble(0x7FF123456789ABCDL));
        description[i] = "longBitsToDouble(0x7FF123456789ABCDL)==NaN";
        i++;
        result[i] = Double.isNaN(Double.longBitsToDouble(0x7FFFFFFFFFFFFFFFL));
        description[i] = "longBitsToDouble(0x7FFFFFFFFFFFFFFFL)==NaN";
        i++;
        result[i] = Double.isNaN(Double.longBitsToDouble(0xFFF0000000000001L));
        description[i] = "longBitsToDouble(0xFFF0000000000001L)==NaN";
        i++;
        result[i] = Double.isNaN(Double.longBitsToDouble(0xFFF123456789ABCDL));
        description[i] = "longBitsToDouble(0xFFF123456789ABCDL)==NaN";
        i++;
        result[i] = Double.isNaN(Double.longBitsToDouble(0xFFFFFFFFFFFFFFFFL));
        description[i] = "longBitsToDouble(0xFFFFFFFFFFFFFFFFL)==NaN";
        i++;
        result[i] = Double.compare(Double.longBitsToDouble(0x13579BDF02468ACEL),1.7121363327076063E-215)==0;
        description[i] = "longBitsToDouble(0x13579BDF02468ACE)==1.7121363327076063E-215";

        // print results
        for (int j=0; j<numTests; j++) {
            System.out.println(j + ") "
                    + (result[j] ? "passed" : "failed") + ": "+ description[j]);
        }

    }


}
