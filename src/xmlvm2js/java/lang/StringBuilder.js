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

qx.Class.define("java_lang_StringBuilder", {
  extend: java_lang_Object,
  members:
  {
  	$str: "",
  	$$init_: function() {
		this.$str = "";
  	},
  	$$init____java_lang_String: function(s) {
  		if (s)
            this.$str = s.$str;
        else
        	this.$str = "";
  	},
  	$toString: function() {
  		return new java_lang_String(this.$str);
  	},
  	$append___java_lang_String: function(s) {
	    if((s == 0) || (s == undefined)) {
	    	this.$str += "null";
	    	return this;
	    }
	   	if (s.$str == undefined)
	    		this.$str += "" + s;
	    	else
		    	this.$str += s.$str;
	        return this;
  	},
  	$append___java_lang_Object: function(s) {
  		if((!s) || (s == 0))
        	return this.$append___java_lang_String("null");
      	else
    		 return this.$append___java_lang_String(s.$toString());
  	},
  	$append___boolean: function(b) {
		if(b == true)
		  return this.$append___java_lang_String("true");
		else
		  return this.$append___java_lang_String("false");
  	},
  	$append___int: function(i) {
		this.$str += "" + i; 
  		return this;
  	},  	
  	$append___long: function(l) {
  		return this.$append___int(l);
  	},
  	$append___double: function(d) {
      var tempValue = "" + d;
      if((d % 1) == 0) {
        tempValue += ".0";
      }
      this.$str += "" + tempValue;
      return this;
  	},
  	$append___float: function(f) {
        var tempValue = "" + f;
        if((f % 1) == 0) {
          tempValue += ".0";
        }
        this.$str += "" + tempValue;
        return this;
  	}
  }
});
