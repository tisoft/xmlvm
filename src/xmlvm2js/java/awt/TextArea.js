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

qx.Class.define("java_awt_TextArea", {
	extend: java_awt_Component,
	construct: function() {
		//var date = new Date();
		//this._ID = date.getTime() + "$" + date.getMilliseconds();
		this.qxComponent = new qx.ui.form.TextArea();
	},
	members:
	{
		$$init____int_int: function(rows, cols) {
			//TODO: How can we support the other parameters?
		},
		$$init____java_lang_String_int_int_int: function(text, rows, cols, scrollbars) {
			this.qxComponent.setValue(text.$str);
			//TODO: How can we support the other parameters?
		},
		$$init____java_lang_String: function(text) {
			this.qxComponent.setValue(text.$str);
		},
		$getText: function() {
			return new java_lang_String(this.qxComponent.getValue());
		},
		$setEditable___boolean: function(editable) {
			if(editable == 0)
				editable = false;
			else
				editable = true;

			this.qxComponent.setReadOnly(!editable);
		},
		$setFocusable___boolean: function(focusable)
		{
			// TODO
		},
		$setText___java_lang_String: function(text) {
			this.qxComponent.setValue(text.$str);
		},
		$append___java_lang_String: function(text) {
			this.qxComponent.setValue(this.qxComponent.getValue() + text.$str);
		},
		$setCaretPosition___int: function(index) {
			//TODO
			console.log("TODO: TextArea.setCaretPosition");
		}
	}
});
