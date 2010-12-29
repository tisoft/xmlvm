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

qx.Class.define("org_jdom_input_SAXBuilder", {
	extend: java_lang_Object,
	members:
	{
		$build___java_io_InputStream: function(stream) {
			if(stream instanceof java_lang_null)
				return new java_lang_null();
			var text = stream.getTextContent();
			//alert("SAXBuilder: About to build document of size: " + text.length);
			var result = new org_jdom_Document();
			var xmlDoc = qx.xml.Document.fromString(text);
			result.setXmlDocument(xmlDoc)
			return result
		}
	}
});