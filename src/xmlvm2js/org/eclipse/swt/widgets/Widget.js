qx.Class.define("org_eclipse_swt_widgets_Widget",{
  extend: java_lang_Object,
  construct: function(){
	this.manager=new qx.event.Manager();
  },
  members:
  {
	$$init_: function(){

  	},
	$dispose: function(){
	  this.manager.dispose();
  	},
  	$isDisposed: function(){
  		return true;
  	},
  	$addListener___int_org_eclipse_swt_widgets_Listener: function(type, listener){
  		
  	},
  	$getDisplay: function(){
  		//return display;
  	}
  }	  
});