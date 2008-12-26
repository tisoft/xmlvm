qx.Class.define("java_lang_Exception", {
  construct: function() {
  	this.$message = new java_lang_String("");
  },
  extend: java_lang_Object,
  members:
  {
  	$message: 0,
  	$$init_: function() {
  		this.$message = new java_lang_String("no message");
  	}
  }
});
