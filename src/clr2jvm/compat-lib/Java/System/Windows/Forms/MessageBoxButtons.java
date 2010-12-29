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
public class MessageBoxButtons extends Enum
{
	final public static int OK = 0;
	final public static int OKCancel = 1;
	final public static int AbortRetryIgnore = 2;
	final public static int YesNoCancel = 3;
	final public static int YesNo = 4;
	final public static int RetryCancel = 5;
	public int value__;
	public MessageBoxButtons()
	{
		this.value__ = 0;
	}
	public MessageBoxButtons(int toSet)
	{
		this.value__ = toSet;
	}
	public static MessageBoxButtons __BOX(int toBox)
	{
		return new MessageBoxButtons(toBox);
	}
}