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

qx.Class.define("java_net_URL", {
  extend: java_lang_Object,
  members:
  {
  	url: 0,
  	$$init____java_lang_String: function(url) {
  		this.url = url._str;
  	},
  	$openStream: function() {
  		var result = new java_io_InputStream();
  		var response = XHRFunc.getURL(this.url, "", "", "", [['Content-Type','text/plain']]);
    	if (response.status == 200) {
    		result.setTextContent(response.responseText);
    	}

		//TODO: Not sure if returning null if length==0 is the right thing to do for all situations
    	if((response.status != 200) || (response.responseText.length == 0)) {
    		return new java_lang_null();
    	}
    	//console.log("XHR Response - status:" + response.status + " repsonseText.length:" + response.responseText.length);
    	return result;
  	}
  }
});