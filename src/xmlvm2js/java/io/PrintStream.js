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

qx.Class.define("java_io_PrintStream",  {
	extend: java_lang_Object,
	construct: function() {
	},
	members: 
	{
		$println___java_lang_String: function(s) {
			if (s.$str == undefined){
    			this.$print___java_lang_String(s + "\n");
			}else{
				this.$print___java_lang_String(s.$str + "\n");
			}
		},
		$println___char: function(c){
			this.$println___java_lang_String(String.fromCharCode(c));
		},
		$println___int: function(i){
			this.$println___java_lang_String(i);
		},
		$println___double: function(d){
			this.$println___java_lang_String(d);
		},
		$println___float: function(f){
			this.$println___java_lang_String(f);
		},
		$println___long: function(l){
			this.$println___java_lang_String(l);
		},
		$println___boolean: function(b){
			if(b  == true)
				this.$println___java_lang_String("true");
			else
				this.$println___java_lang_String("false");
		},
		$println___java_lang_Object: function(obj) {
			this.$println___java_lang_String(obj.$toString());
		},
		$print___java_lang_Object: function(obj) {
			this.$print___java_lang_String(obj.$toString());
		},
		
		$print___java_lang_String: function(s) {
		    	if (s.$str == undefined){
		        	if (window.console){
		            	  window.console.log("print(): " + s);
		        	} else {
		            	  alert("print(): " + s);
		            }
		    	} else {
		        	if (window.console){
			              window.console.log("print(): " + s.$str);
			        } else {
			              alert("print(): " + s.$str);
			        }
		        }
		},
		$print___char: function(c){
			this.$print___java_lang_String(String.fromCharCode(c));
		},
		$print___int: function(i){
			this.$print___java_lang_String(i);
		},
		$print___double: function(d){
			this.$print___java_lang_String(d);
		},
		$print___float: function(f){
			this.$print___java_lang_String(f);
		},
		$print___long: function(l){
			this.$print___java_lang_String(l);
		},
		$print___boolean: function(b){
			if(b  == true)
				this.$print___java_lang_String("true");
			else
				this.$print___java_lang_String("false");
		}
	}
});
