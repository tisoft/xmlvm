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
