using System;


public class EnumSeasonsLong
{
    public enum Season : long
    { 
        Spring, 
        Summer, 
        Fall, 
        Winter };

    public static void Main()
    {
        Season s = Season.Fall;
        Console.WriteLine(s);  // Will write out fall
    }
}

