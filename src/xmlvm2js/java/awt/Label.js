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

qx.Class.define("java_awt_Label", {
	extend: java_awt_Component,
	construct: function() {
		this.qxComponent = new qx.ui.basic.Label();
	},
	members:
	{
		$$init_: function() {
		},
		$$init____java_lang_String: function(title) {
			this.qxComponent.setContent(title.$str);
		},
		$$init____java_lang_String_int: function(title, alignment) {
			this.qxComponent.setContent(title.$str);
			if(alignment == 0)
				alignment = "left";
			this.qxComponent.setAlign(alignment, "middle");
		},
		$setText___java_lang_String: function(text) {
			this.qxComponent.setContent(text.$str);
		},
		$getText: function() {
			return new java_lang_String(this.qxComponent.getContent());
		},
		$setFont___java_awt_Font: function(font) {
		}
	}
});
