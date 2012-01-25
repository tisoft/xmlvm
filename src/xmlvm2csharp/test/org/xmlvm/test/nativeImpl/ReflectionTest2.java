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

/*
 * tests native implementation of java.lang.Class,
 * mainly, getName(), getSimpleName() and getCanonicalName()
 */
class OuterClass {
    class InnerClass{}
    class InnerChild extends OuterClass {}
}

public class ReflectionTest2 {

    public static int localId = 1;
    public static int anonymousId = 0;

    // this dummy method is only used to increment the localId
    public static String getLocalName() {
        class Local {} // increment localId
        Class<?> localClass = Local.class;
        return localClass.getName();
    }

    public static void main(String[] args) {
        int numTests = 82;
        String[] description = new String[numTests];
        boolean[] result = new boolean[numTests];
        int i = -1;
        String thisPackage = "org.xmlvm.test.nativeImpl";
        String thisClass = thisPackage + ".ReflectionTest2";

        // getSuperClass:
        i++;
        result[i] = java.lang.Object.class.getSuperclass() == null;
        description[i] = "java.lang.Object.class.getSuperclass() == null";
        i++;
        result[i] = int.class.getSuperclass() == null;
        description[i] = "int.class.getSuperclass() == null";

        // getName, getSimpleName, getCanonicalName
        i++;
        result[i] = java.lang.Object.class.getName().equals("java.lang.Object");
        description[i] = "java.lang.Object.class.getName().equals(\"java.lang.Object\")";
        i++;
        result[i] = java.lang.Object.class.getCanonicalName().equals("java.lang.Object");
        description[i] = "java.lang.Object.class.getCanonicalName().equals(\"java.lang.Object\")";
        i++;
        result[i] = java.lang.Object.class.getSimpleName().equals("Object");
        description[i] = "java.lang.Object.class.getSimpleName().equals(\"Object\")";
        i++;
        result[i] = java.lang.String.class.getName().equals("java.lang.String");
        description[i] = "java.lang.String.class.getName().equals(\"java.lang.String\")";
        i++;
        result[i] = java.lang.String.class.getCanonicalName().equals("java.lang.String");
        description[i] = "java.lang.String.class.getCanonicalName().equals(\"java.lang.String\")";
        i++;
        result[i] = java.lang.String.class.getSimpleName().equals("String");
        description[i] = "java.lang.String.class.getSimpleName().equals(\"String\")";
        i++;
        result[i] = boolean.class.getName().equals("boolean");
        description[i] = "boolean.class.getName().equals(\"boolean\")";
        i++;
        result[i] = boolean.class.getCanonicalName().equals("boolean");
        description[i] = "boolean.class.getCanonicalName().equals(\"boolean\")";
        i++;
        result[i] = boolean.class.getSimpleName().equals("boolean");
        description[i] = "boolean.class.getSimpleName().equals(\"boolean\")";
        i++;
        result[i] = byte.class.getName().equals("byte");
        description[i] = "byte.class.getName().equals(\"byte\")";
        i++;
        result[i] = byte.class.getCanonicalName().equals("byte");
        description[i] = "byte.class.getCanonicalName().equals(\"byte\")";
        i++;
        result[i] = byte.class.getSimpleName().equals("byte");
        description[i] = "byte.class.getSimpleName().equals(\"byte\")";
        i++;
        result[i] = char.class.getName().equals("char");
        description[i] = "char.class.getName().equals(\"char\")";
        i++;
        result[i] = char.class.getCanonicalName().equals("char");
        description[i] = "char.class.getCanonicalName().equals(\"char\")";
        i++;
        result[i] = char.class.getSimpleName().equals("char");
        description[i] = "char.class.getSimpleName().equals(\"char\")";
        i++;
        result[i] = short.class.getName().equals("short");
        description[i] = "short.class.getName().equals(\"short\")";
        i++;
        result[i] = short.class.getCanonicalName().equals("short");
        description[i] = "short.class.getCanonicalName().equals(\"short\")";
        i++;
        result[i] = short.class.getSimpleName().equals("short");
        description[i] = "short.class.getSimpleName().equals(\"short\")";
        i++;
        result[i] = int.class.getName().equals("int");
        description[i] = "int.class.getName().equals(\"int\")";
        i++;
        result[i] = int.class.getCanonicalName().equals("int");
        description[i] = "int.class.getCanonicalName().equals(\"int\")";
        i++;
        result[i] = int.class.getSimpleName().equals("int");
        description[i] = "int.class.getSimpleName().equals(\"int\")";
        i++;
        result[i] = long.class.getName().equals("long");
        description[i] = "long.class.getName().equals(\"long\")";
        i++;
        result[i] = long.class.getCanonicalName().equals("long");
        description[i] = "long.class.getCanonicalName().equals(\"long\")";
        i++;
        result[i] = long.class.getSimpleName().equals("long");
        description[i] = "long.class.getSimpleName().equals(\"long\")";
        i++;
        result[i] = float.class.getName().equals("float");
        description[i] = "float.class.getName().equals(\"float\")";
        i++;
        result[i] = float.class.getCanonicalName().equals("float");
        description[i] = "float.class.getCanonicalName().equals(\"float\")";
        i++;
        result[i] = float.class.getSimpleName().equals("float");
        description[i] = "float.class.getSimpleName().equals(\"float\")";
        i++;
        result[i] = double.class.getName().equals("double");
        description[i] = "double.class.getName().equals(\"double\")";
        i++;
        result[i] = double.class.getCanonicalName().equals("double");
        description[i] = "double.class.getCanonicalName().equals(\"double\")";
        i++;
        result[i] = double.class.getSimpleName().equals("double");
        description[i] = "double.class.getSimpleName().equals(\"double\")";
        // inner class:
        Class<?> innerClass = OuterClass.InnerClass.class;
        i++;
        result[i] = innerClass.getName().equals(thisPackage
                + ".OuterClass$InnerClass");
        description[i] = "inner class name is: "
                + thisPackage + "OuterClass$InnerClass";
        i++;
        result[i] = innerClass.getSimpleName().equals("InnerClass");
        description[i] = "inner class simple name is: InnerClass";
        i++;
        result[i] = innerClass.getCanonicalName().equals(thisPackage
                + ".OuterClass.InnerClass");
        description[i] = "inner class canonical name is: "
                + thisPackage + "OuterClass.InnerClass";
        // inherited inner class:
        innerClass = OuterClass.InnerChild.InnerChild.InnerClass.class;
        i++;
        result[i] = innerClass.getName().equals(thisPackage
                + ".OuterClass$InnerClass");
        description[i] = "inherited inner class name is: "
                + thisPackage + "OuterClass$InnerClass";
        i++;
        result[i] = innerClass.getSimpleName().equals("InnerClass");
        description[i] = "injerited inner class simple name is: InnerClass";
        i++;
        result[i] = innerClass.getCanonicalName().equals(thisPackage
                + ".OuterClass.InnerClass");
        description[i] = "inherited inner class canonical name is: "
                + thisPackage + "OuterClass.InnerClass";
        // local:
        localId++;
        class Local {}
        Class<Local> localClass = Local.class;
        i++;
        result[i] = localClass.getName().equals(thisClass 
                + "$" + localId + "Local");
        description[i] = "local class name is: "
                + thisClass + "$" + localId + "Local";
        i++;
        result[i] = localClass.getSimpleName().equals("Local");
        description[i] = "local class simple name is: " + "Local";
        i++;
        result[i] = localClass.getCanonicalName()==null;
        description[i] = "local class canonical name is null";
        // anonymous:
        anonymousId++;
        Object anonymousInstance = new Object() {}; // increment the anonymousId
        anonymousId++;
        anonymousInstance = new Object() {}; // increment the anonymousId
        anonymousId++;
        anonymousInstance = new Object() {};
        Class<?> anonymousClass = anonymousInstance.getClass();
        i++;
        result[i] = anonymousClass.getName().equals(thisClass + "$" + anonymousId);
        description[i] = "anonymous class name is: " 
                + thisClass + "$" + anonymousId;
        i++;
        result[i] = anonymousClass.getSimpleName().isEmpty();
        description[i] = "anonymous class simple name is empty string";
        i++;
        result[i] = anonymousClass.getCanonicalName()==null;
        description[i] = "anonymous class canonical name is null";

        // arrays names:
        i++;
        result[i] = java.lang.Object[].class.getName().equals("[Ljava.lang.Object;");
        description[i] = "java.lang.Object[].class.getName().equals(\"[Ljava.lang.Object;\")";
        i++;
        result[i] = java.lang.Object[].class.getCanonicalName().equals("java.lang.Object[]");
        description[i] = "java.lang.Object[].class.getCanonicalName().equals(\"java.lang.Object[]\")";
        i++;
        result[i] = java.lang.Object[].class.getSimpleName().equals("Object[]");
        description[i] = "java.lang.Object[].class.getSimpleName().equals(\"Object[]\")";
        i++;
        result[i] = java.lang.String[].class.getName().equals("[Ljava.lang.String;");
        description[i] = "java.lang.String[].class.getName().equals(\"[Ljava.lang.String;\")";
        i++;
        result[i] = java.lang.String[].class.getCanonicalName().equals("java.lang.String[]");
        description[i] = "java.lang.String[].class.getCanonicalName().equals(\"java.lang.String[]\")";
        i++;
        result[i] = java.lang.String[].class.getSimpleName().equals("String[]");
        description[i] = "java.lang.String[].class.getSimpleName().equals(\"String[]\")";
        i++;
        result[i] = boolean[].class.getName().equals("[Z");
        description[i] = "boolean[].class.getName().equals(\"[Z\")";
        i++;
        result[i] = boolean[].class.getCanonicalName().equals("boolean[]");
        description[i] = "boolean[].class.getCanonicalName().equals(\"boolean[]\")";
        i++;
        result[i] = boolean[].class.getSimpleName().equals("boolean[]");
        description[i] = "boolean[].class.getSimpleName().equals(\"boolean[]\")";
        i++;
        result[i] = byte[].class.getName().equals("[B");
        description[i] = "byte[].class.getName().equals(\"[B\")";
        i++;
        result[i] = byte[].class.getCanonicalName().equals("byte[]");
        description[i] = "byte[].class.getCanonicalName().equals(\"byte[]\")";
        i++;
        result[i] = byte[].class.getSimpleName().equals("byte[]");
        description[i] = "byte[].class.getSimpleName().equals(\"byte[]\")";
        i++;
        result[i] = char[].class.getName().equals("[C");
        description[i] = "char[].class.getName().equals(\"[C\")";
        i++;
        result[i] = char[].class.getCanonicalName().equals("char[]");
        description[i] = "char[].class.getCanonicalName().equals(\"char[]\")";
        i++;
        result[i] = char[].class.getSimpleName().equals("char[]");
        description[i] = "char[].class.getSimpleName().equals(\"char[]\")";
        i++;
        result[i] = short[].class.getName().equals("[S");
        description[i] = "short[].class.getName().equals(\"[S\")";
        i++;
        result[i] = short[].class.getCanonicalName().equals("short[]");
        description[i] = "short[].class.getCanonicalName().equals(\"short[]\")";
        i++;
        result[i] = short[].class.getSimpleName().equals("short[]");
        description[i] = "short[].class.getSimpleName().equals(\"short[]\")";
        i++;
        result[i] = int[].class.getName().equals("[I");
        description[i] = "int[].class.getName().equals(\"[I\")";
        i++;
        result[i] = int[].class.getCanonicalName().equals("int[]");
        description[i] = "int[].class.getCanonicalName().equals(\"int[]\")";
        i++;
        result[i] = int[].class.getSimpleName().equals("int[]");
        description[i] = "int[].class.getSimpleName().equals(\"int[]\")";
        i++;
        result[i] = long[].class.getName().equals("[J");
        description[i] = "long[].class.getName().equals(\"[J\")";
        i++;
        result[i] = long[].class.getCanonicalName().equals("long[]");
        description[i] = "long[].class.getCanonicalName().equals(\"long[]\")";
        i++;
        result[i] = long[].class.getSimpleName().equals("long[]");
        description[i] = "long[].class.getSimpleName().equals(\"long[]\")";
        i++;
        result[i] = float[].class.getName().equals("[F");
        description[i] = "float[].class.getName().equals(\"[F\")";
        i++;
        result[i] = float[].class.getCanonicalName().equals("float[]");
        description[i] = "float[].class.getCanonicalName().equals(\"float[]\")";
        i++;
        result[i] = float[].class.getSimpleName().equals("float[]");
        description[i] = "float[].class.getSimpleName().equals(\"float[]\")";
        i++;
        result[i] = double[].class.getName().equals("[D");
        description[i] = "double[].class.getName().equals(\"[D\")";
        i++;
        result[i] = double[].class.getCanonicalName().equals("double[]");
        description[i] = "double[].class.getCanonicalName().equals(\"double[]\")";
        i++;
        result[i] = double[].class.getSimpleName().equals("double[]");
        description[i] = "double[].class.getSimpleName().equals(\"double[]\")";
        // annonymous arrays
        i++;
        Object localArray = Array.newInstance(localClass, 42);
        result[i] = localArray.getClass().getName().equals("[L"
                + thisClass + "$" + localId + "Local;");
        description[i] = "local class array's class name is: "
                + "[L" + thisClass + "$" + localId + "Local;";
        i++;
        result[i] = localArray.getClass().getSimpleName().equals("Local[]");
        description[i] = "local class array's class simple name is \"Local[]\"";
        i++;
        result[i] = localArray.getClass().getCanonicalName()==null;
        description[i] = "local class array's class canonical name is null";
        // anonymous arrays
        i++;
        Object anonymousArray = Array.newInstance(anonymousClass, 42);
        result[i] = anonymousArray.getClass().getName().equals("[L" 
                + thisClass + "$" + anonymousId + ";");
        description[i] = "anonymous class array's class name is: "
                + "[L" + thisClass + "$" + anonymousId + ";";
        i++;
        result[i] = anonymousArray.getClass().getSimpleName().equals("[]");
        description[i] = "anonymous class array's class simple name is \"[]\"";
        i++;
        result[i] = anonymousArray.getClass().getCanonicalName()==null;
        description[i] = "anonymous class array's class canonical name is null";
        // multi-dim'l arrays
        i++;
        result[i] = int[][][][][].class.getName().equals("[[[[[I");
        description[i] = "int[][][][][].class.getName().equals(\"[[[[[I\")";
        i++;
        result[i] = int[][][][][].class.getCanonicalName().equals("int[][][][][]");
        description[i] = "int[][][][][].class.getCanonicalName().equals(\"int[][][][][]\")";
        i++;
        result[i] = int[][][][][].class.getSimpleName().equals("int[][][][][]");
        description[i] = "int[][][][][].class.getSimpleName().equals(\"int[][][][][]\")";



        // print results
        for (int j=0; j<numTests; j++) {
            System.out.println(j + ") "
                    + (result[j] ? "passed" : "failed") + ": "+ description[j]);
        }
    }

}
