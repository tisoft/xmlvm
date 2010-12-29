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

/*
 * Compile with:
 * mcs ValueTypeTest.cs
 */


using System;


// Structs are value types
public struct Person
{
    public string Name;
    
    public Person(string name)
    {
        Name = name;
    }
}

class ValueTypeTest
{
    static void Main()
    {
        // Create a new Person on the stack
        Person p1 = new Person("Bob");

        // p2 is a separate copy of p1
        Person p2 = p1;

        // Change name of p2
        p2.Name = "Alice";

        // p1’s name is still Bob
        if (p1.Name == "Bob") Console.WriteLine("passed");

        // p1 and p2 point to different objects
        if (!p1.Equals(p2)) Console.WriteLine("passed");
    } 
}
