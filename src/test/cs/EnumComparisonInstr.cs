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
