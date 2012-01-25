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

import java.lang.reflect.Array;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.Arrays;



public class ReflectionTest3 {
    public class OuterClass {
        public Integer publicStaticOuterMethod() {
            return 1;
        }

        private Integer privateStaticOuterMethod() {
            return 2;
        }

        public Integer publicInstanceOuterMethod() {
            return 3;
        }

        private Integer privateInstanceOuterMethod() {
            return 4;
        }

        class InnerClass {
        }

        class InnerChild extends OuterClass {
        }
    }

    public static String getMethodSignature(Method method) {
        StringBuilder result = new StringBuilder();
        result.append(method.getReturnType().getName());
        result.append(" ");
        result.append(method.getDeclaringClass().getName());
        result.append(".");
        result.append(method.getName());
        result.append("(");
        Class<?>[] params = method.getParameterTypes();
        int numParams = params.length;
        for (int i=0; i<numParams; i++) {
            result.append(params[i].getName());
            if (i<numParams-1) {
                result.append(",");
            }
        }
        result.append(")");
        return result.toString();
    }

    public static String[] getMethodSignatures(Method[] methods) {
        int numMethods = methods.length;
        String[] result = new String[numMethods];
        for (int i=0; i<numMethods; i++) {
            result[i] = getMethodSignature(methods[i]);
        }
        return result;
    }

    public static void printMethods(Method[] methods) {
        String[] methodSignatures = getMethodSignatures(methods);
        Arrays.sort(methodSignatures);
        for (String methodSignature : methodSignatures) {
            System.out.println(methodSignature);
        }
    }

    public static String getFieldSignature(Field field) {
        StringBuilder result = new StringBuilder();
        result.append(field.getType().getName());
        result.append(" ");
        result.append(field.getDeclaringClass().getName());
        result.append(".");
        result.append(field.getName());
        return result.toString();
    }

    public static String[] getFieldSignatures(Field[] fields) {
        int numFields = fields.length;
        String[] result = new String[numFields];
        for (int i=0; i<numFields; i++) {
            result[i] = getFieldSignature(fields[i]);
        }
        return result;
    }

    public static void printFields(Field[] fields) {
        String[] fieldSignatures = getFieldSignatures(fields);
        Arrays.sort(fieldSignatures);
        for (String fieldSignature : fieldSignatures) {
            System.out.println(fieldSignature);
        }
    }

    public static void printTitle(String str) {
        for (int i=0; i<str.length(); i++) {
            System.out.print("=");
        }
        System.out.println();
        System.out.println(str);
        for (int i=0; i<str.length(); i++) {
            System.out.print("=");
        }
        System.out.println();
    }

    public static void printClassTest(Class<?> clazz) {
        String className = clazz.getName();
        Method[] methods = null;
        Field[] fields = null;
        printTitle(className + " getMethods(): ");
        methods = clazz.getMethods();
        printMethods(methods);
        printTitle(className + " getDeclaredMethods(): ");
        methods = clazz.getDeclaredMethods();
        printMethods(methods);
        printTitle(className + " getFields(): ");
        fields = clazz.getFields();
        printFields(fields);
        printTitle(className + " getDeclaredFields(): ");
        fields = clazz.getDeclaredFields();
        printFields(fields);
    }



    public static void main(String[] args) {
        Class<?> outerClass = OuterClass.class;
	// forName(Outer$Inner)
        Class<?> innerClass = OuterClass.InnerClass.class; 
        Class<?> intClass = int.class;
        printClassTest(outerClass);
        printClassTest(innerClass);
        printClassTest(intClass);
    }

}
