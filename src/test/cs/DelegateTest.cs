using System;
	

public class DelegateTest {

    public delegate void Print(String str);

    public static void toConsole(String str)
    {
        Console.WriteLine("toConsole: " + str);
    }
	
    public static void toFile(String str)
    {
        Console.WriteLine("toFile: " + str);
    }

    public static void display(Print pMethod, String msg)
    {
        pMethod(msg);
    }

    public static void Main()
    {
        Print s = new Print(toConsole);
        Print v = new Print(toFile);
        display(s, "Hello World");
        display(v, "Hello World");
    }
}