qx.Class.define("java_awt_Panel", {
	extend: java_awt_Container,
	members:
	{
		$$init_: function() {
			this.qxComponent = new qx.ui.container.Composite(new qx.ui.layout.Basic());
		},
		$setBounds___int_int_int_int : function(x, y, width, height) {
			this.qxComponent.setUserBounds(x, y, width, height);
		},
		$setBackground___java_awt_Color: function(color) {
			//TODO
			console.log("TODO: Panel.setBackground___java_awt_Color");
		},
		$setVisible___boolean: function(visible) {
			//TODO
		    //this.layoutManager.getQx().setDisplay(visible ? true : false);
		}
	}
});