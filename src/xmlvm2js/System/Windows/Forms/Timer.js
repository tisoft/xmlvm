checkClass("System.Object");

qx.Class.define("System_Windows_Forms_Timer", {
  extend: System_Object,
  members:
  {
   	 _myTimer: 0,
   	 _onTick: 0,
  	 __init_: function()
  	 {
  	 
  	    var _this = this;
  	 	this._myTimer = new qx.client.Timer();
  	 	this._myTimer.addEventListener("interval", function(e)
  	 	{
  	 	_this.DoTheTimer();
  	 	}
  	 	);
  	 	
  	 },
   	 _add_Tick___System_EventHandler: function(callBack)
  	 {
  	  this._onTick = callBack;
  	 },
  	 _set_Interval___int: function( newInterval)
  	 {
  	 	this._myTimer.setInterval(newInterval);
  	 },
  	 _set_Enabled___boolean: function(isEnabled)
  	 {
  	   
  	    this._myTimer.setEnabled(isEnabled ?true:false);
  	 },
  	 
  	 DoTheTimer:function()
	 {
	  if(this._onTick != 0)
	  {
	  		var idx = this._onTick.signatureIndex;
	  		checkClass("org.xmlvm.clr.DelegateManager");
            var signature = org_xmlvm_clr_DelegateManager.getSignature(idx);
            
            var method = org_xmlvm_clr_DelegateManager.getMethod(idx);
            var methodName = "_" + method._str + "___System_Object_System_EventArgs";
            var cmd = "this._onTick.targetObj." + methodName + "(this, 0);";
            
            eval(cmd);
            
	  }
	  else
	  {
	  console.log("NOTICK");
	  }
	 },
  }
});