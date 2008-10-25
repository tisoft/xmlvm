using System;


public class EnumSeasons
{
    enum Season { Spring, Summer, Fall, Winter };

    public static void Main()
    {
        Season s = Season.Fall;
        Console.WriteLine(s);  // Will write out fall
    }
}

