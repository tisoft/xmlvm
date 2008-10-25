checkClass("System.Object");

qx.Class.define("System_Windows_Forms_Control", {
  extend: System_Object,
  members:
  {
  	 _component: 0,
  	 _controlCollection: 0,
  	 _styles: 0,
  	 
  	 _x: 0,
  	 _y: 0,
  	 _width: 0,
  	 _height: 0,
  	 
  	 __init_: function()
  	 {
  	 	this._x = 0;
  	 	this._y = 0;
  	 	this._width = 0;
  	 	this._height = 0;
  	 },
  	 _set_Text___System_String: function(text)
  	 {
  	 	// Abstract method
  	 },
  	 _set_Location___System_Drawing_Point: function(point)
  	 {
  	 	
  	 	this.setLocation(point._x, point._y);
  	 },
  	 _set_Size___System_Drawing_Size: function(size)
  	 {
  	 	this.setSize(size._x, size._y);
	 },
  	 setLocation: function(x, y)
  	 {
  	 	this._x = x;
  	 	this._y = y;
  	 	this._component.setLocation(x, y);
  	 },
  	 setSize: function(width, height)
  	 {
  	 	this._width = width;
  	 	this._height = height;
  	 	this._component.setWidth(width);
		this._component.setHeight(height);
	 },
	 _set_TabIndex___int: function(idx)
	 {
	 	// TODO not implemented
	 },
	 _set_Anchor___System_Windows_Forms_AnchorStyles: function(styles)
	 {
	 	this._styles = styles;
	 },
	 _SuspendLayout: function()
	 {
		console.log("UnImp: SuspendLayout");
	 },
	 _ResumeLayout___boolean: function(boolSomething)
	 {
		console.log("UnImp: ResumeLayout" + boolSomething);
	 },
	 _set_BackColor___System_Drawing_Color:function(color)
	 {
	 	this._component.setBackgroundColor(color._color);
	 },
	 _SetBounds___int_int_int_int:function(x, y, width, height)
	 {
	 this.setLocation(x,y);
	 this.setSize(width,height);
	 },
	 _get_Controls: function()
	 {
  	 	checkClass("System.Windows.Forms.Control$ControlCollection");
  	 	if (this._controlCollection == 0)
	  	 	this._controlCollection = new System_Windows_Forms_Control$ControlCollection(this);
	 	return this._controlCollection;
	 },
	 _set_Name___System_String:function(name)
	 {
	 	console.log("UnImp: set_Name");
	 },
	 _set_Width___int: function(w)
	 {
	    this.setSize(w,this._height);
	 },
	 _set_Height___int: function(h)
	 {
	    this.setSize(this._width,h);
	 },
	 _add_Click___System_EventHandler: function(handler)
	 {
	 	handler.senderObj = this;
	 	checkClass("org.xmlvm.clr.EventManager");
	 	org_xmlvm_clr_EventManager.registerClickEventHandler(handler);
	 	var _this = this;
		this._component.addEventListener("execute", function(e) {
		  	org_xmlvm_clr_EventManager.raiseClickEvent(_this);
		});
	 }
  }
});