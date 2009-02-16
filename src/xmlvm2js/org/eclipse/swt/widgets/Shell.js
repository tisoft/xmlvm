qx.Class.define("org_eclipse_swt_widgets_Shell",{
  extend: org_eclipse_swt_widgets_Decorations,
  construct: function(){
	this.qxWindow=new qx.ui.window.Window("...");
	this.qxWindow.setLayout(new qx.ui.layout.Grow());
	this.qxWindow.set({allowGrowX: true, allowGrowY: true,
        allowShrinkX: true, allowShrinkY: true,
        margin: 0});
	this.qxWindow.setAllowMinimize(false);
	this.qxComponent = new qx.ui.container.Composite(new qx.ui.layout.Basic());
	this.qxComponent.set({allowGrowX: true, allowGrowY: true,
		                  allowShrinkX: true, allowShrinkY: true,
		                  margin: 0});
	this.qxWindow.add(this.qxComponent);

  },
  members:
  {
	x: 0,
	y: 0,
	width: 0,
	height: 0,
	win: 0,  
	text: 0,
	display: 0,
	$$init____org_eclipse_swt_widgets_Display: function(display){
	  
//	  this.display=display;
	},
	$$init____org_eclipse_swt_widgets_Shell_int: function(parentShell, style){
		
	},
	$setVisible___boolean: function(visible){
		this.isVisible=(visible)?true:false;
	},
	$open: function(){
	  this.qxWindow.open();
  	},
  	$setSize___int_int: function(width, height){ //override setSize(..) in control.js;
  	  this.qxWindow.setWidth(width);
  	  this.qxWindow.setHeight(height);
  	  this.width=width;
  	  this.height=height;
  	},

  	$setLocation___int_int: function(x, y){
  		this.qxComponent.setUserBounds(x, y, this.width, this.height);
  	},
  	$setText___java_lang_String: function(caption){ //overide $setText(..) in Decoration.js;
  		this.qxWindow.setCaption(caption.$str);
  	},
  	$getBounds: function(){
  		this.rect=new org_eclipse_swt_graphics_Rectangle();
  		this.rect.$$init____int_int_int_int(this.x, this.y, this.width, this.height);
  		return this.rect;
//  		this.x=this.qxComponent.getBounds().left;
//  		this.y=this.qxComponent.getBounds().top;
//  		this.width=this.qxComponent.getBounds().width;
//  		this.height=this.qxComponent.getBounds().height;
  	}
  }
});