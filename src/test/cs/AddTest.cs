/*
 *  XMLVM --- An XML-based Programming Language
 *  Copyright (c) 2004-2005 by Arno Puder
 *
 *  This program is free software; you can redistribute it and/or modify
 *  it under the terms of the GNU General Public License as published by
 *  the Free Software Foundation; either version 2 of the License, or
 *  (at your option) any later version.
 *
 *  This program is distributed in the hope that it will be useful,
 *  but WITHOUT ANY WARRANTY; without even the implied warranty of
 *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *  GNU General Public License for more details.
 *
 *  You should have received a copy of the GNU General Public License
 *  along with this program; if not, write to the Free Software
 *  Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139, USA.
 *
 *  For more information, visit the XMLVM Home Page at
 *  http://www.xml11.org/xmlvm/
 */

using System;

class AddTest {
		
	public static void Main()
	{
		int a = 11;
		int b = 22;
		Console.WriteLine(a + b);

		Console.WriteLine(checked((int) (a + b)));

		float x = 33f;
		float y = 44f;
		Console.WriteLine(x + y);

		a = 2000000000;
		b = 2000000000;
		Console.WriteLine(checked((int) (a + b)));
	}
}
