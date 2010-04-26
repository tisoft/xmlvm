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

qx.Class.define("java_lang_Byte", {
  extend: java_lang_Object,
  statics:
  {
  	$parseByte___java_lang_String: function(s) {
  		return s.$str * 1;
  	},
  	$valueOf___byte: function(v) {
		var result = new java_lang_Byte();
		result.$$init____byte(v);
		return result;
	},
  	$valueOf___java_lang_String: function(v) {
		var result = new java_lang_Byte();
		result.$$init____byte(v.$str * 1);
		return result;
	}
  },
  members:
  {
  	value: 0,
	$$init____byte: function(initValue) {
		this.value = initValue;
	},
	$toString: function() {
		return new java_lang_String("" + this.value);
	},
	$intValue: function() {
		return this.value;
	},
	$byteValue: function() {
		return this.value;
	}
  }
});
