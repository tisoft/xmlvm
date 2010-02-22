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
