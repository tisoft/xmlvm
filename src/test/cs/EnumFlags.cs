// This example requires unboxing in its transform to
// Java.

using System;

public class EnumFlags
{
    enum Colors { Blue = 0x01, 
                  Red = 0x02,
                  Green = 0x04, 
                  Yellow = 0x08 };

    public static void Main()
    {
        Colors favorites = Colors.Blue | Colors.Green;
        int favoriteNum = (int)favorites;
        Console.WriteLine(favoriteNum);  // Will write out 5
    }
}

