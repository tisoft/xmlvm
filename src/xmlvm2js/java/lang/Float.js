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
