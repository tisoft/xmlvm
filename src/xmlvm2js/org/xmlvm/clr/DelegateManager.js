qx.Class.define("org_xmlvm_clr_DelegateManager", {
  extend: System_Object,
  statics:
  {
      signatures: new Array(),
  	 $registerFunctionPtr___java_lang_String_java_lang_String_java_lang_String:
  	     function(classType, method, signature)
  	 {
  	    var idx = this.signatures.length;
  	    var delegate = new org_xmlvm_clr_Delegate(classType, method, signature);
        this.signatures.push(delegate);
        return idx;
  	 },
  	 getClassType: function(i)
     {
        return this.signatures[i].classType;
     },
     getMethod: function(i)
     {
        return this.signatures[i].method;
     },
     getSignature: function(i)
     {
        return this.signatures[i].signature;
     }
  }
});