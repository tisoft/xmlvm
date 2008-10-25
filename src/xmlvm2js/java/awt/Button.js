checkClass("java.awt.Component");
checkClass("java.awt.event.ActionEvent");
qx.Class.define("java_awt_Button", {
	extend: java_awt_Component,
	construct: function() {
		this.qxButton = new qx.ui.form.Button("Button");
		this.actionListeners = new Array();
	},
	members:
	{
		qxButton: 0,
		actionListeners: 0,
		__init____java_lang_String: function(value) {
			this.qxButton.setLabel(value._str);
		},
		_addActionListener___java_awt_event_ActionListener: function(listener) {
			this.qxButton.addEventListener("execute", function(e) {
				var actionEvent = new java_awt_event_ActionEvent();
		  		actionEvent.setQxEvent(e);
		  		listener._actionPerformed___java_awt_event_ActionEvent(actionEvent);
			});
			this.actionListeners.push(listener);
		},
		getQx: function() {
			return this.qxButton;
		},
		_setBounds___int_int_int_int : function(x, y, width, height) {
			this.qxButton.setLocation(x, y);
			this.qxButton.setDimension(width, height);
		},
		_setEnabled___boolean: function(enabled) {
			enabled = (enabled == 0 ? false : true);
			this.qxButton.setEnabled(enabled);
		},
		_setLabel___java_lang_String: function(value) {
			this.qxButton.setLabel(value._str);
		},
		_getLabel: function() {
			return new java_lang_String(this.qxButton.getLabel());
		},
		_setVisible___boolean: function(visible) {
		    this.qxButton.setDisplay(visible ? true : false);
		}
	}
});