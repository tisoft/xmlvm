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

qx.Class.define("org_jdom_Document", {
	extend: java_lang_Object,
	statics:
	{
		//We use this instance to be able to create new Elements
		helperDocument : qx.xml.Document.create(),
		createElement: function(name) {
			return org_jdom_Document.helperDocument.createElement(name);
		},
		createTextNode: function(name) {
			return org_jdom_Document.helperDocument.createTextNode(name);
		}
	},
	members:
	{
		xmlDocument: 0,
		$$init_: function() {
			this.xmlDocument = qx.xml.Document.create();
		},
		//Not part of the official API
		setXmlDocument: function(xmlDoc) {
			this.xmlDocument = xmlDoc;
		},
		//Not part of the official API
		getXmlDocument: function() {
			return this.xmlDocument;
		},
		$getRootElement: function() {
			var result = new org_jdom_Element();
			result.setXmlElement(this.xmlDocument.documentElement);
			return result;
		},
		$setRootElement___org_jdom_Element: function(element) {
			//TODO: Carefully try this on every browser
			this.xmlDocument = qx.xml.Document.create();
			this.xmlDocument.appendChild(element.getXmlElement());
		}
	}
});
