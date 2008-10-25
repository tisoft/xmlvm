checkClass("java.awt.Component");
qx.Class.define("java_awt_Label", {
	extend: java_awt_Component,
	construct: function() {
		this.qxLabel = new qx.ui.basic.Label();
	},
	members:
	{
		
		qxLabel: 0,
		__init_: function() {
		},
		__init____java_lang_String: function(title) {
			this.qxLabel.setText(title._str);
		},
		__init____java_lang_String_int: function(title, alignment) {
			this.qxLabel.setText(title._str);
			if(alignment == 0)
				alignment = "left";
			this.qxLabel.setAlign(alignment, "middle");
		},
		_setText___java_lang_String: function(text) {
			this.qxLabel.setText(text._str);
		},
		_getText: function() {
			return new java_lang_String(this.qxLabel.getText());
		},
		getQx: function() {
			return this.qxLabel;
		},
		_setBounds___int_int_int_int : function(x, y, width, height) {
			this.qxLabel.setLocation(x, y);
			this.qxLabel.setDimension(width, height);
		},
		_setFont___java_awt_Font: function(font) {
		}
	}
});
