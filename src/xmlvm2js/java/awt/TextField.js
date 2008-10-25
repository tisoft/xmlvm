checkClass("java.awt.Component");
qx.Class.define("java_awt_TextField", {
	extend: java_awt_Component,
	construct: function() {
		this.qxTextField = new qx.ui.form.TextField();
		this.actionListeners = new Array();
	},
	members:
	{
		qxTextField: 0,
		actionListeners: 0,
		__init____int: function(columns){
			//this._columns = columns;
		},
		__init____java_lang_String: function(text) {
			this._setText___java_lang_String(text);
		},
		_getText: function() {
			return new java_lang_String(this.qxTextField.getComputedValue());
		},
		getQx: function() {
			return this.qxTextField;
		},
		_setBounds___int_int_int_int : function(x, y, width, height) {
			this.qxTextField.setLocation(x, y);
			this.qxTextField.setDimension(width, height);
		},
		_addActionListener___java_awt_event_ActionListener : function(listener) {
			this.qxTextField.addEventListener("keyup", function(e) {
				if(e.getKeyCode() == 13) { //ENTER KEY
					checkClass("java.awt.event.ActionEvent");
					var actionEvent = new java_awt_event_ActionEvent();
			  		actionEvent.setQxEvent(e);
			  		listener._actionPerformed___java_awt_event_ActionEvent(actionEvent);
				}
			});
			
			/* Execute is not working as expected */
			/*this.qxTextField.addEventListener("execute", function(e) {
				checkClass("java.awt.event.ActionEvent");
				var actionEvent = new java_awt_event_ActionEvent();
		  		actionEvent.setQxEvent(e);
		  		listener._actionPerformed___java_awt_event_ActionEvent(actionEvent);
			});*/
			this.actionListeners.push(listener);
		},
		_setText___java_lang_String: function(text) {
			this.qxTextField.setValue(text._str);
		},
		_setEditable___boolean: function(editable) {
			if(editable == 0)
				editable = false;
			else
				editable = true;

			this.qxTextField.setReadOnly(!editable);
		}
	}
});
