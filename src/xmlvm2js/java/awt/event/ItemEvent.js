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
