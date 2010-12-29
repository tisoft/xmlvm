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
