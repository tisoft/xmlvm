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
    	var qxClassName = Object.prototype.toString.call(this).match(/^\[object\s(.*)\]$/)[1];
    	return new java_lang_Class(qxClassName);
    },
    $toString: function() {
    	return new java_lang_String(this.toHashCode());
    }
  }
});