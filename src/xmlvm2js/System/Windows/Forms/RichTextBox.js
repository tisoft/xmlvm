qx.Class.define("System_Windows_Forms_RichTextBox", {
  extend: System_Windows_Forms_TextBox,
  members:
  {
  	 __init_: function()
  	 {
  	 	this._component = new qx.ui.form.TextArea();
  	 }
  }
});

