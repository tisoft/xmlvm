qx.Class.define("java_lang_Object", {
  extend: qx.core.Object,
  statics:
  {
  	$$clinit_: function() {
  	}
  },
  members:
  {
    $$init_: function() {
      //alert("java.lang.Object initialized");
    },
    $getClass : function() {
    	return java_lang_Object;
    },
    $toString: function() {
    	return new java_lang_String(this.toHashCode());
    }
  }
});