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

qx.Class.define("javax_swing_ImageIcon", {
	extend: java_awt_Component,
	construct: function() {

	},
	members:
	{
		fileName: "",
		$$init____java_lang_String: function(fileName) {
			console.log("ImageIcon: " + fileName.$str);
			this.fileName = fileName.$str;
		},
		$getIconWidth: function() {
			//TODO
			console.log("TODO: ImageIcon.getIconWidth. Defaulting to 20");
			return 20;
		},
		$getIconHeight: function() {
			//TODO
			console.log("TODO: ImageIcon.getIconHeight. Defaulting to 20");
			return 20;
		},
		getFileName: function() {
			return this.fileName;
		}
	}
});