checkClass("System.Windows.Forms.Control");

qx.Class.define("System_Windows_Forms_Label", {
  extend: System_Windows_Forms_Control,
  members:
  {
  	 __init_: function()
  	 {
  	 	this._component = new qx.ui.basic.Label();
  	 },
  	 _set_Text___System_String: function(text)
  	 {
  	 	this._component.setText(text._str);
  	 }
  }
});