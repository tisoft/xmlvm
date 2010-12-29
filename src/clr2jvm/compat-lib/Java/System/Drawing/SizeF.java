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

package System.Drawing;

import System.ValueType;



public class SizeF
    extends ValueType
{

    public float x;
    public float y;



    public void __CONSTRUCTOR(float x, float y)
    {
        this.x = x;
        this.y = y;
    }
    
    
    // Necessary in case the Visual Studio compiler
    // decides to treat a Value Type as an object.
    public static SizeF __NEW(float x, float y)
    {
        SizeF s = new SizeF();
        s.__CONSTRUCTOR(x, y);
        return s;
    }
}
