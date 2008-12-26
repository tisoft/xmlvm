qx.Class.define("java_awt_Container", {
	extend: java_awt_Component,
	members:
	{
		$$init_: function() {
		},
		layoutManager: 0,
		$setLayout___java_awt_LayoutManager: function(manager) {
			this.layoutManager = manager;
			if (manager instanceof java_lang_null)
				this.qxComponent.setLayout(new qx.ui.layout.Basic())
			else
				this.qxComponent.setLayout(manager.$getQXLayoutManager());
		},
		$add___java_awt_Component: function(component) {
			var qxLayoutProperties = {};
			if (!(this.layoutManager instanceof java_lang_null))
				qxLayoutProperties = this.layoutManager.$getQXLayoutProperties___java_awt_Component_java_lang_Object(component, new java_lang_null());
			this.qxComponent.add(component.getQX(), qxLayoutProperties);
		},
		$add___java_awt_Component_java_lang_Object: function(component, constraints) {
			var qxLayoutProperties = this.layoutManager.$getQXLayoutProperties___java_awt_Component_java_lang_Object(component, constraints);
			this.qxComponent.add(component.getQX(), qxLayoutProperties);
		},
		$add___java_awt_Component_int: function(component, zIndex) {
			component.getQX().setZIndex(zIndex);
			this.qxComponent.add(component.getQX());
		}
	}
});
