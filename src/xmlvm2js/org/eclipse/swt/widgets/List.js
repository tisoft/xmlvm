qx.Class.define("org_eclipse_swt_widgets_List",{
	extend: org_eclipse_swt_widgets_Scrollable,
	construct: function(){
		this.qxComponent=new qx.ui.form.List();
	},
	members:
	{
		$$init____org_eclipse_swt_widgets_Composite_int: function(parentComposite, type){
		
		},
		$getSelection: function(){
			return this.qxComponent.getSelection();
			//return (java_lang_String_ARRAYTYPE)this.qxComponent.getSelection();
		},
		$deselectAll: function(){
			this.qxComponent.clearSelection();
		},
		$addSelectionListener___org_eclipse_swt_events_SelectionListener: function(selectionListener){
			
		},
		$removeAll: function(){
			this.qxComponent.removeAll();
		},
		$add___java_lang_String: function(str){
			var text=new qx.ui.basic.Label(str.$str);
			this.qxComponent.add(text);
		}
	}
});