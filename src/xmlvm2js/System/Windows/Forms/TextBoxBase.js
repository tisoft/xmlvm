checkClass("System.Windows.Forms.Control");

qx.Class.define("System_Windows_Forms_TextBoxBase", {
  extend: System_Windows_Forms_Control,
  members:
  {
  	 _set_Multiline___boolean: function(flag)
  	 {
  	 	// TODO not implemented
  	 },
  	 _AppendText___System_String: function(str)
  	 {
  	 	var val = this._component.getValue();
  	 	val += str._str;
  	 	this._component.setValue(val);
  	 }
  }
});