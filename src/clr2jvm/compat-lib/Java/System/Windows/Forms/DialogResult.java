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



public class DialogResult
    extends Enum
{

    final public static int None   = 0x0000;
    final public static int OK    = 0x0001;
    final public static int Cancel = 0x0002;
    final public static int Abort   = 0x0003;
    final public static int Retry   = 0x0004;
    final public static int Ignore   = 0x0005;
    final public static int Yes   = 0x0006;
    final public static int No   = 0x0007;
    public int              value__;



    public DialogResult()
    {
    	this.value__ = None;
    }
    public DialogResult(int styles)
    {
        this.value__ = styles;
    }



    public static DialogResult __BOX(int styles)
    {
        return new DialogResult(styles);
    }



    public int getStyles()
    {
        return value__;
    }
}
