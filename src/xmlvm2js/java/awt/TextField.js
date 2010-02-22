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

qx.Class.define("java_awt_TextField", {
	extend: java_awt_Component,
	construct: function() {
		this.qxComponent = new qx.ui.form.TextField();
		this.actionListeners = new Array();
	},
	members:
	{
		actionListeners: 0,
		$$init____int: function(columns){
			//this.$columns = columns;
		},
		$$init____java_lang_String: function(text) {
			this.$setText___java_lang_String(text);
		},
		$getText: function() {
			return new java_lang_String(this.qxComponent.getValue());
		},
		$addActionListener___java_awt_event_ActionListener : function(listener) {
			this.qxComponent.addListener("keyUp", function(e) {
				if(e.getKeyCode() == 13) { //ENTER KEY
					var actionEvent = new java_awt_event_ActionEvent();
			  		actionEvent.setQxEvent(e);
			  		listener.$actionPerformed___java_awt_event_ActionEvent(actionEvent);
				}
			});
			
			/* Execute is not working as expected */
			/*this.qxTextField.addEventListener("execute", function(e) {
				var actionEvent = new java_awt_event_ActionEvent();
		  		actionEvent.setQxEvent(e);
		  		listener.$actionPerformed___java_awt_event_ActionEvent(actionEvent);
			});*/
			this.actionListeners.push(listener);
		},
		$setText___java_lang_String: function(text) {
			this.qxComponent.setValue(text.$str);
		},
		$setEditable___boolean: function(editable) {
			if(editable == 0)
				editable = false;
			else
				editable = true;

			this.qxComponent.setReadOnly(!editable);
		}
	}
});
