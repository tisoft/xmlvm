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

package org.xmlvm.test.arrays;

/*
 * taken from src/test/java/org/xmlvm/test
 */
public class ArrayTest
{

    private int idx;



    public ArrayTest(int idx)
    {
        this.idx = idx;
    }



    static private void printArray(float[] color)
    {
        for (int i = 0; i < color.length; i++)
            System.out.println(color[i]);
    }



    static private void testFloatArray()
    {
        float[] someColor = {3.0f, 4.0f, 5.0f};
        printArray(someColor);
    }



    static private void testObjectArray()
    {
        ArrayTest[] array = new ArrayTest[5];
        for (int i = 0; i < 5; i++) {
            array[i] = new ArrayTest(i * 2);
        }
        for (int j = 0; j < 5; j++) {
            System.out.println(array[j].idx);
        }
    }



    /**
     * @param args
     */
    public static void main(String[] args)
    {
        testFloatArray();
        testObjectArray();
    }

}
