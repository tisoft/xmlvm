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

qx.Class.define("java_awt_event_ItemEvent", {
	extend: java_lang_Object,
	statics: {
	    $$SELECTED: 1,
	    $$DESELECTED: 2
	},
	members:
	{
		listIndex: 0,
		kind: 0,
		$getStateChange: function() {
			console.log("TODO: ItemEvent.getStateChange()");
			return this.kind;
		},
		$getItem: function() {
			var result = new java_lang_Integer();
			result.$$init____int(this.listIndex);
			return result;
		},
		// Not part of the official API
		setListIndex: function(index) {
			this.listIndex = index;
		},
		// Not part of the official API
		setKind: function(kind) {
			this.kind = kind;
		}
	}
});
