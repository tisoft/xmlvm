qx.Class.define("org_eclipse_swt_widgets_Composite", {
  extend: org_eclipse_swt_widgets_Scrollable,
  construct: function(){
	
  },
  members:
  {
	$$init_: function(){
	  this.qxComponent = new qx.ui.container.Composite(new qx.ui.layout.Basic());
  	},
	$setLayout___org_eclipse_swt_widgets_Layout: function(layout){
	  this.$layout=layout;
  	},
  	getQx: function(){
  	  return this.qxComponent;
  	}
  } 	  
});