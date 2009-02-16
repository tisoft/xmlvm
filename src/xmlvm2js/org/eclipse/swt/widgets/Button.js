qx.Class.define("org_eclipse_swt_widgets_Button",{
	extend: org_eclipse_swt_widgets_Control,
	construct: function(){
		this.qxComponent=new qx.ui.form.Button("button");
		
	},
	members:
	{
		$$init____org_eclipse_swt_widgets_Composite_int: function(parent,param){
			parent.getQx().add(this.qxComponent);
			//Todo: use param;
		},
		$setText___java_lang_String: function(label){
			this.qxComponent.setLabel(label.$str);
		},
		$getText: function(){
			return new java_lang_String(this.qxComponent.getLabel());
		},
		$addListener___int_org_eclipse_swt_widgets_Listener: function(type, listener){
			this.qxComponent.addListener("execute", function(e){
				alert("this is a test.");
			})
		}
		
		
	}
});