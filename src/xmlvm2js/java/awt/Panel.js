checkClass("java.awt.Container");
checkClass("java.awt.NullLayoutManager");
qx.Class.define("java_awt_Panel", {
	extend: java_awt_Container,
	construct: function() {
		this.layoutManager = new java_awt_NullLayoutManager();
	},
	members:
	{
		layoutManager: 0,
		__init_: function() {
		},
		_setLayout___java_awt_LayoutManager: function(newManager) {
			//this.layoutManager = newManager;
			//Null-Layout
			if(newManager instanceof java_lang_null) {
				return;
			}
			console.log("TODO: Panel.setLayout() [other than null]");
		},
		_add___java_awt_Component: function(component) {
			this.layoutManager.addComponent(component);
		},
		_add___java_awt_Component_int: function(component, zIndex) {
			component.getQx().setZIndex(zIndex);
			this.layoutManager.addComponent(component);
		},
		getQx: function() {
			return this.layoutManager.getQx();
		},
		_setBounds___int_int_int_int : function(x, y, width, height) {
			this.layoutManager._setBounds___int_int_int_int(x, y, width, height);
		},
		_setBackground___java_awt_Color: function(color) {
			//TODO
			console.log("TODO: Panel.setBackground___java_awt_Color");
		},
		_setVisible___boolean: function(visible) {
		    this.layoutManager.getQx().setDisplay(visible ? true : false);
		}
	}
});