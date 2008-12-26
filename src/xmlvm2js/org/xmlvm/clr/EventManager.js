qx.Class.define("org_xmlvm_clr_EventManager", {
  statics:
  {
    clickEventHandlers: new Array(),
  
    registerClickEventHandler: function(handler)
    {
        this.clickEventHandlers.push(handler);
    },
    
    raiseClickEvent: function(sender)
    {
    	var i = 0;
        for (i = 0; i < this.clickEventHandlers.length; i++) {
        	var handler = this.clickEventHandlers[i];
            var idx = handler.signatureIndex;
            var signature = org_xmlvm_clr_DelegateManager.getSignature(idx);
            if (signature.$str != "void;System.Object;System.EventArgs")
               throw "Bad signature";
            if (sender != handler.senderObj)
                continue;
            var method = org_xmlvm_clr_DelegateManager.getMethod(idx);
            var methodName = "$" + method.$str + "___System_Object_System_EventArgs";
            var cmd = "handler.targetObj." + methodName + "(sender, 0);";
            eval(cmd);
        }
    }
  }
});