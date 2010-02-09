qx.Class.define("java_lang_Class", {
  extend: java_lang_Object,
  construct: function(qxClassName) {
  	this.$qxClassName = qxClassName;
  },
  members:
  {
	  $desiredAssertionStatus : function() {
	  	return 0;
      }
  }
});
