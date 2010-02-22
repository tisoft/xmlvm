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

qx.Class.define("org_apache_commons_httpclient_HttpClient", {
	extend: java_lang_Object,
	members:
	{
		$executeMethod___org_apache_commons_httpclient_HttpMethod: function(method) {
			if(method instanceof org_apache_commons_httpclient_methods_GetMethod) {
		  		var response = XHRFunc.getURL(method.getURL(), "", "", "", [['Content-Type','text/plain']]);
    			if (response.status == 200) {
					method.setRespsonseBody(response.responseText);
    			}

				return response.status;
			}else if(method instanceof org_apache_commons_httpclient_methods_PutMethod) {
				var entity = method.getEntity();
				if(!(entity instanceof org_apache_commons_httpclient_methods_StringRequestEntity)) {
					console.log("ERROR: Only StringRequestEntity supported");
					return;
				}
				var contentType = entity.getType() + "; charset=" + entity.getEncoding();
				var response = XHRFunc.putURL(method.getURL(), "", "", entity.getContent(), [['Content-Type', contentType]]);
				console.log("PUT RETURNED: " + response.status);
				return response.status;
			}else {
				console.log("TODO: HttpClient.executeMethod(): UNKNOWN METHOD");
			}
		}
	}
});