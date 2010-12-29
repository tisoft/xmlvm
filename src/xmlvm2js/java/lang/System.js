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