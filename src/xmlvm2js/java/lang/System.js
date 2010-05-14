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

qx.Class.define("java_lang_System", {
  extend: java_lang_Object,
  statics:
  {
	startTime: 0,
  	$$$out :  new java_io_PrintStream(),
  	$currentTimeMillis: function() {
  		return (new Date()).getTime();
  	},
  	$nanoTime: function() {
  		if (java_lang_System.startTime == 0) {
  			java_lang_System.startTime = (new Date()).getTime();
  		}
  		var now = (new Date()).getTime();
  		// The +1 is there so we don't return 0 from this method.
  		var nano = (now - java_lang_System.startTime + 1) * 1000000;
  		return nano;
  	},
  	$setOut___java_io_PrintStream: function(ps) {
  		java_lang_System.$$$out = ps;
  	},
  	$arraycopy___java_lang_Object_int_java_lang_Object_int_int: function(src, srcPos, dest, destPos, length) {
  		for(var i = 0; i < length; ++i) {
  			dest[destPos + i] = src[srcPos + i];
  		}
  	}
  }
});