qx.Class.define("org_xmlvm_clr_Delegate", {
  extend: System_Object,
  construct: function(classType, method, signature)
  {
  	this.classType = classType;
  	this.method = method;
  	this.signature = signature;
  },
  members: {
    classType: 0,
    method: 0,
    signature: 0
  }
});

