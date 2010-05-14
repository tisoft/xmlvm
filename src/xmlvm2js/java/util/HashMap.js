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

qx.Class.define("java_util_HashMap", {
  extend: java_lang_Object,
  construct: function() {
  	this.jsArray = new Array();
  	this.jsKeys = new Array();
  },
  members:
  {
  	jsArray: 0,
  	jsKeys: 0,
  	$put___java_lang_Object_java_lang_Object: function(key, value) {
  		this.jsArray[key.$toString().$str] = value;
  		this.jsKeys.push(key);
  	},
  	$get___java_lang_Object: function(key) {
  	  var temp = this.jsArray[key.$toString().$str];
  	  if (temp == undefined) {
  	    return new java_lang_null;
  	  } else {
  	    return temp;
  	  }
  	},
  	$keySet: function() {
  		return new java_util_Set(this.jsKeys);
  	},
  	$values: function() {
  		var values = new Array();
  		for (var v in this.jsArray) {
  			values.push(this.jsArray[v]);
  		}
  		return new java_util_Collection(values);
  	},
  	$size: function() {
  		return this.jsKeys.length;
  	},
  	$clear: function() {
  		this.jsArray = new Array();
  		this.jsKeys = new Array();
  	}
  }
});