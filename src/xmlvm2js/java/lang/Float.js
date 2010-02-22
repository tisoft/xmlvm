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

qx.Class.define("java_lang_Float", {
  extend: java_lang_Object,
  construct: function() {
  	this.$float = null;
  },
  statics:
  {
  	$valueOf___java_lang_String: function(s) {
  		var f = new java_lang_Float();
  		f.$float = s.$str * 1; // Make sure we convert the string to a number
      	return f;	
  	},
  	$toString___float: function(f) {
	  	// By concatenating "" we make sure we get a string
	  	var s = f + "";
	  	if (s.indexOf(".") < 0)
	  		// Concatenate ".0" for Java compatibility
	  		s += ".0";
	  	return new java_lang_String(s);	
  	}
  },
  members:
  {
  	$float: 0,
  	$$init____float: function(f) {
  		$float = f;
  	},
  	$floatValue: function() {
  		return this.$float;
  	}
  }
});
