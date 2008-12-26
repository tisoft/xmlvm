qx.Class.define("System_Windows_Forms_TextBox", {
  extend: System_Windows_Forms_TextBoxBase,
  members:
  {
  	 $$init_: function()
  	 {
  	 	this.component = new qx.ui.form.TextArea();
  	 },
   	 $set_Text___System_String: function(text)
  	 {
  	 	this.component.setValue(text.str);
  	 },
  	 $get_Text: function()
  	 {
  		 var s = new System_String();
  		 s.str = this.component.getValue();
  		 return s;
  	 },
  	 $set_ScrollBars___System_Windows_Forms_ScrollBars: function(sb)
  	 {
  	 }
  }
});