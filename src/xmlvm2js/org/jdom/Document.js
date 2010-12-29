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
