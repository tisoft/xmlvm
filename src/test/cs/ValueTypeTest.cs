
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
