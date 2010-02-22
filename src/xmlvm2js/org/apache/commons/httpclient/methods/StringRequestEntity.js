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

qx.Class.define("org_apache_commons_httpclient_methods_StringRequestEntity", {
	extend: java_lang_Object,
	members:
	{
		content: 0,
		type: 0,
		encoding: 0,
		$$init____java_lang_String_java_lang_String_java_lang_String: function(content, type, encoding) {
			this.content = content.$str;
			this.type = type.$str;
			this.encoding = encoding.$str;
		},
		//Not part of official API
		getContent: function() {
			return this.content;
		},
		//Not part of official API
		getType: function() {
			return this.type;
		},
		//Not part of official API
		getEncoding: function() {
			return this.encoding;
		}
	}
});