qx.Class.define("System_Windows_Forms_TextBoxBase", {
  extend: System_Windows_Forms_Control,
  members:
  {
  	 $set_Multiline___boolean: function(flag)
  	 {
  	 	// TODO not implemented
  	 },
  	 $AppendText___System_String: function(s)
  	 {
  	 	var val = this.component.getValue();
  	 	val += s.str;
  	 	this.component.setValue(val);
  	 }
  }
});