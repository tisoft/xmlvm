checkClass("java.awt.Component");
qx.Class.define("java_awt_TextArea", {
	extend: java_awt_Component,
	construct: function() {
		//var date = new Date();
		//this._ID = date.getTime() + "$" + date.getMilliseconds();
		this.qxTextArea = new qx.ui.form.TextArea();
	},
	members:
	{
		qxTextArea: 0,
		__init____java_lang_String_int_int_int: function(text, rows, cols, scrollbars) {
			this.qxTextArea.setValue(text._str);
			//TODO: How can we support the other parameters?
		},
		__init____java_lang_String: function(text) {
			this.qxTextArea.setValue(text._str);
		},
		_getText: function() {
			return new java_lang_String(this.qxTextArea.getComputedValue());
		},
		getQx: function() {
			return this.qxTextArea;
		},
		_setBounds___int_int_int_int : function(x, y, width, height) {
			this.qxTextArea.setLocation(x, y);
			this.qxTextArea.setDimension(width, height);
		},
		_setEditable___boolean: function(editable) {
			if(editable == 0)
				editable = false;
			else
				editable = true;

			this.qxTextArea.setReadOnly(!editable);
		},
		_setText___java_lang_String: function(text) {
			this.qxTextArea.setValue(text._str);
		},
		_setCaretPosition___int: function(index) {
			//TODO
			console.log("TODO: TextArea.setCaretPosition");
		}
	}
});
