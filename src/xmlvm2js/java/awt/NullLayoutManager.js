checkClass("java.lang.Object");
qx.Class.define("java_awt_NullLayoutManager", {
	extend: java_lang_Object,
	construct: function() {
		this.qxCanvasLayout = new qx.ui.layout.CanvasLayout();
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
		_setBounds___int_int_int_int : function(x, y, width, height) {
			this.qxCanvasLayout.setLocation(x, y);
			this.qxCanvasLayout.setDimension(width, height);
		}
	}
});
