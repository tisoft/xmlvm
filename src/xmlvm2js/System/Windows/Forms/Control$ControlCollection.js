checkClass("System.Object");

qx.Class.define("System_Windows_Forms_Control$ControlCollection", {
  extend: System_Object,
  construct: function(control)
  {
  	this._control = control;
  	this._children = new Array();
  },
  members:
  {
  	 _control: 0,
  	 _children: 0,
  	 _Add___System_Windows_Forms_Control: function(newControl)
  	 {
  	 	this._children.push(newControl);
  	 	this._control._component.add(newControl._component);
  	 }
  }
});