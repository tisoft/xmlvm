qx.Class.define("System_Windows_Forms_Control$ControlCollection", {
  extend: System_Object,
  construct: function(_control)
  {
  	this.control = _control;
  	this.children = new Array();
  },
  members:
  {
  	 control: 0,
  	 children: 0,
  	 $Add___System_Windows_Forms_Control: function(newControl)
  	 {
  	 	this.children.push(newControl);
  	 	this.control.component.add(newControl.component);
  	 }
  }
});