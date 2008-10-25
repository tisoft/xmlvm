qx.Class.define("java_lang_Object", {
  extend: qx.core.Object,
  statics:
  {
  	__clinit_: function() {
  	}
  },
  members:
  {
    __init_: function() {
      //alert("java.lang.Object initialized");
    },
    _getClass : function() {
    	return java_lang_Object;
    },
    _toString: function() {
    	return new java_lang_String(this.toHashCode());
    }
  }
});

checkClass("java.lang.null");