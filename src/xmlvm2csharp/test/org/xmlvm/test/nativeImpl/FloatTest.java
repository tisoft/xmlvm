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
 * tests native implementation of java.lang.Float
 */
public class FloatTest {
    public static void main(String[] args) {
        int numTests = 14;
        String[] description = new String[numTests];
        boolean[] result = new boolean[numTests];
        int i = -1;

        // floatToIntBits:
        i++;
        result[i] = Float.floatToIntBits(Float.NaN) == 0x7FC00000;
        description[i] = "floatToIntBits(NaN) == 0x7FC00000";
        i++;
        result[i] = Float.floatToIntBits(Float.POSITIVE_INFINITY) == 0x7F800000;
        description[i] = "floatToIntBits(+Infinity) == 0x7F800000";
        i++;
        result[i] = Float.floatToIntBits(Float.NEGATIVE_INFINITY) == 0xFF800000;
        description[i] = "floatToIntBits(-Infinity) == 0x0xFF800000";
        i++;
        result[i] = Float.compare(Float.intBitsToFloat(Float.floatToIntBits(1.546F)),1.546F)==0;
        description[i] = "longBitsToFloat(floatToIntBits(x))==x, for some x";
        i++;
        result[i] = Float.floatToIntBits(-1.461381E-12F) == 0xABCDABCD;
        description[i] = "floatToIntBits(-1.461381E-12) == 0xABCDABCD";

        // intBitsToFloat:
        i++;
        result[i] = Float.compare(Float.intBitsToFloat(0x7F800000),
                                   Float.POSITIVE_INFINITY)==0;
        description[i] = "intBitsToFloat(0x7F800000)==+Infinity";
        i++;
        result[i] = Float.compare(Float.intBitsToFloat(0xFF800000),
                                   Float.NEGATIVE_INFINITY)==0;
        description[i] = "intBitsToFloat(0xFF800000)==-Infinity";
        i++;
        result[i] = Float.isNaN(Float.intBitsToFloat(0x7F800001));
        description[i] = "intBitsToFloat(0x7F800001)==NaN";
        i++;
        result[i] = Float.isNaN(Float.intBitsToFloat(0x7FABCDEF));
        description[i] = "intBitsToFloat(0x7FABCDEF)==NaN";
        i++;
        result[i] = Float.isNaN(Float.intBitsToFloat(0x7FFFFFFF));
        description[i] = "intBitsToFloat(0x7FFFFFFF)==NaN";
        i++;
        result[i] = Float.isNaN(Float.intBitsToFloat(0xFF800001));
        description[i] = "intBitsToFloat(0xFF800001)==NaN";
        i++;
        result[i] = Float.isNaN(Float.intBitsToFloat(0xFFABCDEF));
        description[i] = "intBitsToFloat(0xFFABCDEF)==NaN";
        i++;
        result[i] = Float.isNaN(Float.intBitsToFloat(0xFFFFFFFF));
        description[i] = "intBitsToFloat(0xFFFFFFFF)==NaN";
        i++;
        result[i] = Float.compare(Float.intBitsToFloat(0x12341234), 5.682042E-28F) == 0;
        description[i] = "intBitsToFloat(0x12341234)==5.682042E-28";

        // print results
        for (int j=0; j<numTests; j++) {
            System.out.println(j + ") "
                    + (result[j] ? "passed" : "failed") + ": "+ description[j]);
        }
    }
}
