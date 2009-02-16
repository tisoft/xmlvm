qx.Class.define("org_eclipse_swt_widgets_Control",{
  extend: org_eclipse_swt_widgets_Widget,
  construct: function(){
	
  },
  members:
  {
	x: 0,
	y: 0,
	width: 0,
	height: 0,
	qxComponent: 0,
	$$init_: function(){
	  
  	},
	$pack: function(){
	  //
    },
    $setSize___int_int: function(width, height){
    	
      this.width=width;
      this.height=height;
    },
    $setLocation__int_int: function(x, y){
    	this.x=x;
    	this.y=y;
    },
    $setBounds___int_int_int_int: function(x, y, width, height){
    	this.qxComponent.setUserBounds(x, y, width, height);
    },
    $setVisible___boolean: function(visible){
    	return visible? true:false;
    },
    $setEnabled___boolean: function(enabled){
    	return enabled? true:false;
    },
    $setFocus: function(){
    	return true;
    },
    $setBackground___org_eclipse_swt_graphics_Color: function(color){
    	
    }
  }
});