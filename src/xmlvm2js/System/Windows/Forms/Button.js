checkClass("System.Windows.Forms.Control");

qx.Class.define("System_Windows_Forms_Button", {
  extend: System_Windows_Forms_Control,
  members:
  {
  	 __init_: function()
  	 {
  	 	this._component = new qx.ui.form.Button();
  	 },
   	 _set_Text___System_String: function(text)
  	 {
  	 	this._component.setLabel(text._str);
  	 },
  	 _get_Text: function()
  	 {
		checkClass("System.String");
  	 	return new System_String(this._component.getLabel());
  	 }
  }
});