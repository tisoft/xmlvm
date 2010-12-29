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

qx.Class.define("System_Drawing_Size", {
  extend: System_ValueType,
  members:
  {
  	 x: 0,
  	 y: 0,
  	 $$init_: function()
  	 {
  	 	this.x = 0;
  	 	this.y = 0;
  	 },
  	 $__CONSTRUCTOR___int_int: function(_x, _y)
  	 {
  	 	this.x = _x;
  	 	this.y = _y;
  	 }
  },
   statics:
  {
  	$__NEW___int_int: function(_x, _y)
  	{
  		return new System_Drawing_Size(_x, _y);
  	}
  }
});