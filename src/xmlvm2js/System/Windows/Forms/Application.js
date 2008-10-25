checkClass("System.Object");

qx.Class.define("System_Windows_Forms_Application", {
  extend: System_Object,
  statics:
  {
  	_Run___System_Windows_Forms_Form: function(form)
  	{
  		form._component.addToDocument();
		form._component.open();
  	}
  }
});