using System;


public class EnumSeasonsByte
{
    public enum Season : sbyte
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

