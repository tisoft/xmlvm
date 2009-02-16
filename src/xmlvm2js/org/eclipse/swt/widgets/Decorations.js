qx.Class.define("org_eclipse_swt_widgets_Decorations",{
  extend: org_eclipse_swt_widgets_Canvas,
//  construct: function(){
//	
//  },
  members:
  {
	text: 0,
	$$init_: function(){
	
	},
	$setText___java_lang_String: function(text){
	  this.qxComponent.setCaption(text.$str);
  	},
  	$getText: function(){
  		return new java_lang_String(this.qxComponent.getLabel());
  	}
  }
});