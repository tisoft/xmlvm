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

qx.Class.define("java_util_Vector", {
  extend: java_lang_Object,
  construct: function() {
  	this.jsArray = new Array();
  },
  members:
  {
  	jsArray: 0,
  	$add___java_lang_Object: function(obj) {
  		this.jsArray.push(obj);
  	},
  	$get___int: function(index) {
  		return this.jsArray[index];
  	},
  	$size: function() {
  		//alert("Vector.size: " + this.jsArray.length);
  		return this.jsArray.length;
  	}
  }
});