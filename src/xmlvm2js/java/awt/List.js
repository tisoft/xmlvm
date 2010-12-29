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

qx.Class.define("java_awt_List", {
	extend: java_awt_Component,
	construct: function() {
	    var column =
      	{
        	name : { width:"100%", height:0 }
      	};
		this.listData = new Array();
		this.qxComponent = new qx.ui.form.List();
		this.itemListeners = new Array();
	},
	members:
	{
		listData: 0,
		itemListeners: 0,
		$$init_: function() {
		},
		$addActionListener___java_awt_event_ActionListener: function(listener) {
		  //TODO: Don't call actionPerformed directly, as is needs an ActionEvent. Instead create a wrapper
		  // method like actionPerformedQx, create an appropriate ActionEvent Object and pass that.
		  //this.qxButton.addEventListener("execute", listener._actionPerformed___java_awt_event_ActionEvent, listener);
		},
		$setMultipleMode___boolean: function(mm) {
			/*mm = (mm == 0)?false:true;
			this.qxListView.getPane().getManager().setMultiSelection(mm);
			this.qxListView.getPane().getManager().setCanDeselect(true);*/
			//TODO
			console.log("TODO: List.setMultipleMode()");
		},
		/*
		$setBounds___int_int_int_int : function(x, y, width, height) {
			this.qxListView.setLocation(x, y);
			this.qxListView.setDimension(width, height);
		},
		*/
		$add___java_lang_String: function(str) {
			this.listData.push({name : { text : str.$str }});
			this.qxComponent.add(new qx.ui.form.ListItem(str.$str, null, str.$str));
			//this.qxComponent.update();
		},
		$addItemListener___java_awt_event_ItemListener: function(listener) {
			var pane = this.qxComponent.getPane();
			var listData = this.listData;
			pane.getManager().addEventListener("changeSelection", function(e) {
				console.log("Change Selection");
				var event = new java_awt_event_ItemEvent();
				for(i=0; i<listData.length; ++i) {
					if(listData[i].name.text == pane.getManager().getLeadItem().name.text) {
						var action_selected = pane.getManager().getItemSelected(listData[i]);
						event.setListIndex(i);
						if(action_selected)
							event.setKind(java_awt_event_ItemEvent.SELECTED);
						else
							event.setKind(java_awt_event_ItemEvent.DESELECTED);
						listener.$itemStateChanged___java_awt_event_ItemEvent(event);
						return
					}
				}
				console.log("ERROR: List: Failed to get index of selected item.");
			});
		},
		$setVisible___boolean: function(visible) {
			if(visible == 0)
				visible = false;
			else
				visible = true;
			
			// If element is not yet added, we can't just set this
			// TODO: Handle it the right way 
			try{
				this.qxComponent.setVisibility(visible);
			}catch(e){/*Ignore*/}
		},
		$removeAll: function() {
			var l = this.listData.length;
			for( vari=0 ;i<l; ++i) {
				this.listData.pop();
			}
			this.qxComponent.updateContent();
			this.qxComponent.update();
		},
		$getSelectedItems: function() {
			var result = new Array();
			var selectedItems = this.qxComponent.getSelection();
			
			for(var i=0; i < selectedItems.length; ++i) {
				result.push(new java_lang_String(selectedItems[i].getValue()));
			}
			return result;
		},
		$getItem___int: function(index) {
			return new java_lang_String(this.listData[index].name.text);
		},
		$getItemCount: function() {
			return this.listData.length;
		},
		$deselect___int: function(index) {
			this.qxComponent.getPane().getManager().setItemSelected(this.listData[index], false);
		},
		$select___int: function(index) {
			this.qxComponent.getPane().getManager().setItemSelected(this.listData[index], true);
		},
		$getSelectedItem: function() {
			var selectedItem = this.qxComponent.getSelectedItem();
			if(selectedItem == undefined)
				return new java_lang_null();
			var strValue = selectedItem.getValue();
			return new java_lang_String(strValue);
		},
		//There is no such method in the qooxdoo API, so we have to
		//obtain that data in a more complex way
		$getSelectedIndexes: function() {
			var result = new Array();
			var selectedItems = this.qxComponent.getPane().getSelectedItems();
			for(i=0; i < this.listData.length; ++i) {
				for(j=0; j < selectedItems.length; ++j) {
					if(this.listData[i].name.text == selectedItems[j].name.text) {
						result.push(i);
					}
				}
			}
			return result;
		}
	}
});