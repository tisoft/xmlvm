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

qx.Class.define("java_awt_Button", {
	extend: java_awt_Component,
	construct: function() {
		this.qxComponent = new qx.ui.form.Button("Button");
		this.actionListeners = new Array();
	},
	members:
	{
		actionListeners: 0,
		$$init____java_lang_String: function(value) {
			this.qxComponent.setLabel(value.$str);
		},
		$addActionListener___java_awt_event_ActionListener: function(listener) {
			var this_ = this;
			this.qxComponent.addListener("execute", function(e) {
				var actionEvent = new java_awt_event_ActionEvent();
		  		actionEvent.setQxEvent(e);
		  		actionEvent.$setActionCommand(new java_lang_String(this_.qxComponent.getLabel()));
		  		actionEvent.$setSource(this_);
		  		listener.$actionPerformed___java_awt_event_ActionEvent(actionEvent);
			});
			this.actionListeners.push(listener);
		},
		$setEnabled___boolean: function(enabled) {
			enabled = (enabled == 0 ? false : true);
			this.qxComponent.setEnabled(enabled);
		},
		$setLabel___java_lang_String: function(value) {
			this.qxComponent.setLabel(value.$str);
		},
		$getLabel: function() {
			return new java_lang_String(this.qxComponent.getLabel());
		},
		$setVisible___boolean: function(visible) {
		    this.qxComponent.setDisplay(visible ? true : false);
		}
	}
});