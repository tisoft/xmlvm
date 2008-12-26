qx.Class.define("System_Windows_Forms_Label", {
  extend: System_Windows_Forms_Control,
  members:
  {
  	 $$init_: function()
  	 {
  	 	this.component = new qx.ui.basic.Label();
  	 },
  	 $set_Text___System_String: function(text)
  	 {
  	 	this.component.setContent(text.str);
  	 }
  }
});