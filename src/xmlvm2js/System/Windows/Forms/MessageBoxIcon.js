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

qx.Class.define("System_Windows_Forms_MessageBoxIcon", {
	extend :System_Enum,
	construct : function(in_val) {
		this._value__ = in_val;
	},
	statics : {
		None :0,
		Hand :16,
		Error :16,
		Stop :16,
		Question :32,
		Exclamation :48,
		Warning :48,
		Asterisk :64,
		Information :64,
		___BOX___int : function(in_val) {
			return new System_Windows_Forms_MessageBoxIcon(in_val);
		}
	},
	members : {
		_value__ :0
	}
});
