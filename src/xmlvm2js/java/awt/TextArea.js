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
