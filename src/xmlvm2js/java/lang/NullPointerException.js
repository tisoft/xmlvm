qx.Class.define("java_lang_NullPointerException", {
  extend: java_lang_Object,
  construct: function(message) {
  	this.$message = message;
  },
  members:
  {
  	$message: ""
  }
});
