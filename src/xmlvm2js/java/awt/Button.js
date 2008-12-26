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