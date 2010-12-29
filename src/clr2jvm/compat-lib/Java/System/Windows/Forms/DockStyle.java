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



public class DockStyle
    extends Enum
{

    final public static int None   = 0x0000;
    final public static int Top    = 0x0001;
    final public static int Bottom = 0x0002;
    final public static int Left   = 0x0004;
    final public static int Fill  = 0x0005;

    public int              value__;



    public DockStyle(int styles)
    {
        this.value__ = styles;
    }



    public static DockStyle __BOX(int styles)
    {
        return new DockStyle(styles);
    }



    public int getStyles()
    {
        return value__;
    }
}