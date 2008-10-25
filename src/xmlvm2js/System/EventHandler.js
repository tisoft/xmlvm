checkClass("System.Object");

qx.Class.define("System_EventHandler", {
  extend: System_Object,
  construct: function(targetObj, signatureIndex)
  {
      this.targetObj = targetObj;
      this.senderObj = 0;
      this.signatureIndex = signatureIndex;
  },
  statics:
  {
  	___NEW___System_Object_int: function(targetObj, signatureIndex)
  	{
  		return new System_EventHandler(targetObj, signatureIndex);
  	}
  },
  members:
  {
    targetObj: 0,
    senderObj: 0,
    signatureIndex: 0
  }
});