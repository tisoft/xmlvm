qx.Class.define("System_Windows_Forms_Application", {
  extend: System_Object,
  statics:
  {
  	$Run___System_Windows_Forms_Form: function(form)
  	{
		form.component.open();
  	}
  }
});