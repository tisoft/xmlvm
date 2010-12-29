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
public class MessageBoxIcon extends Enum
{
	final public static int None = 0;
	final public static int Hand = 16;
	final public static int Error = 16;
	final public static int Stop = 16;
	final public static int Question = 32;
	final public static int Exclamation = 48;
	final public static int Warning = 48;
	final public static int Asterisk = 64;
	final public static int Information = 64;
	public int value__;
	public MessageBoxIcon()
	{
		this.value__ = 0;
	}
	public MessageBoxIcon(int toSet)
	{
		this.value__ = toSet;
	}
	public static MessageBoxIcon __BOX(int toBox)
	{
		return new MessageBoxIcon(toBox);
	}
}