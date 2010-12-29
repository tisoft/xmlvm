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

qx.Class.define("java_awt_Color", {
	extend: java_lang_Object,
	construct: function() {
		this.r = 0;
		this.g = 0;
		this.b = 0;
	},
	statics:
	{
		$$$BLACK: 0,
		$$$WHITE: 0
	},
	members:
	{
		r:0,
		g:0,
		b:0,
		$$init____float_float_float: function(newR, newG, newB) {
			this.r = newR;
			this.g = newG;
			this.b = newB;
		}
	}
});

java_awt_Color.$BLACK = new java_awt_Color();
java_awt_Color.$BLACK.$$init____float_float_float(0,0,0);
java_awt_Color.$WHITE = new java_awt_Color();
java_awt_Color.$WHITE.$$init____float_float_float(255,255,255);