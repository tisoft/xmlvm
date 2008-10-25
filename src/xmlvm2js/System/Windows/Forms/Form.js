checkClass("System.Windows.Forms.ContainerControl");

qx.Class.define("System_Windows_Forms_Form", {
  extend: System_Windows_Forms_ContainerControl,
  members:
  {
  	 layoutManager: 0,
  	 onLoad: 0,
  	 
  	 
  	 __init_: function()
  	 {
  	 	var _this = this;
		checkClass("org.xmlvm.clr.WinFormsLayoutManager");
		this.layoutManager = new org_xmlvm_clr_WinFormsLayoutManager(this);
  	 	this._component = new qx.ui.window.Window();
  	 	this._component.addEventListener("changeWidth", function(e) {_this.layoutManager.changeWidth(e);});
  	 	this._component.addEventListener("changeHeight", function(e) {_this.layoutManager.changeHeight(e);});
  	 	this._component.addEventListener("appear", function(e) {_this.DoTheLoad();});
		this._component.setAllowMinimize(false);
	 },
	 _set_Text___System_String: function(title)
  	 {
  	 	this._component.setCaption(title._str);
  	 },
  	 _set_ClientSize___System_Drawing_Size: function(size)
  	 {
  	 	this._component.setWidth(size._x);
  	 	// TODO don't hard code the +26 (probably height of caption)
		this._component.setHeight(size._y + 26);
	 },
	 DoTheLoad:function()
	 {
	  if(this.onLoad != 0)
	  {
	  		var idx = this.onLoad.signatureIndex;
	  		checkClass("org.xmlvm.clr.DelegateManager");
	  		
            var signature = org_xmlvm_clr_DelegateManager.getSignature(idx);
            
            var method = org_xmlvm_clr_DelegateManager.getMethod(idx);
            var methodName = "_" + method._str + "___System_Object_System_EventArgs";
            var cmd = "this.onLoad.targetObj." + methodName + "(this, 0);";
            
            console.log(cmd);
            eval(cmd);
            
	  }
	  else
	  {
	  console.log("NOLOAD");
	  }
	 },
	 _add_Load___System_EventHandler:function (toAdd)
	 {
	   this.onLoad = toAdd;
	 },
	 
  	 _set_MinimumSize___System_Drawing_Size: function(size)
  	 {
  	 	// TODO not implemented
	 },
	 _set_AutoScaleBaseSize___System_Drawing_Size: function(size)
	 {
	 	// TODO not implemented
	 }
  }
});