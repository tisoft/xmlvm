qx.Class.define("System_Windows_Forms_Button", {
  extend: System_Windows_Forms_Control,
  members:
  {
  	 $$init_: function()
  	 {
  	 	this.component = new qx.ui.form.Button();
  	 },
   	 $set_Text___System_String: function(text)
  	 {
  	 	this.component.setLabel(text.str);
  	 },
  	 get_Text: function()
  	 {
  	 	return new System_String(this.component.getLabel());
  	 }
  }
});