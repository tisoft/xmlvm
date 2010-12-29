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

qx.Class.define("java_io_PrintStream",  {
	extend: java_lang_Object,
	construct: function() {
	},
	members: 
	{
		os: 0,
		$$init____java_io_OutputStream: function(os) {
			this.os = os;
	    },
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
		    		this.print(s);
		    	} else {
		    		this.print(s.$str);
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
		},
		print: function(s) {
			if (this.os == 0) {
				if (window.console) {
					window.console.log(s);
				} else {
					alert(s);
				}
			} else {
				var str = "" + s;
				for (var i = 0; i < str.length; i++) {
					var ch = str.charCodeAt(i);
					this.os.$write___int(ch);
				}
			}
		}
	}
});
