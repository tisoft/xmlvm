qx.Class.define("org_eclipse_swt_widgets_Label",{
	extend: org_eclipse_swt_widgets_Control,
	construct: function(){
		this.qxComponent= new qx.ui.basic.Label("label");
	},
	members:
	{	
		label: 0,
		$$init____org_eclipse_swt_widgets_Composite_int: function(parentComposite, type){
			
		},
		$setText___java_lang_String: function(label){
			this.label = label.$str;
			this.qxComponent.setContent(label.$str);
			//this.qxComponent.set({Content: label.$str });
		},
		$getText: function(){
			return new java_lang_String(this.label);
		}
	}
});