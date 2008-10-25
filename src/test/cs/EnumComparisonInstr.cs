using System;

public class EnumComparisonInstr
{
    enum Season { Spring, Summer, Fall, Winter };

    public static void Main()
    {
        Season fall = Season.Fall;

        Season spring = Season.Spring;

        bool test = fall == spring;

        Console.Write("Does Fall equal Spring? ");
        Console.WriteLine(test);

        test = fall < spring;

        Console.Write("Is Fall before Spring? ");
        Console.WriteLine(test);

        test = fall > spring;

        Console.Write("Is Spring before Fall? ");
        Console.WriteLine(test);
    }
}
