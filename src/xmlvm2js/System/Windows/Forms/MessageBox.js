qx.Class.define("System_Windows_Forms_MessageBox", {
    extend: System_Object,
    statics:
  {
      _Show___System_String_System_String_System_Windows_Forms_MessageBoxButtons_System_Windows_Forms_MessageBoxIcon_System_Windows_Forms_MessageBoxDefaultButton:
  	 function(prompt,
			 title,
			 buttons,
			 icon,
			 defaultButton) {

  	     var myWindow = new qx.ui.window.Window(title);
  	     // Create the Main Window
  	     myWindow.setSpace("auto", 850, "auto", 700);
  	     myWindow.setCentered(true)
  	     myWindow.setModal(true);
  	     myWindow.setShowClose(true);
  	     myWindow.setShowMaximize(false);
  	     myWindow.setShowMinimize(false);
  	 }
  }
});
