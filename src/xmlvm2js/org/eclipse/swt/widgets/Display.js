qx.Class.define("org_eclipse_swt_widgets_Display", {
  extend: org_eclipse_swt_graphics_Device,
  construct: function(){
	//this.manager=new qx.event.Manager;
  },
  members:
  {
	  $$init_: function(){
//	      return this.getRoot;
  	  },
	  $readAndDispatch: function(){
	  return true;
	  //return this.manager.dispatchEvent(target, event);
  	  },
  	  $sleep: function(){
  		
  	  },
  	  $asyncExec___java_lang_Runnable: function(runnable){
  		  
  	  }
  }
});