checkClass("System.Windows.Forms.TextBoxBase");

qx.Class.define("System_Windows_Forms_TextBox", {
  extend: System_Windows_Forms_TextBoxBase,
  members:
  {
  	 __init_: function()
  	 {
  	 	this._component = new qx.ui.form.TextArea();
  	 },
   	 _set_Text___System_String: function(text)
  	 {
  	 	this._component.setValue(text._str);
  	 },
  	 _get_Text: function()
  	 {
  	 	return new System_String(this._component.getValue());
  	 },
  	 _set_ScrollBars___System_Windows_Forms_ScrollBars: function(sb)
  	 {
  	 }
  }
});