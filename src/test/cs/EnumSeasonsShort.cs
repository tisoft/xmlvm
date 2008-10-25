using System;


public class EnumSeasonsShort
{
    public enum Season : short
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

