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