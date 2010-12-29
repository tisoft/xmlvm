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

package System.Windows.Forms;

import System.Enum;



public class ScrollBars
    extends Enum
{

    final public static int None       = 0;
    final public static int Horizontal = 1;
    final public static int Vertical   = 2;
    final public static int Both       = 3;

    public int              value__;



    public ScrollBars(int styles)
    {
        this.value__ = styles;
    }



    public static ScrollBars __BOX(int styles)
    {
        return new ScrollBars(styles);
    }



    public int getValue()
    {
        return value__;
    }
}
