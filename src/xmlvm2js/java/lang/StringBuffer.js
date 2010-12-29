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

qx.Class.define("java_lang_StringBuffer", {
  extend: java_lang_Object,
  members:
  {
  	$str: "",
  	$$init____java_lang_StringBuffer: function(s) {
	  	if (s)
	        this.$str = s.$str;
	    else
	        this.$str = "";	
  	},
  	$$init____java_lang_String: function(s) {
  		this.$str = s.$str;
  	},
  	$toString: function() {
  		return new java_lang_String(this.$str);
  	},
  	$append___java_lang_String: function(s) {
  		if (s.$str == undefined)
    		this.$str = "" + s;
    	else
	    	this.$str += s.$str;
        return this;	
  	},
  	$append___char: function(charCode) {
  	 	this.$str += String.fromCharCode(charCode);
  	 	return this;
  	 }
  }
});