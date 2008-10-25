checkClass("java.awt.Component");
checkClass("java.lang.String");
qx.Class.define("java_awt_List", {
	extend: java_awt_Component,
	construct: function() {
	    var column =
      	{
        	name : { width:"100%", height:0 }
      	};
		this.listData = new Array();
		this.qxListView = new qx.ui.listview.ListView(this.listData, column);
		this.itemListeners = new Array();
	},
	members:
	{
		qxListView: 0,
		listData: 0,
		itemListeners: 0,
		__init_: function() {
		},
		_addActionListener___java_awt_event_ActionListener: function(listener) {
		  //TODO: Don't call actionPerformed directly, as is needs an ActionEvent. Instead create a wrapper
		  // method like actionPerformedQx, create an appropriate ActionEvent Object and pass that.
		  //this.qxButton.addEventListener("execute", listener._actionPerformed___java_awt_event_ActionEvent, listener);

		},
		getQx: function() {
			return this.qxListView;
		},
		_setMultipleMode___boolean: function(mm) {
			/*mm = (mm == 0)?false:true;
			this.qxListView.getPane().getManager().setMultiSelection(mm);
			this.qxListView.getPane().getManager().setCanDeselect(true);*/
			//TODO
			console.log("TODO: List.setMultipleMode()");
		},
		_setBounds___int_int_int_int : function(x, y, width, height) {
			this.qxListView.setLocation(x, y);
			this.qxListView.setDimension(width, height);
		},
		_add___java_lang_String: function(str) {
			this.listData.push({name : { text : str._str }});
			this.qxListView.updateContent();
			this.qxListView.update();
		},
		_addItemListener___java_awt_event_ItemListener: function(listener) {
			var pane = this.qxListView.getPane();
			var listData = this.listData;
			checkClass("java.awt.event.ItemEvent");
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
						listener._itemStateChanged___java_awt_event_ItemEvent(event);
						return
					}
				}
				console.log("ERROR: List: Failed to get index of selected item.");
			});
		},
		_setVisible___boolean: function(visible) {
			if(visible == 0)
				visible = false;
			else
				visible = true;
			
			// If element is not yet added, we can't just set this
			// TODO: Handle it the right way 
			try{
				this.qxListView.setVisibility(visible);
			}catch(e){/*Ignore*/}
		},
		_removeAll: function() {
			var l = this.listData.length;
			for(i=0 ;i<l; ++i) {
				this.listData.pop();
			}
			this.qxListView.updateContent();
			this.qxListView.update();
		},
		_getSelectedItems: function() {
			var result = new Array();
			var selectedItems = this.qxListView.getPane().getSelectedItems();
			
			for(i=0; i < selectedItems.length; ++i) {
				result.push(new java_lang_String(selectedItems[i].name.text));
			}
			return result;
		},
		_getItem___int: function(index) {
			return new java_lang_String(this.listData[index].name.text);
		},
		_getItemCount: function() {
			return this.listData.length;
		},
		_deselect___int: function(index) {
			this.qxListView.getPane().getManager().setItemSelected(this.listData[index], false);
		},
		_select___int: function(index) {
			this.qxListView.getPane().getManager().setItemSelected(this.listData[index], true);
		},
		_getSelectedItem: function() {
			var selectedItem = this.qxListView.getPane().getSelectedItem();
			if(selectedItem == undefined)
				return new java_lang_null();
			var strValue = selectedItem.name.text;
			return new java_lang_String(strValue);
		},
		//There is no such method in the qooxdoo API, so we have to
		//obtain that data in a more complex way
		_getSelectedIndexes: function() {
			var result = new Array();
			var selectedItems = this.qxListView.getPane().getSelectedItems();
			
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