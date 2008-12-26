qx.Class.define("java_awt_Label", {
	extend: java_awt_Component,
	construct: function() {
		this.qxComponent = new qx.ui.basic.Label();
	},
	members:
	{
		$$init_: function() {
		},
		$$init____java_lang_String: function(title) {
			this.qxComponent.setContent(title.$str);
		},
		$$init____java_lang_String_int: function(title, alignment) {
			this.qxComponent.setContent(title.$str);
			if(alignment == 0)
				alignment = "left";
			this.qxComponent.setAlign(alignment, "middle");
		},
		$setText___java_lang_String: function(text) {
			this.qxComponent.setContent(text.$str);
		},
		$getText: function() {
			return new java_lang_String(this.qxComponent.getContent());
		},
		$setFont___java_awt_Font: function(font) {
		}
	}
});
