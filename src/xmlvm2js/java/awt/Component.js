qx.Class.define("java_awt_Component", {
	extend: java_lang_Object,
	members:
	{
		$$init_: function() {
		},
		qxComponent: 0,
		getQX: function() {
			return this.qxComponent;
		},
		$setBounds___int_int_int_int: function(x, y, width, height) {
			this.qxComponent.setUserBounds(x, y, width, height);
		},
		$setBackground___java_awt_Color: function(color) {
			//TODO
			console.log("TODO: Component.setBackground___java_awt_Color");
		}
	}
});
