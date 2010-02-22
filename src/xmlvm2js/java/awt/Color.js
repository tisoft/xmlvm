/*
 * Copyright (c) 2004-2010 XMLVM --- An XML-based Programming Language
 * 
 * This program is free software; you can redistribute it and/or modify it under
 * the terms of the GNU General Public License as published by the Free Software
 * Foundation; either version 2 of the License, or (at your option) any later
 * version.
 * 
 * This program is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
 * FOR A PARTICULAR PURPOSE. See the GNU General Public License for more
 * details.
 * 
 * You should have received a copy of the GNU General Public License along with
 * this program; if not, write to the Free Software Foundation, Inc., 675 Mass
 * Ave, Cambridge, MA 02139, USA.
 * 
 * For more information, visit the XMLVM Home Page at http://www.xmlvm.org
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