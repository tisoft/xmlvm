qx.Class.define("java_awt_NullLayoutManager", {
	extend: java_lang_Object,
	construct: function() {
		this.qxCanvasLayout = new qx.ui.container.Composite(new qx.ui.layout.Basic());
	},
	members:
	{
		qxCanvasLayout: 0,
		getQx: function(){
			return this.qxCanvasLayout;
		},
		addComponent: function(component) {
			this.qxCanvasLayout.add(component.getQx());
		},
		$setBounds___int_int_int_int : function(x, y, width, height) {
			this.qxCanvasLayout.setUserBounds(x, y, width, height);
		}
	}
});
