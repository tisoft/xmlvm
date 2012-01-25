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

import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Arrays;

/*
 * mostly taken from src/test/java/org/xmlvm/test
 * but fields are sorted before printed, so that it is now possible to
 * to compare the output on differenct platforms.
 */
public class ReflectionTest {

    public static String staticLabel = "Hello World";

    public int           x;
    public String        label;


    public ReflectionTest() {
        x = 42;
        label = "XMLVM";
    }

    public ReflectionTest(int x, String label) {
        this.x = x;
        this.label = label;
    }

    public void printString(String s) {
        System.out.println("[" + label + "] printString(): " + s);
    }

    public static void print(ReflectionTest obj) throws IllegalArgumentException,
            IllegalAccessException {
        System.out.println("----------------------------");
        System.out.println(obj.getClass().getName());
        System.out.println(obj.x);
        System.out.println(int.class.getName());


        Field[] fields = ReflectionTest.class.getDeclaredFields();
        String[] fieldStrings = new String[fields.length];
        for (int i=0; i<fields.length; i++) {
            Field field = fields[i];
            fieldStrings[i] = field.getName() + " ("
                    + field.getType().getName() + ") = " + field.get(obj);
        }
        Arrays.sort(fieldStrings);
        for (String str : fieldStrings) {
            System.out.println(str);
        }
    }

    public static void main(String[] args) throws InstantiationException, IllegalAccessException,
            SecurityException, NoSuchMethodException, IllegalArgumentException,
            InvocationTargetException {
        Class<ReflectionTest> clazz = ReflectionTest.class;
        System.out.println(clazz.getName());
        ReflectionTest obj = clazz.newInstance();
        print(obj);
        Integer arg1 = new Integer(4711);
        String arg2 = new String("foobar");
        Constructor<ReflectionTest> ctor = ReflectionTest.class.getDeclaredConstructor(int.class,
                String.class);
        obj = (ReflectionTest) ctor.newInstance(arg1, arg2);
        print(obj);
        
        Class<?> paramTypes[] = {String.class};
        Method m = ReflectionTest.class.getDeclaredMethod("printString", paramTypes);
        m.invoke(obj, "***");
    }

}
